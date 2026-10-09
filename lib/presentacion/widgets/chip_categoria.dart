import 'package:flutter/material.dart';

// Un botoncito en forma de píldora (Chip) para filtrar las categorías
class ChipCategoria extends StatelessWidget {
  final String etiqueta;       // El texto que muestra el botón
  final bool seleccionado;     // Dice si está presionado o no
  final VoidCallback alPresionar; // Qué hace cuando lo tocan

  const ChipCategoria({
    super.key,
    required this.etiqueta,
    required this.seleccionado,
    required this.alPresionar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ChoiceChip(
        label: Text(etiqueta),
        selected: seleccionado,
        onSelected: (_) => alPresionar(),
        selectedColor: Colors.green.shade100, // <--- Aquí corregido a shade100
        labelStyle: TextStyle(
          color: seleccionado ? Colors.green.shade800 : Colors.black87,
          fontWeight: seleccionado ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}