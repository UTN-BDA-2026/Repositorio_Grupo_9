// =====================================================================
// CONFIGURACIÓN
// =====================================================================
const API_BASE = "http://localhost:8000"; // Cambiar si el backend corre en otro host/puerto

// =====================================================================
// ESTADO GLOBAL
// =====================================================================
const state = {
  cursos: [],          // cache de GET /cursos
  alumnosCurso: [],     // alumnos del curso filtrado (curso_actual === filtro)
  asistenciasHoy: [],   // resultado de GET /asistencias?fecha&turno
  filtro: {
    fecha: todayISO(),
    turno: "MAÑANA",
    idCurso: null,
    busqueda: "",        // DNI o legajo, filtra la tabla del Dashboard
  },
  filaEnEdicion: null,  // referencia a la fila combinada que se está justificando
  turnoACerrar: null,   // turno fijado por el botón clickeado (Mañana / Tarde)
};

function todayISO() {
  const d = new Date();
  return d.toISOString().slice(0, 10);
}

// =====================================================================
// REFERENCIAS AL DOM
// =====================================================================
const dom = {
  kpiPresentes: document.getElementById("kpi-presentes"),
  kpiAusentes: document.getElementById("kpi-ausentes"),
  kpiTardanzas: document.getElementById("kpi-tardanzas"),
  kpiTotal: document.getElementById("kpi-total"),
  kpiToggleHistorico: document.getElementById("kpi-toggle-historico"),
  kpiScopeLabel: document.getElementById("kpi-scope-label"),

  filtroBusqueda: document.getElementById("filtro-busqueda"),
  filtroFecha: document.getElementById("filtro-fecha"),
  filtroTurno: document.getElementById("filtro-turno"),
  filtroCurso: document.getElementById("filtro-curso"),
  btnAplicarFiltros: document.getElementById("btn-aplicar-filtros"),
  btnCargaManual: document.getElementById("btn-carga-manual"),
  cerrarTurnoGroup: document.getElementById("cerrar-turno-group"),
  btnsCerrarTurno: document.querySelectorAll(".btn-cerrar-turno"),

  tablaBody: document.getElementById("tabla-body"),
  tablaResumen: document.getElementById("tabla-resumen"),

  apiStatusDot: document.getElementById("api-status-dot"),
  apiStatusText: document.getElementById("api-status-text"),

  // Modal justificar
  modalJustificar: document.getElementById("modal-justificar"),
  justificarDni: document.getElementById("justificar-dni"),
  justificarNombre: document.getElementById("justificar-nombre"),
  justificarBadgeActual: document.getElementById("justificar-badge-actual"),
  justificarEstado: document.getElementById("justificar-estado"),
  justificarHora: document.getElementById("justificar-hora"),
  justificarTextoWrap: document.getElementById("justificar-texto-wrap"),
  justificarTexto: document.getElementById("justificar-texto"),
  btnJustificarCancelar: document.getElementById("btn-justificar-cancelar"),
  btnJustificarGuardar: document.getElementById("btn-justificar-guardar"),
  btnJustificarGuardarText: document.getElementById("btn-justificar-guardar-text"),

  // Modal carga manual
  modalCargaManual: document.getElementById("modal-carga-manual"),
  manualDni: document.getElementById("manual-dni"),
  manualFecha: document.getElementById("manual-fecha"),
  manualHora: document.getElementById("manual-hora"),
  manualTurno: document.getElementById("manual-turno"),
  manualEstado: document.getElementById("manual-estado"),
  btnManualCancelar: document.getElementById("btn-manual-cancelar"),
  btnManualGuardar: document.getElementById("btn-manual-guardar"),

  // Modal cerrar turno
  modalCerrarTurno: document.getElementById("modal-cerrar-turno"),
  cerrarTurnoNombre: document.getElementById("cerrar-turno-nombre"),
  btnCerrarTurnoCancelar: document.getElementById("btn-cerrar-turno-cancelar"),
  btnCerrarTurnoConfirmar: document.getElementById("btn-cerrar-turno-confirmar"),

  toastContainer: document.getElementById("toast-container"),
};

// =====================================================================
// API CLIENT — todas las llamadas a FastAPI viven acá
// =====================================================================
const api = {
  async estadisticas({ fecha, turno, idCurso } = {}) {
    const params = new URLSearchParams();
    if (fecha) params.set("fecha", fecha);
    if (turno) params.set("turno", turno);
    if (idCurso) params.set("id_curso", idCurso);
    const qs = params.toString();
    const res = await fetch(`${API_BASE}/estadisticas/asistencias${qs ? `?${qs}` : ""}`);
    if (!res.ok) throw new Error(await extractError(res));
    return res.json();
  },

  async cursos() {
    const res = await fetch(`${API_BASE}/cursos`);
    if (!res.ok) throw new Error(await extractError(res));
    return res.json();
  },

  async cursoDetalle(idCurso) {
    const res = await fetch(`${API_BASE}/cursos/${idCurso}`);
    if (!res.ok) throw new Error(await extractError(res));
    return res.json();
  },

  async alumnosDeCurso(idCurso) {
    // El endpoint /cursos/{id}/alumnos no existe en el servidor.
    // Traemos el padrón completo y filtramos por curso_actual client-side.
    const res = await fetch(`${API_BASE}/alumnos`);
    if (!res.ok) throw new Error(await extractError(res));
    const todos = await res.json();
    return todos.filter((a) => a.curso_actual === idCurso);
  },

  async alumnos() {
    // GET /alumnos no soporta filtro por curso todavía (solo nombre/apellido/dni/legajo),
    // así que traemos todo y filtramos curso_actual en el cliente.
    const res = await fetch(`${API_BASE}/alumnos`);
    if (!res.ok) throw new Error(await extractError(res));
    return res.json();
  },

  async promedioAlumno(dni) {
    // El endpoint /alumnos/{dni}/promedio no existe en el servidor.
    // Usamos GET /asistencias?alumno_dni={dni} (que sí existe) y calculamos
    // los ciclos lectivos client-side agrupando por año de fecha.
    const res = await fetch(`${API_BASE}/asistencias?alumno_dni=${dni}`);
    if (!res.ok) throw new Error(await extractError(res));
    const asistencias = await res.json();

    // Agrupar por año (= ciclo lectivo)
    const porAnio = {};
    asistencias.forEach((a) => {
      const anio = String(a.fecha).slice(0, 4);
      if (!porAnio[anio]) porAnio[anio] = { presentes: 0, ausentes: 0, tardanzas: 0 };
      if (a.estado === "PRESENTE")  porAnio[anio].presentes++;
      else if (a.estado === "AUSENTE")  porAnio[anio].ausentes++;
      else if (a.estado === "TARDANZA") porAnio[anio].tardanzas++;
    });

    const ciclos = Object.keys(porAnio)
      .sort((a, b) => b - a) // más reciente primero
      .map((anio) => {
        const { presentes, ausentes, tardanzas } = porAnio[anio];
        const total = presentes + ausentes + tardanzas;
        const porcentaje_asistencia = total > 0
          ? Math.round(((presentes + tardanzas) / total) * 100)
          : 0;
        return { ciclo_lectivo: Number(anio), presentes, ausentes, tardanzas, total, porcentaje_asistencia };
      });

    return { ciclos };
  },

  async asistencias({ fecha, turno }) {
    const params = new URLSearchParams();
    if (fecha) params.set("fecha", fecha);
    if (turno) params.set("turno", turno);
    const res = await fetch(`${API_BASE}/asistencias?${params.toString()}`);
    if (!res.ok) throw new Error(await extractError(res));
    return res.json();
  },

  async actualizarAsistencia(idAsistencia, payload) {
    const res = await fetch(`${API_BASE}/asistencias/${idAsistencia}`, {
      method: "PUT",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(payload),
    });
    if (!res.ok) throw new Error(await extractError(res));
    return res.json();
  },

  async cerrarTurno(turno) {
    const res = await fetch(`${API_BASE}/cerrar-turno`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ turno }),
    });
    if (!res.ok) throw new Error(await extractError(res));
    return res.json();
  },
};

