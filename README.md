# 🚲 BikeTrail App

Aplicación móvil desarrollada en **Flutter** orientada a mostrar rutas de ciclismo locales partiendo desde **Dolores Hidalgo, Guanajuato**, destacando puntos clave en el estado (como León, la capital y Silao). Este proyecto fue diseñado cumpliendo con los estándares de una **arquitectura limpia (Clean Architecture)** y componentes interactivos avanzados.

---

## 📱 Características de la App

1. **Pantalla de Bienvenida (Splash Screen):**
   * Ilustración central alusiva al ciclismo.
   * Animación de carga con `CircularProgressIndicator`.
   * Transición automática a la pantalla principal después de 3 segundos.

2. **Pantalla Principal (Home Screen):**
   * AppBar con título y acceso rápido al perfil de usuario.
   * **Barra de búsqueda interactiva:** Filtra las rutas en tiempo real por nombre o descripción.
   * **Filtros por categorías (Chips):** Selección rápida entre niveles (Todas, Principiante, Intermedio, Avanzado).
   * Lista dinámica utilizando `ListView.builder` con tarjetas personalizadas.

3. **Pantalla de Detalle (Detail Screen):**
   * Transición de imagen fluida mediante efectos **Hero**.
   * Datos detallados de la ruta (duración, calificación en estrellas y nivel de dificultad).
   * Tiempos de trayecto estimados saliendo desde Dolores Hidalgo.
   * Botón de acción interactivo ("Reservar Ruta").

---

## 📂 Arquitectura del Proyecto (Clean Architecture)

El código fuente está estructurado de manera modular y desacoplada en el directorio `lib/`:

```text
lib/
├── core/                         # Constantes y temas globales de la app
├── datos/                        # Capa de datos (Modelos y fuentes de datos mock)
├── dominio/                      # Capa de dominio (Entidades y contratos de repositorios)
└── presentacion/                 # Capa de UI (Pantallas y widgets personalizados)