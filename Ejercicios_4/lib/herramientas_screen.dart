import 'package:flutter/material.dart';
import 'herramienta.dart';

class HerramientasScreen extends StatelessWidget {
  HerramientasScreen({super.key});

  final List<Herramienta> herramientas = [

    Herramienta(
      nombre: "Martillo",
      cantidad: 5,
      estado: "Bueno",
      ubicacion: "Estante A",
      icono: Icons.handyman,
    ),

    Herramienta(
      nombre: "Taladro",
      cantidad: 2,
      estado: "Regular",
      ubicacion: "Estante B",
      icono: Icons.construction,
    ),

    Herramienta(
      nombre: "Destornillador",
      cantidad: 10,
      estado: "Excelente",
      ubicacion: "Caja 3",
      icono: Icons.build,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Herramientas"),
      ),
      body: ListView.builder(
        itemCount: herramientas.length,
        itemBuilder: (context, index) {

          final h = herramientas[index];

          return Card(
            child: ListTile(
              leading: Icon(h.icono),
              title: Text(h.nombre),
              subtitle: Text(
                "Cantidad: ${h.cantidad}\n"
                "Estado: ${h.estado}\n"
                "Ubicación: ${h.ubicacion}",
              ),
            ),
          );
        },
      ),
    );
  }
}