async function extractError(res) {
  try {
    const data = await res.json();
    return data?.detail || data?.message || `Error ${res.status}`;
  } catch (_) {
    return `Error ${res.status}`;
  }
}

// =====================================================================
// TOASTS
// =====================================================================
function showToast(message, type = "success") {
  const palette = {
    success: { border: "border-stamp-green", icon: "✓", iconBg: "bg-stamp-green" },
    error: { border: "border-stamp-red", icon: "✕", iconBg: "bg-stamp-red" },
    info: { border: "border-ink-500", icon: "i", iconBg: "bg-ink-500" },
  };
  const style = palette[type] || palette.info;

  const toast = document.createElement("div");
  toast.className = `toast-enter flex items-center gap-3 bg-panel-2 border ${style.border} border-l-[3px] rounded-lg px-4 py-3 shadow-2xl max-w-sm`;
  toast.innerHTML = `
    <span class="w-5 h-5 rounded-full ${style.iconBg} text-panel-0 text-xs font-bold flex items-center justify-center shrink-0">${style.icon}</span>
    <p class="text-sm text-paper">${escapeHtml(message)}</p>
  `;

  dom.toastContainer.appendChild(toast);

  setTimeout(() => {
    toast.classList.remove("toast-enter");
    toast.classList.add("toast-exit");
    setTimeout(() => toast.remove(), 200);
  }, 3200);
}

function escapeHtml(str) {
  const div = document.createElement("div");
  div.textContent = str;
  return div.innerHTML;
}

// =====================================================================
// ESTADO DE CONEXIÓN AL BACKEND
// =====================================================================
function setApiStatus(online) {
  dom.apiStatusDot.classList.toggle("bg-stamp-green", online);
  dom.apiStatusDot.classList.toggle("bg-stamp-red", !online);
  dom.apiStatusText.textContent = online ? "Backend conectado" : "Sin conexión con el backend";
}

// =====================================================================
// CARGA DE KPIs
// =====================================================================
async function cargarKpis() {
  try {
    const verHistorico = dom.kpiToggleHistorico.checked;

    const data = verHistorico
      ? await api.estadisticas() // sin filtros: total de todos los ciclos
      : await api.estadisticas({
          fecha: state.filtro.fecha,
          turno: state.filtro.turno,
          idCurso: state.filtro.idCurso,
        });

    dom.kpiPresentes.textContent = data.asistencias_presentes ?? "—";
    dom.kpiAusentes.textContent = data.asistencias_ausentes ?? "—";
    dom.kpiTardanzas.textContent = data.asistencias_tardanzas ?? "—";
    dom.kpiTotal.textContent = data.total_asistencias ?? "—";

    dom.kpiScopeLabel.textContent = verHistorico
      ? "Mostrando: total histórico"
      : `Mostrando: ${formatFechaLarga(state.filtro.fecha)} · turno ${state.filtro.turno === "MAÑANA" ? "mañana" : "tarde"}`;

    setApiStatus(true);
  } catch (err) {
    console.error("Error al cargar estadísticas:", err);
    showToast("No se pudieron cargar las estadísticas", "error");
    setApiStatus(false);
  }
}

function formatFechaLarga(fechaISO) {
  if (!fechaISO) return "";
  const [anio, mes, dia] = fechaISO.split("-");
  return `${dia}/${mes}/${anio}`;
}

// =====================================================================
// CARGA DE CURSOS (selector de filtros)
// =====================================================================
async function cargarCursos() {
  try {
    const cursos = await api.cursos();
    state.cursos = cursos;

    dom.filtroCurso.innerHTML = '<option value="">Todos los cursos</option>' + cursos
      .map((c) => `<option value="${c.id_curso}">${c.anio}° "${c.division}"</option>`)
      .join("");

    // El selector de cursos del módulo Alumnos depende del mismo cache;
    // se pobla acá si ya existe en el DOM (la función vive más abajo en
    // este archivo, pero las function declarations tienen hoisting).
    if (typeof poblarSelectoresDeCurso === "function") {
      poblarSelectoresDeCurso();
    }

    setApiStatus(true);
  } catch (err) {
    console.error("Error al cargar cursos:", err);
    dom.filtroCurso.innerHTML = '<option value="">No se pudieron cargar los cursos</option>';
    showToast("No se pudieron cargar los cursos", "error");
    setApiStatus(false);
  }
}

// =====================================================================
// CARGA Y RENDER DE LA TABLA PRINCIPAL
// =====================================================================
async function cargarTabla() {
  dom.tablaBody.innerHTML = `<tr><td colspan="6" class="px-5 py-10 text-center text-paper-dim font-mono text-sm">Cargando datos…</td></tr>`;

  try {
    const [alumnos, asistencias] = await Promise.all([
      api.alumnos(),
      api.asistencias({ fecha: state.filtro.fecha, turno: state.filtro.turno }),
    ]);

    state.asistenciasHoy = asistencias;

    // Filtramos alumnos por curso (client-side: GET /alumnos no soporta este filtro hoy)
    const idCurso = state.filtro.idCurso;
    let alumnosFiltrados = idCurso
      ? alumnos.filter((a) => String(a.curso_actual) === String(idCurso))
      : alumnos;

    // Búsqueda por DNI o legajo (coincidencia parcial, igual que el buscador de Alumnos)
    const busqueda = state.filtro.busqueda.trim();
    if (busqueda) {
      alumnosFiltrados = alumnosFiltrados.filter(
        (a) => String(a.dni).includes(busqueda) || String(a.nro_legajo).includes(busqueda)
      );
    }

    // Combinamos cada alumno con su fichada del día/turno, si existe
    const filas = alumnosFiltrados.map((alumno) => {
      const asistencia = asistencias.find((a) => a.dni_alumno === alumno.dni);
      return { alumno, asistencia: asistencia || null };
    });

    // Alumnos sin fichada van primero (son los que el preceptor necesita revisar)
    filas.sort((a, b) => {
      if (!a.asistencia && b.asistencia) return -1;
      if (a.asistencia && !b.asistencia) return 1;
      return a.alumno.apellido.localeCompare(b.alumno.apellido);
    });

    renderTabla(filas);
    setApiStatus(true);
  } catch (err) {
    console.error("Error al cargar la tabla:", err);
    dom.tablaBody.innerHTML = `<tr><td colspan="6" class="px-5 py-10 text-center text-stamp-red font-mono text-sm">No se pudo cargar el listado</td></tr>`;
    showToast("No se pudo cargar el listado de asistencias", "error");
    setApiStatus(false);
  }
}

