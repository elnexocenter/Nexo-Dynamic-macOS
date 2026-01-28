# Kenif - Programmer (Powered By ElNexoCenter)

# Guía de Optimización Nexo Dynamic - macOS Performance

Esta guía detalla las mejoras realizadas por los scripts de optimización para convertir tu macOS en una estación de alto rendimiento para juegos y tareas exigentes.

## 🚀 ¿Qué hace esta optimización?

La optimización se divide en 5 pilares fundamentales para mejorar la experiencia de usuario y el rendimiento del sistema:

### 1. Fluidez de la Interfaz (GPU & Latencia)
- **Reducción de Movimiento y Transparencia:** Libera ciclos de la GPU al eliminar efectos visuales innecesarios.
- **Animaciones Instantáneas:** Desactiva animaciones de ventanas y del Dock para que la respuesta sea inmediata.
- **Redimensionado Rápido:** Acelera el tiempo que tardan las ventanas en cambiar de tamaño.

### 2. Reducción de Input Lag (Precisión)
- **Desactivación de Aceleración de Ratón:** Aplica una curva de movimiento lineal (estándar de gaming) para una puntería más precisa.
- **Repetición de Teclas Ultra-Rápida:** Reduce el retardo inicial y aumenta la velocidad de repetición del teclado, crucial para juegos que requieren spam de teclas.

### 3. Máximo Rendimiento Energético
- **Modo Alto Rendimiento:** Impide que el sistema entre en reposo o baje la potencia del disco mientras juegas.
- **Desactivación de Power Nap y Wake on LAN:** Evita procesos en segundo plano que puedan causar micro-stuttering (tirones).

### 4. Optimización de Red (Ping & Lag)
- **Delayed ACK Off:** Desactiva el retraso de confirmación de paquetes TCP, mejorando significativamente el tiempo de respuesta en juegos online.
- **Limpieza de DNS:** Renueva la caché de red para una conexión más limpia.

### 5. Limpieza y Memoria
- **Purga de Memoria RAM:** Libera memoria inactiva para que esté disponible para el juego.
- **Limpieza de Caché:** Elimina archivos temporales que pueden ralentizar el acceso a disco.

---

## 🛠 Cómo usar los scripts

### Optimizando el sistema:
1. Haz **doble clic** en `optimize.command`.
2. Si macOS te indica que no puede abrirse, haz clic derecho y selecciona **Abrir**.
3. Se abrirá la Terminal. Introduce tu contraseña (no se verá mientras escribes).
4. ¡Listo! Se recomienda reiniciar la sesión para que los cambios de ratón se apliquen al 100%.

> [!TIP]
> Si recibes un error de "Permiso denegado", abre la Terminal y escribe:
> `chmod +x *.command`

### Revirtiendo los cambios:
Si deseas volver a la configuración original de macOS, simplemente haz doble clic en:
`revert.command`

---

**Desarrollado por Antigravity (Powered by Nexus)**
*Optimización Profesional para Gamers en macOS.*
