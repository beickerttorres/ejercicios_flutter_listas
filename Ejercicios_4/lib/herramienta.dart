import 'package:flutter/material.dart';

class Herramienta {
  final String nombre;
  final int cantidad;
  final String estado;
  final String ubicacion;
  final IconData icono;

  Herramienta({
    required this.nombre,
    required this.cantidad,
    required this.estado,
    required this.ubicacion,
    required this.icono,
  });
}