function renderTabla(filas) {
  if (filas.length === 0) {
    dom.tablaBody.innerHTML = `<tr><td colspan="6" class="px-5 py-10 text-center text-paper-dim font-mono text-sm">No hay alumnos para este filtro</td></tr>`;
    dom.tablaResumen.textContent = "0 alumnos";
    return;
  }

  dom.tablaResumen.textContent = `${filas.length} alumno${filas.length === 1 ? "" : "s"}`;

  dom.tablaBody.innerHTML = filas
    .map(({ alumno, asistencia }) => {
      const estado = asistencia?.estado || "SIN REGISTRO";
      const badge = estadoBadge(estado);
      const hora = asistencia?.hora_entrada ? formatHora(asistencia.hora_entrada) : "—";
      const justificacion = asistencia?.justificacion
        ? `<span class="text-paper-dim">${escapeHtml(asistencia.justificacion)}</span>`
        : `<span class="text-paper-dim/50">—</span>`;

      const disabledAttrs = asistencia ? "" : "disabled";
      const btnClasses = asistencia
        ? "text-ink-500 hover:text-ink-300 cursor-pointer"
        : "text-paper-dim/40 cursor-not-allowed";

      return `
        <tr class="hover:bg-white/[0.02] transition-colors" data-dni="${alumno.dni}">
          <td class="px-5 py-3 font-mono text-paper-dim">${formatDni(alumno.dni)}</td>
          <td class="px-5 py-3">
            <p class="font-medium text-paper">${escapeHtml(alumno.apellido)}, ${escapeHtml(alumno.nombre)}</p>
          </td>
          <td class="px-5 py-3">${badge}</td>
          <td class="px-5 py-3 font-mono text-paper-dim">${hora}</td>
          <td class="px-5 py-3 max-w-[220px] truncate">${justificacion}</td>
          <td class="px-5 py-3 text-right">
            <button
              class="btn-justificar font-mono text-xs font-medium px-3 py-1.5 rounded-md border border-panel-edge ${btnClasses} transition-colors"
              data-id-asistencia="${asistencia?.id_asistencia ?? ""}"
              data-dni="${alumno.dni}"
              data-nombre="${escapeHtml(alumno.apellido)}, ${escapeHtml(alumno.nombre)}"
              data-estado-actual="${estado}"
              data-hora-actual="${asistencia?.hora_entrada ?? ""}"
              data-justificacion-actual="${escapeHtml(asistencia?.justificacion ?? "")}"
              ${disabledAttrs}
              title="${asistencia ? "Editar / justificar" : "Sin fichada aún — no se puede editar"}"
            >
              Justificar
            </button>
          </td>
        </tr>
      `;
    })
    .join("");

  // Bind de los botones recién creados
  dom.tablaBody.querySelectorAll(".btn-justificar:not([disabled])").forEach((btn) => {
    btn.addEventListener("click", () => abrirModalJustificar(btn.dataset));
  });
}

function estadoBadge(estado) {
  const map = {
    PRESENTE: "bg-stamp-greenbg text-stamp-green",
    TARDANZA: "bg-stamp-amberbg text-stamp-amber",
    AUSENTE: "bg-stamp-redbg text-stamp-red",
    "SIN REGISTRO": "bg-panel-edge text-paper-dim",
  };
  const classes = map[estado] || map["SIN REGISTRO"];
  return `<span class="inline-flex items-center font-mono text-[0.7rem] font-medium px-2.5 py-1 rounded-full ${classes}">${estado}</span>`;
}

function formatDni(dni) {
  return dni.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}

function formatHora(horaStr) {
  // El backend devuelve algo tipo "08:15:00" — recortamos los segundos
  return horaStr.slice(0, 5);
}

// =====================================================================
// MODAL: JUSTIFICAR / EDITAR REGISTRO
// =====================================================================
function abrirModalJustificar(data) {
  state.filaEnEdicion = data;

  dom.justificarDni.textContent = formatDni(Number(data.dni));
  dom.justificarNombre.textContent = data.nombre;

  const badgeClasses = {
    PRESENTE: "bg-stamp-greenbg text-stamp-green",
    TARDANZA: "bg-stamp-amberbg text-stamp-amber",
    AUSENTE: "bg-stamp-redbg text-stamp-red",
    "SIN REGISTRO": "bg-panel-edge text-paper-dim",
  };
  dom.justificarBadgeActual.className =
    "font-mono text-[0.65rem] px-2 py-1 rounded-full " +
    (badgeClasses[data.estadoActual] || badgeClasses["SIN REGISTRO"]);
  dom.justificarBadgeActual.textContent = data.estadoActual;

  dom.justificarEstado.value = data.estadoActual === "SIN REGISTRO" ? "PRESENTE" : data.estadoActual;
  dom.justificarHora.value = data.horaActual ? data.horaActual.slice(0, 5) : "";
  dom.justificarTexto.value = data.justificacionActual || "";

  toggleJustificacionRequerida();
  toggleModal(dom.modalJustificar, true);
}

function toggleJustificacionRequerida() {
  const requiere = ["TARDANZA", "AUSENTE"].includes(dom.justificarEstado.value);
  dom.justificarTextoWrap.classList.toggle("opacity-50", false);
  dom.justificarTexto.required = requiere;
  dom.justificarTexto.placeholder = requiere
    ? "Ej: Faltó por fiebre, certificado presentado por la madre…"
    : "Opcional";
}

dom.justificarEstado.addEventListener("change", toggleJustificacionRequerida);

dom.btnJustificarCancelar.addEventListener("click", () => toggleModal(dom.modalJustificar, false));

dom.btnJustificarGuardar.addEventListener("click", async () => {
  const data = state.filaEnEdicion;
  if (!data || !data.idAsistencia) {
    showToast("No se encontró el registro a editar", "error");
    return;
  }

  const nuevoEstado = dom.justificarEstado.value;
  const nuevaHora = dom.justificarHora.value;
  const nuevaJustificacion = dom.justificarTexto.value.trim();

  if (!nuevaHora) {
    showToast("Indicá la hora de entrada", "error");
    return;
  }
  if (["TARDANZA", "AUSENTE"].includes(nuevoEstado) && !nuevaJustificacion) {
    showToast("La justificación es obligatoria para Tardanza o Ausente", "error");
    return;
  }

  setButtonLoading(dom.btnJustificarGuardar, dom.btnJustificarGuardarText, true, "Guardando…");

  try {
    await api.actualizarAsistencia(Number(data.idAsistencia), {
      estado: nuevoEstado,
      justificacion: nuevaJustificacion || null,
      hora_entrada: `${nuevaHora}:00`,
    });

    showToast("Justificación guardada correctamente", "success");
    toggleModal(dom.modalJustificar, false);
    await Promise.all([cargarTabla(), cargarKpis()]);
  } catch (err) {
    console.error("Error al guardar justificación:", err);
    showToast(err.message || "No se pudo guardar la justificación", "error");
  } finally {
    setButtonLoading(dom.btnJustificarGuardar, dom.btnJustificarGuardarText, false, "Guardar cambios");
  }
});

// =====================================================================
// MODAL: CARGA MANUAL
// =====================================================================
dom.btnCargaManual.addEventListener("click", () => {
  dom.manualDni.value = "";
  dom.manualFecha.value = state.filtro.fecha;
  dom.manualHora.value = "";
  dom.manualTurno.value = state.filtro.turno;
  dom.manualEstado.value = "PRESENTE";
  toggleManualHoraRequerida();
  toggleModal(dom.modalCargaManual, true);
});

dom.btnManualCancelar.addEventListener("click", () => toggleModal(dom.modalCargaManual, false));

