import 'package:flutter/material.dart';
import 'core/tema/app_theme.dart';
import 'presentacion/pantallas/pantalla_bienvenida.dart';

// Función principal: aquí arranca la ejecución de la app en Flutter
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BikeTrail App',
      debugShowCheckedModeBanner: false, // Oculta la etiqueta roja de "DEBUG" en la esquina
      theme: AppTheme.lightTheme,         // Carga los colores y estilos globales
      home: const PantallaBienvenida(),   // Define que la primera pantalla en abrirse es la de bienvenida
    );
  }
}