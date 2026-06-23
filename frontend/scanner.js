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
// El "escáner" Scan-it-Office funciona como teclado: necesita que el input
// tenga foco para poder escribir el DNI ahí. Lo recuperamos agresivamente.
function focusInput() {
  scannerInput.value = "";
  scannerInput.focus();
}

document.addEventListener("click", focusInput);
window.addEventListener("focus", focusInput);

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
  // Limpia puntos, espacios y cualquier caracter no numérico que pueda
  // venir del escáner (ej. "30.123.456" -> "30123456")
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
    return data?.detail || data?.message || `Error ${response.status}`;
  } catch (_) {
    return `Error ${response.status}`;
  }
}

// =========================================
// INICIO
// =========================================
showWaiting();