// AUSENTE no tiene hora de entrada real — deshabilitamos el campo para
// que quede explícito, en vez de forzar al preceptor a inventar una hora.
function toggleManualHoraRequerida() {
  const esAusente = dom.manualEstado.value === "AUSENTE";
  dom.manualHora.disabled = esAusente;
  dom.manualHora.required = !esAusente;
  if (esAusente) dom.manualHora.value = "";
}
dom.manualEstado.addEventListener("change", toggleManualHoraRequerida);

dom.btnManualGuardar.addEventListener("click", async () => {
  const dni = Number(dom.manualDni.value);
  const fecha = dom.manualFecha.value;
  const hora = dom.manualHora.value;
  const turno = dom.manualTurno.value;
  const estado = dom.manualEstado.value;

  if (!dni || dni <= 0) {
    showToast("Ingresá un DNI válido", "error");
    return;
  }
  if (!fecha) {
    showToast("Completá la fecha", "error");
    return;
  }
  if (estado !== "AUSENTE" && !hora) {
    showToast("Completá la hora de entrada", "error");
    return;
  }

  setButtonLoading(dom.btnManualGuardar, dom.btnManualGuardar, true, "Registrando…");

  try {
    await fetchAsistenciaManual({
      dni_alumno: dni,
      fecha,
      hora_entrada: estado === "AUSENTE" ? null : `${hora}:00`,
      estado,
      turno,
    });

    showToast("Registro cargado correctamente", "success");
    toggleModal(dom.modalCargaManual, false);
    await Promise.all([cargarTabla(), cargarKpis()]);
  } catch (err) {
    console.error("Error en carga manual:", err);
    showToast(err.message || "No se pudo registrar la asistencia", "error");
  } finally {
    setButtonLoading(dom.btnManualGuardar, dom.btnManualGuardar, false, "Registrar");
  }
});

async function fetchAsistenciaManual(payload) {
  const res = await fetch(`${API_BASE}/asistencias`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(payload),
  });
  if (!res.ok) throw new Error(await extractError(res));
  return res.json();
}

// =====================================================================
// MODAL: CERRAR TURNO (un botón por turno: Mañana / Tarde)
// =====================================================================
dom.btnsCerrarTurno.forEach((btn) => {
  btn.addEventListener("click", () => {
    const turno = btn.dataset.turno; // "MAÑANA" o "TARDE", fijo en el HTML
    state.turnoACerrar = turno;
    dom.cerrarTurnoNombre.textContent = turno === "MAÑANA" ? "Mañana" : "Tarde";
    toggleModal(dom.modalCerrarTurno, true);
  });
});

dom.btnCerrarTurnoCancelar.addEventListener("click", () => toggleModal(dom.modalCerrarTurno, false));

dom.btnCerrarTurnoConfirmar.addEventListener("click", async () => {
  const turno = state.turnoACerrar;
  if (!turno) return;

  setButtonLoading(dom.btnCerrarTurnoConfirmar, dom.btnCerrarTurnoConfirmar, true, "Cerrando turno…");

  try {
    const data = await api.cerrarTurno(turno);
    const total = data.total_ausentes_registrados ?? 0;
    showToast(data.mensaje || `Turno cerrado: ${total} ausente(s) registrado(s)`, "success");
    toggleModal(dom.modalCerrarTurno, false);
    await Promise.all([cargarTabla(), cargarKpis()]);
  } catch (err) {
    console.error("Error al cerrar turno:", err);
    showToast(err.message || "No se pudo cerrar el turno", "error");
  } finally {
    setButtonLoading(dom.btnCerrarTurnoConfirmar, dom.btnCerrarTurnoConfirmar, false, "Sí, cerrar turno");
  }
});

// =====================================================================
// HELPERS DE UI
// =====================================================================
function toggleModal(modalEl, show) {
  modalEl.classList.toggle("hidden", !show);
  modalEl.classList.toggle("flex", show);
}

function setButtonLoading(buttonEl, textEl, isLoading, loadingText) {
  buttonEl.disabled = isLoading;
  buttonEl.classList.toggle("opacity-60", isLoading);
  buttonEl.classList.toggle("cursor-not-allowed", isLoading);
  if (textEl) textEl.textContent = loadingText;
}

// Cerrar modales con click en el backdrop o tecla Escape
[dom.modalJustificar, dom.modalCargaManual, dom.modalCerrarTurno].forEach((modal) => {
  modal.addEventListener("click", (e) => {
    if (e.target === modal) toggleModal(modal, false);
  });
});
document.addEventListener("keydown", (e) => {
  if (e.key === "Escape") {
    [dom.modalJustificar, dom.modalCargaManual, dom.modalCerrarTurno].forEach((modal) =>
      toggleModal(modal, false)
    );
  }
});

// =====================================================================
// FILTROS (Dashboard)
// =====================================================================
function aplicarFiltrosDashboard() {
  state.filtro.fecha = dom.filtroFecha.value || todayISO();
  state.filtro.turno = dom.filtroTurno.value;
  state.filtro.idCurso = dom.filtroCurso.value || null;
  state.filtro.busqueda = dom.filtroBusqueda.value;
  cargarTabla();
  cargarKpis(); // si el toggle está en "no histórico", los KPIs dependen de estos mismos filtros
}

dom.btnAplicarFiltros.addEventListener("click", aplicarFiltrosDashboard);

// Enter en cualquier campo de filtro dispara la búsqueda, sin tener que
// mover el mouse hasta el botón "Aplicar filtros".
[dom.filtroBusqueda, dom.filtroFecha].forEach((input) => {
  input.addEventListener("keydown", (e) => {
    if (e.key === "Enter") {
      e.preventDefault();
      aplicarFiltrosDashboard();
    }
  });
});

// El toggle decide si los KPIs muestran el total de todos los ciclos
// lectivos o se acotan a la fecha/turno/curso filtrados arriba.
dom.kpiToggleHistorico.addEventListener("change", cargarKpis);

// =====================================================================
// NAVEGACIÓN ENTRE MÓDULOS (Dashboard, Alumnos, Cursos)
// =====================================================================
const vistas = {
  dashboard: document.getElementById("vista-dashboard"),
  alumnos: document.getElementById("vista-alumnos"),
  cursos: document.getElementById("vista-cursos"),
};

const topbarConfig = {
  dashboard: {
    eyebrow: "Dashboard",
    titulo: "Tablero de estadísticas y carga diaria",
    mostrarCerrarTurno: true,
  },
  alumnos: {
    eyebrow: "Administración",
    titulo: "Gestión de alumnos",
    mostrarCerrarTurno: false,
  },
  cursos: {
    eyebrow: "Administración",
    titulo: "Cursos y horarios",
    mostrarCerrarTurno: false,
  },
};

function cambiarVista(modulo) {
  Object.entries(vistas).forEach(([nombre, el]) => {
    el.classList.toggle("hidden", nombre !== modulo);
  });

  const cfg = topbarConfig[modulo];
  document.getElementById("topbar-eyebrow").textContent = cfg.eyebrow;
  document.getElementById("topbar-titulo").textContent = cfg.titulo;
  dom.cerrarTurnoGroup.classList.toggle("hidden", !cfg.mostrarCerrarTurno);

  document.querySelectorAll("#sidebar-nav a").forEach((l) => l.classList.remove("is-active"));
  document.querySelector(`#sidebar-nav a[data-module="${modulo}"]`).classList.add("is-active");

  // Carga perezosa: traemos los datos solo la primera vez que se abre cada módulo
  if (modulo === "alumnos" && !state.alumnos.cargado) {
    cargarAlumnos();
  }
  if (modulo === "cursos" && !state.cursosModulo.cargado) {
    cargarListadoCursos();
  }
}

