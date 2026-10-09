import 'package:flutter/material.dart';
import '../../dominio/entidades/ruta.dart';

// Pantalla de Detalle que muestra toda la información a fondo de la ruta seleccionada
class PantallaDetalle extends StatelessWidget {
  final Ruta ruta; // Recibe la ruta que mandamos desde la pantalla principal

  const PantallaDetalle({super.key, required this.ruta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ruta.nombre)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen grande con efecto Hero para una transición suave
            Hero(
              tag: ruta.id,
              child: Image.asset(
                ruta.urlImagen,
                width: double.infinity,
                height: 260,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ruta.nombre,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Iconos informativos (tiempo, calificación y dificultad)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Chip(
                        avatar: const Icon(Icons.timer, size: 18, color: Colors.green),
                        label: Text(ruta.duracion),
                      ),
                      Chip(
                        avatar: const Icon(Icons.star, size: 18, color: Colors.amber),
                        label: Text('${ruta.calificacion}'),
                      ),
                      Chip(
                        avatar: const Icon(Icons.trending_up, size: 18, color: Colors.blue),
                        label: Text(ruta.dificultad),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Bloque de texto con la descripción detallada
                  const Text(
                    "Acerca de esta ruta",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    ruta.descripcion,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700], height: 1.5),
                  ),
                  const SizedBox(height: 40),
                  // Botón de acción principal ("Reservar Ruta")
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      icon: const Icon(Icons.bookmark_add),
                      label: const Text(
                        "Reservar Ruta",
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        // Muestra un mensaje flotante al presionar el botón
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("¡Ruta reservada con éxito!"),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}