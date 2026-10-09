import '../modelos/modelo_ruta.dart';

final List<ModeloRuta> listaRutasFicticias = [
  ModeloRuta(
    id: '1',
    nombre: 'Parque Metropolitano de León',
    descripcion: 'Ruta ideal para principiantes bordeando la gran presa. El trayecto en auto desde Dolores Hidalgo toma aproximadamente 1 hora y 20 minutos (65 km), perfecta para un paseo recreativo y plano en bicicleta.',
    urlImagen: 'assets/images/rutaleon.jpg',
    dificultad: 'Principiante',
    duracion: '1h 30m',
    calificacion: 4.7,
  ),
  ModeloRuta(
    id: '2',
    nombre: 'Presa de Mata (Guanajuato)',
    descripcion: 'Ruta de nivel intermedio situada en la capital del estado. Partiendo desde Dolores Hidalgo te toma cerca de 50 minutos llegar al punto de partida (40 km). Cuenta con terracería moderada y vistas increíbles.',
    urlImagen: 'assets/images/PresaMata.jpg',
    dificultad: 'Intermedio',
    duracion: '2h 45m',
    calificacion: 4.8,
  ),
  ModeloRuta(
    id: '3',
    nombre: 'Cerro del Cubilete (Silao)',
    descripcion: 'Ruta de nivel avanzado hacia el majestuoso monumento. Desde Dolores Hidalgo son aproximadamente 1 hora y 40 minutos en carretera (90 km). Exige gran esfuerzo físico por sus curvas cerradas y empinadas subidas de montaña.',
    urlImagen: 'assets/images/cubilete.jpg',
    dificultad: 'Avanzado',
    duracion: '4h 15m',
    calificacion: 4.9,
  ),
];