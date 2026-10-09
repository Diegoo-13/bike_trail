// Esta es la "plantilla" o estructura básica que define qué información tiene una ruta
class Ruta {
  final String id;
  final String nombre;
  final String descripcion;
  final String urlImagen;
  final String dificultad;
  final String duracion;
  final double calificacion;

  Ruta({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.urlImagen,
    required this.dificultad,
    required this.duracion,
    required this.calificacion,
  });
}