document.querySelectorAll("#sidebar-nav a").forEach((link) => {
  link.addEventListener("click", (e) => {
    e.preventDefault();
    const modulo = link.dataset.module;
    if (!vistas[modulo]) {
      showToast(`El módulo "${link.textContent.trim()}" todavía no está disponible`, "info");
      return;
    }
    cambiarVista(modulo);
  });
});

// =====================================================================
// MÓDULO: ALUMNOS
// =====================================================================
Object.assign(state, {
  alumnos: {
    cargado: false,
    lista: [],          // última respuesta cruda de GET /alumnos
    filtrada: [],        // tras aplicar curso/estado en cliente
    orden: { campo: "apellido", asc: true },
    alumnoEnEdicion: null, // dni del alumno que se está editando, o null si es alta
    alumnoABorrar: null,
  },
});

const domAlumnos = {
  buscarDni: document.getElementById("alumnos-buscar-dni"),
  buscarLegajo: document.getElementById("alumnos-buscar-legajo"),
  buscarNombre: document.getElementById("alumnos-buscar-nombre"),
  buscarApellido: document.getElementById("alumnos-buscar-apellido"),
  filtroCurso: document.getElementById("alumnos-filtro-curso"),
  filtroEstado: document.getElementById("alumnos-filtro-estado"),
  btnBuscar: document.getElementById("btn-alumnos-buscar"),
  btnNuevo: document.getElementById("btn-alumno-nuevo"),
  tablaBody: document.getElementById("alumnos-tabla-body"),
  resumen: document.getElementById("alumnos-resumen"),

  modal: document.getElementById("modal-alumno"),
  modalEyebrow: document.getElementById("modal-alumno-eyebrow"),
  modalTitulo: document.getElementById("modal-alumno-titulo"),
  dni: document.getElementById("alumno-dni"),
  legajo: document.getElementById("alumno-legajo"),
  nombre: document.getElementById("alumno-nombre"),
  apellido: document.getElementById("alumno-apellido"),
  fechaNacimiento: document.getElementById("alumno-fecha-nacimiento"),
  sexo: document.getElementById("alumno-sexo"),
  fechaIngreso: document.getElementById("alumno-fecha-ingreso"),
  estado: document.getElementById("alumno-estado"),
  curso: document.getElementById("alumno-curso"),
  btnCancelar: document.getElementById("btn-alumno-cancelar"),
  btnGuardar: document.getElementById("btn-alumno-guardar"),
  btnGuardarText: document.getElementById("btn-alumno-guardar-text"),

  modalBorrar: document.getElementById("modal-alumno-borrar"),
  borrarNombre: document.getElementById("alumno-borrar-nombre"),
  btnBorrarCancelar: document.getElementById("btn-alumno-borrar-cancelar"),
  btnBorrarConfirmar: document.getElementById("btn-alumno-borrar-confirmar"),

  modalPromedio: document.getElementById("modal-promedio"),
  promedioNombre: document.getElementById("promedio-nombre"),
  promedioDni: document.getElementById("promedio-dni"),
  promedioCiclosBody: document.getElementById("promedio-ciclos-body"),
  btnPromedioCerrar: document.getElementById("btn-promedio-cerrar"),
};

api.crearAlumno = async function (payload) {
  const res = await fetch(`${API_BASE}/alumnos`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(payload),
  });
  if (!res.ok) throw new Error(await extractError(res));
  return res.json();
};

api.actualizarAlumno = async function (dni, payload) {
  const res = await fetch(`${API_BASE}/alumnos/${dni}`, {
    method: "PUT",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(payload),
  });
  if (!res.ok) throw new Error(await extractError(res));
  return res.json();
};

api.eliminarAlumno = async function (dni) {
  const res = await fetch(`${API_BASE}/alumnos/${dni}`, { method: "DELETE" });
  if (!res.ok) throw new Error(await extractError(res));
  return res.json();
};

api.buscarAlumnos = async function ({ nombre, apellido, dni, nroLegajo }) {
  const params = new URLSearchParams();
  if (nombre) params.set("nombre", nombre);
  if (apellido) params.set("apellido", apellido);
  if (dni) params.set("dni", dni);
  if (nroLegajo) params.set("nro_legajo", nroLegajo);
  const res = await fetch(`${API_BASE}/alumnos?${params.toString()}`);
  if (!res.ok) throw new Error(await extractError(res));
  return res.json();
};

async function cargarAlumnos() {
  domAlumnos.tablaBody.innerHTML = `<tr><td colspan="6" class="px-5 py-10 text-center text-paper-dim font-mono text-sm">Cargando alumnos…</td></tr>`;

  try {
    const nombre = domAlumnos.buscarNombre.value.trim();
    const apellido = domAlumnos.buscarApellido.value.trim();
    const dni = domAlumnos.buscarDni.value.trim();
    const nroLegajo = domAlumnos.buscarLegajo.value.trim();
    const alumnos = await api.buscarAlumnos({ nombre, apellido, dni, nroLegajo });

    state.alumnos.lista = alumnos;
    state.alumnos.cargado = true;
    aplicarFiltrosAlumnos();
    setApiStatus(true);
  } catch (err) {
    console.error("Error al cargar alumnos:", err);
    domAlumnos.tablaBody.innerHTML = `<tr><td colspan="6" class="px-5 py-10 text-center text-stamp-red font-mono text-sm">No se pudo cargar el padrón</td></tr>`;
    showToast("No se pudo cargar el padrón de alumnos", "error");
    setApiStatus(false);
  }
}

function aplicarFiltrosAlumnos() {
  const idCurso = domAlumnos.filtroCurso.value;
  const estado = domAlumnos.filtroEstado.value;

  let filtrada = state.alumnos.lista;
  if (idCurso) filtrada = filtrada.filter((a) => String(a.curso_actual) === String(idCurso));
  if (estado) filtrada = filtrada.filter((a) => a.estado === estado);

  const { campo, asc } = state.alumnos.orden;
  filtrada = [...filtrada].sort((a, b) => {
    const va = a[campo];
    const vb = b[campo];
    if (typeof va === "number") return asc ? va - vb : vb - va;
    return asc
      ? String(va).localeCompare(String(vb))
      : String(vb).localeCompare(String(va));
  });

  state.alumnos.filtrada = filtrada;
  renderTablaAlumnos(filtrada);
}

