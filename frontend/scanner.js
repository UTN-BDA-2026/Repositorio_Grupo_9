// =========================================
// CONFIGURACIÓN
// =========================================
const API_URL = "http://localhost:8000/fichada"; // Cambiar al host real del backend en producción
const SUCCESS_DISPLAY_MS = 2000; // Tiempo que se muestra el tick verde
const ERROR_DISPLAY_MS = 2500;   // Tiempo que se muestra el error

// =========================================
// REFERENCIAS AL DOM
// =========================================
const card = document.getElementById("card");
const scannerInput = document.getElementById("scanner-input");
const clockEl = document.getElementById("clock");
const successEyebrowEl = document.getElementById("success-eyebrow");
const successDniEl = document.getElementById("success-dni");
const statusDotEl = document.getElementById("status-dot");
const statusTextEl = document.getElementById("status-text");

const states = {
  waiting: document.getElementById("state-waiting"),
  success: document.getElementById("state-success"),
  error: document.getElementById("state-error"),
};

const successMessageEl = document.getElementById("success-message");
const errorMessageEl = document.getElementById("error-message");

let resetTimer = null;
let isProcessing = false; // evita doble envío si llegan escaneos muy rápido

// =========================================
// MANEJO DE ESTADOS VISUALES
// =========================================
function showState(name) {
  Object.values(states).forEach((el) => el.classList.remove("is-active"));
  states[name].classList.add("is-active");
}

function showWaiting() {
  showState("waiting");
  isProcessing = false;
  focusInput();
}

function showSuccess(message, estado, dni) {
  successMessageEl.textContent = message || "Asistencia registrada";
  successDniEl.textContent = dni ? `DNI ${formatDni(dni)}` : "";

  const esTardanza = estado === "TARDANZA";
  successEyebrowEl.textContent = esTardanza ? "Tardanza" : "Presente";

  // Si vino tardanza, lo marcamos con un estilo distinto (ámbar) sin dejar
  // de ser un resultado "exitoso" (la fichada se registró igual).
  states.success.classList.toggle("state--tardanza", esTardanza);

  showState("success");

  clearTimeout(resetTimer);
  resetTimer = setTimeout(showWaiting, SUCCESS_DISPLAY_MS);
}

function formatDni(dni) {
  return dni.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}

function showError(message) {
  errorMessageEl.textContent = message || "No se pudo registrar la asistencia";
  showState("error");
  triggerShake();

  clearTimeout(resetTimer);
  resetTimer = setTimeout(showWaiting, ERROR_DISPLAY_MS);
}

function triggerShake() {
  card.classList.remove("shake");
  // forzar reflow para poder re-disparar la animación
  void card.offsetWidth;
  card.classList.add("shake");
}

// =========================================
// RELOJ EN VIVO
// =========================================
function updateClock() {
  const now = new Date();
  const hh = String(now.getHours()).padStart(2, "0");
  const mm = String(now.getMinutes()).padStart(2, "0");
  clockEl.textContent = `${hh}:${mm}`;
}
updateClock();
setInterval(updateClock, 15000);

// =========================================
// FOCO PERMANENTE EN EL INPUT OCULTO
// =========================================
// El "escáner" Scan-it-Office funciona como teclado: necesita que (a) la
// ventana del navegador tenga el foco del sistema operativo, y (b) el input
// oculto tenga el foco del DOM. Si se pierde cualquiera de los dos, las
// teclas del escaneo van a parar a otro lado y la página nunca se entera —
// eso NO se puede interceptar desde JS, es una limitación real del
// "teclado virtual". Lo que sí podemos hacer es:
//   1. Reintentar agresivamente recuperar el foco del input.
//   2. Avisar visualmente cuando la ventana no tiene foco, para que quien
//      esté en portería sepa que tiene que volver a hacer click acá.
const focusWarningEl = document.getElementById("focus-warning");

function focusInput() {
  scannerInput.value = "";
  scannerInput.focus();
}

function actualizarAvisoFoco() {
  // document.hasFocus() es false si otra ventana/app tiene el foco del SO.
  // document.hidden es true si esta pestaña está minimizada o en 2do plano.
  const sinFoco = !document.hasFocus() || document.hidden;
  focusWarningEl.classList.toggle("is-visible", sinFoco);
}

document.addEventListener("click", () => {
  focusInput();
  actualizarAvisoFoco();
});
window.addEventListener("focus", () => {
  focusInput();
  actualizarAvisoFoco();
});
window.addEventListener("blur", actualizarAvisoFoco);
document.addEventListener("visibilitychange", actualizarAvisoFoco);
focusWarningEl.addEventListener("click", () => {
  focusInput();
  actualizarAvisoFoco();
});

