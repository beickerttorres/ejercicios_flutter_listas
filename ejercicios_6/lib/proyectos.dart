import 'package:flutter/material.dart';
import '../proyecto.dart';

class ProyectosScreen extends StatelessWidget {

  ProyectosScreen({super.key});

  final List<Proyecto> proyectos = [

    Proyecto(
      nombre: "LexiSing",
      equipo: "Equipo A",
      avance: "70%",
      estado: "En desarrollo",
      entrega: "20/06/2026",
    ),

    Proyecto(
      nombre: "Inventario SENA",
      equipo: "Equipo B",
      avance: "45%",
      estado: "En pruebas",
      entrega: "28/06/2026",
    ),

    Proyecto(
      nombre: "Gestor Académico",
      equipo: "Equipo C",
      avance: "90%",
      estado: "Finalización",
      entrega: "15/06/2026",
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Proyectos"),
      ),

      body: ListView.builder(
        itemCount: proyectos.length,

        itemBuilder: (context, index) {

          final proyecto = proyectos[index];

          return Card(
            child: ListTile(
              leading: const Icon(Icons.folder),

              title: Text(
                proyecto.nombre,
              ),

              subtitle: Text(
                "Equipo: ${proyecto.equipo}\n"
                "Avance: ${proyecto.avance}\n"
                "Estado: ${proyecto.estado}\n"
                "Entrega: ${proyecto.entrega}",
              ),
            ),
          );
        },
      ),
    );
  }
}