function renderTablaAlumnos(alumnos) {
  if (alumnos.length === 0) {
    domAlumnos.tablaBody.innerHTML = `<tr><td colspan="6" class="px-5 py-10 text-center text-paper-dim font-mono text-sm">No se encontraron alumnos</td></tr>`;
    domAlumnos.resumen.textContent = "0 alumnos";
    return;
  }

  domAlumnos.resumen.textContent = `${alumnos.length} alumno${alumnos.length === 1 ? "" : "s"}`;

  domAlumnos.tablaBody.innerHTML = alumnos
    .map((a) => {
      const curso = state.cursos.find((c) => c.id_curso === a.curso_actual);
      const cursoLabel = curso ? `${curso.anio}° "${curso.division}"` : `#${a.curso_actual}`;
      const estadoClasses = a.estado === "ACTIVO"
        ? "bg-stamp-greenbg text-stamp-green"
        : "bg-panel-edge text-paper-dim";

      return `
        <tr class="hover:bg-white/[0.02] transition-colors">
          <td class="px-5 py-3 font-mono text-paper-dim">${formatDni(a.dni)}</td>
          <td class="px-5 py-3"><p class="font-medium text-paper">${escapeHtml(a.apellido)}, ${escapeHtml(a.nombre)}</p></td>
          <td class="px-5 py-3 text-paper-dim">${escapeHtml(cursoLabel)}</td>
          <td class="px-5 py-3 font-mono text-paper-dim">${a.nro_legajo}</td>
          <td class="px-5 py-3">
            <span class="inline-flex items-center font-mono text-[0.7rem] font-medium px-2.5 py-1 rounded-full ${estadoClasses}">${a.estado}</span>
          </td>
          <td class="px-5 py-3 text-right space-x-2">
            <button class="btn-alumno-promedio font-mono text-xs font-medium px-3 py-1.5 rounded-md border border-panel-edge text-stamp-amber hover:text-stamp-amber/80 transition-colors" data-dni="${a.dni}" data-nombre="${escapeHtml(a.apellido)}, ${escapeHtml(a.nombre)}">
              Promedio
            </button>
            <button class="btn-alumno-editar font-mono text-xs font-medium px-3 py-1.5 rounded-md border border-panel-edge text-ink-500 hover:text-ink-300 transition-colors" data-dni="${a.dni}">
              Editar
            </button>
            <button class="btn-alumno-borrar font-mono text-xs font-medium px-3 py-1.5 rounded-md border border-panel-edge text-stamp-red hover:text-stamp-red/80 transition-colors" data-dni="${a.dni}" data-nombre="${escapeHtml(a.apellido)}, ${escapeHtml(a.nombre)}">
              Eliminar
            </button>
          </td>
        </tr>
      `;
    })
    .join("");

  domAlumnos.tablaBody.querySelectorAll(".btn-alumno-promedio").forEach((btn) => {
    btn.addEventListener("click", () => abrirModalPromedio(Number(btn.dataset.dni), btn.dataset.nombre));
  });
  domAlumnos.tablaBody.querySelectorAll(".btn-alumno-editar").forEach((btn) => {
    btn.addEventListener("click", () => abrirModalAlumno(Number(btn.dataset.dni)));
  });
  domAlumnos.tablaBody.querySelectorAll(".btn-alumno-borrar").forEach((btn) => {
    btn.addEventListener("click", () => abrirModalBorrarAlumno(Number(btn.dataset.dni), btn.dataset.nombre));
  });
}

// =====================================================================
// MODAL: PROMEDIO DE ASISTENCIA (por ciclo lectivo)
// =====================================================================
async function abrirModalPromedio(dni, nombre) {
  domAlumnos.promedioNombre.textContent = nombre;
  domAlumnos.promedioDni.textContent = `DNI ${formatDni(dni)}`;
  domAlumnos.promedioCiclosBody.innerHTML = `<p class="font-mono text-sm text-paper-dim text-center py-6">Cargando…</p>`;
  toggleModal(domAlumnos.modalPromedio, true);

  try {
    const data = await api.promedioAlumno(dni);
    renderPromedioCiclos(data.ciclos);
  } catch (err) {
    console.error("Error al cargar promedio:", err);
    domAlumnos.promedioCiclosBody.innerHTML = `<p class="font-mono text-sm text-stamp-red text-center py-6">No se pudo cargar el promedio</p>`;
    showToast(err.message || "No se pudo cargar el promedio de asistencia", "error");
  }
}

function renderPromedioCiclos(ciclos) {
  if (!ciclos || ciclos.length === 0) {
    domAlumnos.promedioCiclosBody.innerHTML = `<p class="font-mono text-sm text-paper-dim text-center py-6">Sin fichadas registradas</p>`;
    return;
  }

  domAlumnos.promedioCiclosBody.innerHTML = ciclos
    .map((c) => {
      const color = c.porcentaje_asistencia >= 80
        ? "text-stamp-green"
        : c.porcentaje_asistencia >= 60
          ? "text-stamp-amber"
          : "text-stamp-red";

      return `
        <div class="bg-panel-1 border border-panel-edge rounded-lg px-4 py-3">
          <div class="flex items-center justify-between mb-2">
            <p class="font-display font-semibold text-paper">Ciclo ${c.ciclo_lectivo}</p>
            <p class="font-display font-bold text-xl ${color}">${c.porcentaje_asistencia}%</p>
          </div>
          <div class="flex gap-4 font-mono text-xs text-paper-dim">
            <span class="text-stamp-green">${c.presentes} presentes</span>
            <span class="text-stamp-amber">${c.tardanzas} tardanzas</span>
            <span class="text-stamp-red">${c.ausentes} ausentes</span>
            <span class="ml-auto">${c.total} total</span>
          </div>
        </div>
      `;
    })
    .join("");
}

domAlumnos.btnPromedioCerrar.addEventListener("click", () => toggleModal(domAlumnos.modalPromedio, false));
domAlumnos.modalPromedio.addEventListener("click", (e) => {
  if (e.target === domAlumnos.modalPromedio) toggleModal(domAlumnos.modalPromedio, false);
});

// --- Ordenamiento por columna (click en encabezado) ---
document.querySelectorAll('#vista-alumnos th[data-sort]').forEach((th) => {
  th.addEventListener("click", () => {
    const campo = th.dataset.sort;
    if (state.alumnos.orden.campo === campo) {
      state.alumnos.orden.asc = !state.alumnos.orden.asc;
    } else {
      state.alumnos.orden = { campo, asc: true };
    }
    aplicarFiltrosAlumnos();
  });
});

domAlumnos.btnBuscar.addEventListener("click", cargarAlumnos);

// Enter en cualquier campo de búsqueda dispara la búsqueda directamente.
[domAlumnos.buscarDni, domAlumnos.buscarLegajo, domAlumnos.buscarNombre, domAlumnos.buscarApellido].forEach((input) => {
  input.addEventListener("keydown", (e) => {
    if (e.key === "Enter") {
      e.preventDefault();
      cargarAlumnos();
    }
  });
});
domAlumnos.filtroCurso.addEventListener("change", aplicarFiltrosAlumnos);
domAlumnos.filtroEstado.addEventListener("change", aplicarFiltrosAlumnos);

// --- Sincronizar el selector de cursos del módulo Alumnos con el cache global ---
function poblarSelectoresDeCurso() {
  const opciones = state.cursos.map((c) => `<option value="${c.id_curso}">${c.anio}° "${c.division}"</option>`).join("");
  domAlumnos.filtroCurso.innerHTML = '<option value="">Todos los cursos</option>' + opciones;
  domAlumnos.curso.innerHTML = opciones || '<option value="">No hay cursos cargados</option>';
}

