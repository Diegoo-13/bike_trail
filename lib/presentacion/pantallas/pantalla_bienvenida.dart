import 'package:flutter/material.dart';
import 'pantalla_principal.dart';

// Pantalla de bienvenida con animación de carga y temporizador de 3 segundos
class PantallaBienvenida extends StatefulWidget {
  const PantallaBienvenida({super.key});

  @override
  State<PantallaBienvenida> createState() => _PantallaBienvenidaState();
}

class _PantallaBienvenidaState extends State<PantallaBienvenida> {
  @override
  void initState() {
    super.initState();
    // Espera exactamente 3 segundos antes de pasar a la pantalla principal
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PantallaPrincipal()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo o icono central alusivo al tema
            Icon(Icons.directions_bike, size: 100, color: Colors.green),
            SizedBox(height: 20),
            Text(
              "BikeTrail App",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 30),
            // Animación de carga circular obligatoria
            CircularProgressIndicator(color: Colors.green),
          ],
        ),
      ),
    );
  }
}