// Reintento periódico: aunque la ventana tenga foco del SO, a veces el
// input pierde el foco del DOM (ej. el usuario clickeó el body y algún
// elemento se lo robó). Cada 1s, si la ventana tiene foco pero el input
// no es el elemento activo, lo recuperamos en silencio.
setInterval(() => {
  if (document.hasFocus() && document.activeElement !== scannerInput) {
    focusInput();
  }
  actualizarAvisoFoco();
}, 1000);

actualizarAvisoFoco();

// =========================================
// CAPTURA DEL ESCANEO
// =========================================
scannerInput.addEventListener("keydown", (event) => {
  if (event.key === "Enter") {
    event.preventDefault();
    const rawValue = scannerInput.value.trim();
    handleScan(rawValue);
  }
});

// Fallback: algunos lectores no disparan "Enter" sino que pegan el valor
// y disparan "change". Si detectamos contenido sin haber pasado por Enter
// y el input pierde el foco, lo procesamos igual.
scannerInput.addEventListener("change", () => {
  const rawValue = scannerInput.value.trim();
  if (rawValue) {
    handleScan(rawValue);
  }
});

async function handleScan(rawValue) {
  if (isProcessing) return;

  const dni = parseDni(rawValue);
  if (dni === null) {
    showError("DNI inválido");
    return;
  }

  isProcessing = true;
  scannerInput.value = "";

  await enviarFichada(dni);
}

function parseDni(rawValue) {
  // El lector "Scan-it-to-Office" actúa como teclado y tipea el contenido
  // completo del código de barras del DNI argentino, con este formato:
  //
  //   TRAMITE@APELLIDO@NOMBRE@SEXO@DNI@EJEMPLAR@FECHA_NAC@FECHA_EMISION@...
  //
  // Ej: "00616144568@VELAZCO@FRANCO VALENTIN@M@45142092@A@26/09/2003@29/10/2019@206"
  //
  // El DNI está en la posición 5 (índice 4). Si limpiáramos todos los
  // caracteres no numéricos del string completo (como antes), se pegarían
  // el trámite + el DNI + las fechas en un solo número gigante e inválido.
  if (rawValue.includes("@")) {
    const campos = rawValue.split("@");
    const dniCampo = campos[4];
    if (dniCampo) {
      const soloNumeros = dniCampo.replace(/\D/g, "");
      const dni = parseInt(soloNumeros, 10);
      if (!Number.isNaN(dni) && dni > 0) return dni;
    }
    return null;
  }

  // Fallback: si no viene con el formato del código de barras (ej. alguien
  // tipeó el DNI a mano en el input), limpiamos puntos/espacios normalmente.
  const cleaned = rawValue.replace(/\D/g, "");
  if (!cleaned) return null;

  const dni = parseInt(cleaned, 10);
  if (Number.isNaN(dni) || dni <= 0) return null;

  return dni;
}

// =========================================
// LLAMADA AL BACKEND (FastAPI)
// =========================================
async function enviarFichada(dni) {
  try {
    const response = await fetch(API_URL, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ dni }),
    });

    if (response.ok) {
      // El backend responde { estado, id_asistencia, mensaje }
      let data = null;
      try {
        data = await response.json();
      } catch (_) {
        /* respuesta sin body o no-JSON, se ignora */
      }

      const mensaje = data?.mensaje || "Asistencia registrada";
      showSuccess(mensaje, data?.estado, dni);
      setConnectionStatus(true);
    } else {
      const errorText = await safeErrorMessage(response);
      showError(errorText);
      setConnectionStatus(true); // el servidor respondió, solo fue un error de negocio
    }
  } catch (networkError) {
    console.error("Error de red al conectar con el backend:", networkError);
    showError("Sin conexión con el servidor");
    setConnectionStatus(false);
  }
}

function setConnectionStatus(isOnline) {
  statusDotEl.classList.toggle("is-offline", !isOnline);
  statusTextEl.textContent = isOnline
    ? "Conectado al servidor"
    : "Sin conexión — reintentando";
}

async function safeErrorMessage(response) {
  try {
    const data = await response.json();
    const detail = data?.detail;

    // Caso normal: el backend lanzó HTTPException(detail="texto") -> string.
    if (typeof detail === "string") return detail;

    // Caso 422 de validación de Pydantic: detail es una LISTA de objetos
    // como [{ type, loc, msg, input }, ...]. Si lo interpolamos tal cual
    // en el HTML, JS lo convierte a "[object Object]".
    if (Array.isArray(detail)) {
      const mensajes = detail
        .map((err) => err?.msg || JSON.stringify(err))
        .filter(Boolean);
      if (mensajes.length) return mensajes.join(" · ");
    }

    return data?.message || `Error ${response.status}`;
  } catch (_) {
    return `Error ${response.status}`;
  }
}

// =========================================
// INICIO
// =========================================
showWaiting();