// --- Modal alta/edición ---
function abrirModalAlumno(dni = null) {
  state.alumnos.alumnoEnEdicion = dni;
  poblarSelectoresDeCurso();

  if (dni === null) {
    domAlumnos.modalEyebrow.textContent = "Alta de alumno";
    domAlumnos.modalTitulo.textContent = "Nuevo alumno";
    domAlumnos.dni.value = "";
    domAlumnos.dni.disabled = false;
    domAlumnos.legajo.value = "";
    domAlumnos.nombre.value = "";
    domAlumnos.apellido.value = "";
    domAlumnos.fechaNacimiento.value = "";
    domAlumnos.sexo.value = "MASCULINO";
    domAlumnos.fechaIngreso.value = todayISO();
    domAlumnos.estado.value = "ACTIVO";
    domAlumnos.curso.value = "";
  } else {
    const alumno = state.alumnos.lista.find((a) => a.dni === dni);
    if (!alumno) {
      showToast("No se encontró el alumno a editar", "error");
      return;
    }
    domAlumnos.modalEyebrow.textContent = "Edición de alumno";
    domAlumnos.modalTitulo.textContent = `${alumno.apellido}, ${alumno.nombre}`;
    domAlumnos.dni.value = alumno.dni;
    domAlumnos.dni.disabled = true; // el DNI es la PK, no se edita
    domAlumnos.legajo.value = alumno.nro_legajo;
    domAlumnos.nombre.value = alumno.nombre;
    domAlumnos.apellido.value = alumno.apellido;
    domAlumnos.fechaNacimiento.value = formatFechaInput(alumno.fecha_nacimiento);
    domAlumnos.sexo.value = alumno.sexo;
    domAlumnos.fechaIngreso.value = formatFechaInput(alumno.fecha_ingreso);
    domAlumnos.estado.value = alumno.estado;
    domAlumnos.curso.value = alumno.curso_actual;
  }

  toggleModal(domAlumnos.modal, true);
}

function formatFechaInput(fecha) {
  if (!fecha) return "";
  // El backend puede devolver "2010-01-01" o un ISO con hora; nos quedamos con los primeros 10 chars
  return String(fecha).slice(0, 10);
}

domAlumnos.btnNuevo.addEventListener("click", () => abrirModalAlumno(null));
domAlumnos.btnCancelar.addEventListener("click", () => toggleModal(domAlumnos.modal, false));

domAlumnos.btnGuardar.addEventListener("click", async () => {
  const esEdicion = state.alumnos.alumnoEnEdicion !== null;

  const dni = Number(domAlumnos.dni.value);
  const legajo = Number(domAlumnos.legajo.value);
  const nombre = domAlumnos.nombre.value.trim();
  const apellido = domAlumnos.apellido.value.trim();
  const fechaNacimiento = domAlumnos.fechaNacimiento.value;
  const sexo = domAlumnos.sexo.value;
  const fechaIngreso = domAlumnos.fechaIngreso.value;
  const estado = domAlumnos.estado.value;
  const idCurso = domAlumnos.curso.value;

  if (!dni || !legajo || !nombre || !apellido || !fechaNacimiento || !idCurso) {
    showToast("Completá todos los campos obligatorios", "error");
    return;
  }

  setButtonLoading(domAlumnos.btnGuardar, domAlumnos.btnGuardarText, true, esEdicion ? "Guardando…" : "Creando…");

  try {
    if (esEdicion) {
      await api.actualizarAlumno(dni, {
        nombre, apellido, estado,
        fecha_nacimiento: fechaNacimiento,
        sexo,
        nro_legajo: legajo,
        fecha_ingreso: fechaIngreso || null,
        id_curso: Number(idCurso),
      });
      showToast("Alumno actualizado correctamente", "success");
    } else {
      await api.crearAlumno({
        dni, nombre, apellido, estado,
        fecha_nacimiento: fechaNacimiento,
        sexo,
        nro_legajo: legajo,
        fecha_ingreso: fechaIngreso || null,
        id_curso: Number(idCurso),
      });
      showToast("Alumno creado correctamente", "success");
    }
    toggleModal(domAlumnos.modal, false);
    await cargarAlumnos();
  } catch (err) {
    console.error("Error al guardar alumno:", err);
    showToast(err.message || "No se pudo guardar el alumno", "error");
  } finally {
    setButtonLoading(domAlumnos.btnGuardar, domAlumnos.btnGuardarText, false, "Guardar alumno");
  }
});

// --- Modal de borrado ---
function abrirModalBorrarAlumno(dni, nombre) {
  state.alumnos.alumnoABorrar = dni;
  domAlumnos.borrarNombre.textContent = nombre;
  toggleModal(domAlumnos.modalBorrar, true);
}

domAlumnos.btnBorrarCancelar.addEventListener("click", () => toggleModal(domAlumnos.modalBorrar, false));

domAlumnos.btnBorrarConfirmar.addEventListener("click", async () => {
  const dni = state.alumnos.alumnoABorrar;
  if (!dni) return;

  setButtonLoading(domAlumnos.btnBorrarConfirmar, domAlumnos.btnBorrarConfirmar, true, "Eliminando…");

  try {
    await api.eliminarAlumno(dni);
    showToast("Alumno eliminado correctamente", "success");
    toggleModal(domAlumnos.modalBorrar, false);
    await cargarAlumnos();
  } catch (err) {
    console.error("Error al eliminar alumno:", err);
    showToast(err.message || "No se pudo eliminar el alumno", "error");
  } finally {
    setButtonLoading(domAlumnos.btnBorrarConfirmar, domAlumnos.btnBorrarConfirmar, false, "Sí, eliminar");
  }
});

// Cerrar también los nuevos modales con click en backdrop / Escape
[domAlumnos.modal, domAlumnos.modalBorrar].forEach((modal) => {
  modal.addEventListener("click", (e) => {
    if (e.target === modal) toggleModal(modal, false);
  });
});
document.addEventListener("keydown", (e) => {
  if (e.key === "Escape") {
    [domAlumnos.modal, domAlumnos.modalBorrar].forEach((modal) => toggleModal(modal, false));
  }
});

// =====================================================================
// MÓDULO: CURSOS (listado + detalle con horarios y alumnos)
// =====================================================================
const DIAS_SEMANA_LABEL = [
  { key: "lunes", label: "Lunes" },
  { key: "martes", label: "Martes" },
  { key: "miercoles", label: "Miércoles" },
  { key: "jueves", label: "Jueves" },
  { key: "viernes", label: "Viernes" },
];

Object.assign(state, {
  cursosModulo: {
    cargado: false,
    lista: [], // [{curso, totalAlumnos}]
  },
});

const domCursos = {
  listadoWrap: document.getElementById("cursos-listado-wrap"),
  tablaBody: document.getElementById("cursos-tabla-body"),
  resumen: document.getElementById("cursos-resumen"),

  detalleWrap: document.getElementById("curso-detalle-wrap"),
  detalleTitulo: document.getElementById("curso-detalle-titulo"),
  horariosBody: document.getElementById("curso-horarios-body"),
  alumnosResumen: document.getElementById("curso-alumnos-resumen"),
  alumnosBody: document.getElementById("curso-alumnos-body"),
  btnVolver: document.getElementById("btn-curso-volver"),
};

async function cargarListadoCursos() {
  domCursos.tablaBody.innerHTML = `<tr><td colspan="3" class="px-5 py-10 text-center text-paper-dim font-mono text-sm">Cargando cursos…</td></tr>`;

  try {
    // Si el cache global de cursos ya está poblado (cargarCursos del Dashboard
    // ya corrió en init()), lo reusamos en vez de pedirlo de nuevo.
    const cursos = state.cursos.length > 0 ? state.cursos : await api.cursos();
    state.cursos = cursos;

    // Para el conteo de alumnos por curso, pedimos el padrón completo una vez
    // (mismo patrón que usa el Dashboard) y contamos client-side.
    const alumnos = await api.alumnos();
    const conteoPorCurso = {};
    alumnos.forEach((a) => {
      conteoPorCurso[a.curso_actual] = (conteoPorCurso[a.curso_actual] || 0) + 1;
    });

    state.cursosModulo.lista = cursos.map((c) => ({
      curso: c,
      totalAlumnos: conteoPorCurso[c.id_curso] || 0,
    }));
    state.cursosModulo.cargado = true;

    renderListadoCursos(state.cursosModulo.lista);
    setApiStatus(true);
  } catch (err) {
    console.error("Error al cargar cursos:", err);
    domCursos.tablaBody.innerHTML = `<tr><td colspan="3" class="px-5 py-10 text-center text-stamp-red font-mono text-sm">No se pudieron cargar los cursos</td></tr>`;
    showToast("No se pudieron cargar los cursos", "error");
    setApiStatus(false);
  }
}

