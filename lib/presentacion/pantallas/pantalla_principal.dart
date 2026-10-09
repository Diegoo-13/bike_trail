import 'package:flutter/material.dart';
import '../../datos/fuentes_datos/datos_rutas_ficticias.dart';
import '../widgets/chip_categoria.dart';
import '../widgets/tarjeta_ruta.dart';
import 'pantalla_detalle.dart';

// Pantalla Principal (Home) con búsqueda y filtros funcionales
class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  String categoriaSeleccionada = 'Todas';
  String textoBusqueda = ''; // Guarda lo que el usuario escribe en el buscador

  @override
  Widget build(BuildContext context) {
    // Filtramos las rutas combinando la categoría seleccionada Y el texto de búsqueda
    final rutasFiltradas = listaRutasFicticias.where((ruta) {
      final coincideCategoria = categoriaSeleccionada == 'Todas' || ruta.dificultad == categoriaSeleccionada;
      final coincideBusqueda = ruta.nombre.toLowerCase().contains(textoBusqueda.toLowerCase()) ||
                               ruta.descripcion.toLowerCase().contains(textoBusqueda.toLowerCase());
      return coincideCategoria && coincideBusqueda;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Rutas de Ciclismo"),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Perfil de usuario")),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Barra de búsqueda interactiva
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (valor) {
                setState(() {
                  textoBusqueda = valor; // Actualiza la búsqueda y redibuja la lista al instante
                });
              },
              decoration: InputDecoration(
                hintText: 'Buscar ruta por nombre...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          // Lista horizontal de categorías (Chips)
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: [
                ChipCategoria(
                  etiqueta: 'Todas',
                  seleccionado: categoriaSeleccionada == 'Todas',
                  alPresionar: () => setState(() => categoriaSeleccionada = 'Todas'),
                ),
                ChipCategoria(
                  etiqueta: 'Principiante',
                  seleccionado: categoriaSeleccionada == 'Principiante',
                  alPresionar: () => setState(() => categoriaSeleccionada = 'Principiante'),
                ),
                ChipCategoria(
                  etiqueta: 'Intermedio',
                  seleccionado: categoriaSeleccionada == 'Intermedio',
                  alPresionar: () => setState(() => categoriaSeleccionada = 'Intermedio'),
                ),
                ChipCategoria(
                  etiqueta: 'Avanzado',
                  seleccionado: categoriaSeleccionada == 'Avanzado',
                  alPresionar: () => setState(() => categoriaSeleccionada = 'Avanzado'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Lista dinámica de elementos o mensaje si no hay resultados
          Expanded(
            child: rutasFiltradas.isEmpty
                ? const Center(
                    child: Text(
                      "No se encontraron rutas con ese nombre",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  )
                : ListView.builder(
                    itemCount: rutasFiltradas.length,
                    itemBuilder: (context, index) {
                      final ruta = rutasFiltradas[index];
                      return TarjetaRuta(
                        ruta: ruta,
                        alPresionar: () {
                          // Navegación correcta pasando el objeto seleccionado a la pantalla de detalle
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PantallaDetalle(ruta: ruta),
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}