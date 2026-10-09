import '../entidades/ruta.dart';

// Un contrato que indica qué datos debemos poder pedir (en este caso, obtener las rutas)
abstract class RepositorioRuta {
  List<Ruta> obtenerRutas();
}