function renderListadoCursos(items) {
  if (items.length === 0) {
    domCursos.tablaBody.innerHTML = `<tr><td colspan="3" class="px-5 py-10 text-center text-paper-dim font-mono text-sm">No hay cursos cargados</td></tr>`;
    domCursos.resumen.textContent = "0 cursos";
    return;
  }

  domCursos.resumen.textContent = `${items.length} curso${items.length === 1 ? "" : "s"}`;

  domCursos.tablaBody.innerHTML = items
    .map(({ curso, totalAlumnos }) => `
      <tr class="hover:bg-white/[0.02] transition-colors">
        <td class="px-5 py-3"><p class="font-medium text-paper">${curso.anio}° "${escapeHtml(curso.division)}"</p></td>
        <td class="px-5 py-3 font-mono text-paper-dim">${totalAlumnos}</td>
        <td class="px-5 py-3 text-right">
          <button class="btn-curso-ver font-mono text-xs font-medium px-3 py-1.5 rounded-md border border-panel-edge text-ink-500 hover:text-ink-300 transition-colors" data-id-curso="${curso.id_curso}">
            Ver detalle
          </button>
        </td>
      </tr>
    `)
    .join("");

  domCursos.tablaBody.querySelectorAll(".btn-curso-ver").forEach((btn) => {
    btn.addEventListener("click", () => abrirDetalleCurso(Number(btn.dataset.idCurso)));
  });
}

async function abrirDetalleCurso(idCurso) {
  domCursos.listadoWrap.classList.add("hidden");
  domCursos.detalleWrap.classList.remove("hidden");
  domCursos.detalleTitulo.textContent = "Cargando…";
  domCursos.horariosBody.innerHTML = "";
  domCursos.alumnosBody.innerHTML = "";

  try {
    const [curso, alumnos] = await Promise.all([
      api.cursoDetalle(idCurso),
      api.alumnosDeCurso(idCurso),
    ]);

    domCursos.detalleTitulo.textContent = `${curso.anio}° "${curso.division}"`;
    renderHorariosCurso(curso);
    renderAlumnosCurso(alumnos);
    setApiStatus(true);
  } catch (err) {
    console.error("Error al cargar detalle de curso:", err);
    domCursos.detalleTitulo.textContent = "Error al cargar el curso";
    showToast(err.message || "No se pudo cargar el detalle del curso", "error");
    setApiStatus(false);
  }
}

function renderHorariosCurso(curso) {
  domCursos.horariosBody.innerHTML = DIAS_SEMANA_LABEL
    .map(({ key, label }) => {
      const entradaM = curso[`hora_entrada_maniana_${key}`];
      const salidaM = curso[`hora_salida_maniana_${key}`];
      const entradaT = curso[`hora_entrada_tarde_${key}`];
      const salidaT = curso[`hora_salida_tarde_${key}`];

      return `
        <tr>
          <td class="px-3 py-2 text-paper font-medium">${label}</td>
          <td class="px-3 py-2">${entradaM ? entradaM.slice(0, 5) : "—"}</td>
          <td class="px-3 py-2">${salidaM ? salidaM.slice(0, 5) : "—"}</td>
          <td class="px-3 py-2">${entradaT ? entradaT.slice(0, 5) : "—"}</td>
          <td class="px-3 py-2">${salidaT ? salidaT.slice(0, 5) : "—"}</td>
        </tr>
      `;
    })
    .join("");
}

function renderAlumnosCurso(alumnos) {
  domCursos.alumnosResumen.textContent = `${alumnos.length} alumno${alumnos.length === 1 ? "" : "s"}`;

  if (alumnos.length === 0) {
    domCursos.alumnosBody.innerHTML = `<tr><td colspan="4" class="px-5 py-10 text-center text-paper-dim font-mono text-sm">Sin alumnos inscriptos</td></tr>`;
    return;
  }

  domCursos.alumnosBody.innerHTML = alumnos
    .map((a) => {
      const estadoClasses = a.estado === "ACTIVO"
        ? "bg-stamp-greenbg text-stamp-green"
        : "bg-panel-edge text-paper-dim";
      return `
        <tr class="hover:bg-white/[0.02] transition-colors">
          <td class="px-5 py-3 font-mono text-paper-dim">${formatDni(a.dni)}</td>
          <td class="px-5 py-3"><p class="font-medium text-paper">${escapeHtml(a.apellido)}, ${escapeHtml(a.nombre)}</p></td>
          <td class="px-5 py-3 font-mono text-paper-dim">${a.nro_legajo}</td>
          <td class="px-5 py-3">
            <span class="inline-flex items-center font-mono text-[0.7rem] font-medium px-2.5 py-1 rounded-full ${estadoClasses}">${a.estado}</span>
          </td>
        </tr>
      `;
    })
    .join("");
}

domCursos.btnVolver.addEventListener("click", () => {
  domCursos.detalleWrap.classList.add("hidden");
  domCursos.listadoWrap.classList.remove("hidden");
});

// =====================================================================
// AUTO-REFRESH (Dashboard)
// =====================================================================
// El escáner ficha asistencias en segundo plano sin avisarle al dashboard
// (no hay WebSockets ni polling del lado del servidor). Para que el
// preceptor no tenga que recargar la página a mano, refrescamos la tabla
// y los KPIs automáticamente cada cierto tiempo — pero SOLO si:
//   1. La vista activa es el Dashboard (si está en Alumnos/Cursos, no
//      tiene sentido pegarle al backend por algo que no se está viendo).
//   2. No hay ningún modal abierto (si está justificando, cargando un
//      alumno nuevo, etc., un refresh de golpe le tira abajo lo que
//      estaba escribiendo).
const AUTO_REFRESH_MS = 20000; // cada 20 segundos

function hayModalAbierto() {
  const modales = [
    dom.modalJustificar,
    dom.modalCargaManual,
    dom.modalCerrarTurno,
    domAlumnos.modal,
    domAlumnos.modalBorrar,
    domAlumnos.modalPromedio,
  ];
  return modales.some((modal) => modal && !modal.classList.contains("hidden"));
}

async function autoRefreshDashboard() {
  const dashboardEsLaVistaActiva = !vistas.dashboard.classList.contains("hidden");
  if (!dashboardEsLaVistaActiva || hayModalAbierto()) return;

  await Promise.all([cargarTabla(), cargarKpis()]);
}

setInterval(autoRefreshDashboard, AUTO_REFRESH_MS);

// =====================================================================
// INICIO
// =====================================================================
async function init() {
  dom.filtroFecha.value = state.filtro.fecha;
  dom.filtroFecha.max = todayISO(); // no se pueden cargar/justificar días futuros
  dom.filtroTurno.value = state.filtro.turno;

  await Promise.all([cargarKpis(), cargarCursos()]);
  await cargarTabla();
}

init();