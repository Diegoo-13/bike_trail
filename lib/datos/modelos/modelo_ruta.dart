import '../../dominio/entidades/ruta.dart';

// Este modelo ayuda a manejar los datos (por ejemplo, para convertir información si viene de una API o base de datos)
class ModeloRuta extends Ruta {
  ModeloRuta({
    required super.id,
    required super.nombre,
    required super.descripcion,
    required super.urlImagen,
    required super.dificultad,
    required super.duracion,
    required super.calificacion,
  });

  // Convierte un mapa de datos en un objeto tipo Ruta
  factory ModeloRuta.fromJson(Map<String, dynamic> json) {
    return ModeloRuta(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      urlImagen: json['urlImagen'],
      dificultad: json['dificultad'],
      duracion: json['duracion'],
      calificacion: json['calificacion'],
    );
  }

  // Convierte nuestro objeto a formato mapa
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombre': nombre,
      'descripcion': descripcion,
      'urlImagen': urlImagen,
      'dificultad': dificultad,
      'duracion': duracion,
      'calificacion': calificacion,
    };
  }
}