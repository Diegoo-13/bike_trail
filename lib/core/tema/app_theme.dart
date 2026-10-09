import 'package:flutter/material.dart';

// Aquí configuramos los colores y el estilo general de toda la aplicación
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: Colors.grey[50], // Color de fondo clarito
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.green, // Barra superior de color verde
        foregroundColor: Colors.white, // Letras e iconos blancos
        elevation: 0,
      ),
    );
  }
}