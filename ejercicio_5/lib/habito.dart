import 'package:flutter/material.dart';

class Habito {
  final String nombre;
  final String beneficio;
  final String frecuencia;
  final IconData icono;

  Habito({
    required this.nombre,
    required this.beneficio,
    required this.frecuencia,
    required this.icono,
  });
}