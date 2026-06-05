import 'package:flutter/material.dart';
import 'habito.dart';

class HabitosScreen extends StatelessWidget {
  HabitosScreen({super.key});

  final List<Habito> habitos = [

    Habito(
      nombre: "Tomar agua",
      beneficio: "Mejor hidratación",
      frecuencia: "8 vasos diarios",
      icono: Icons.water_drop,
    ),

    Habito(
      nombre: "Caminar",
      beneficio: "Mejora la salud cardiovascular",
      frecuencia: "30 minutos diarios",
      icono: Icons.directions_walk,
    ),

    Habito(
      nombre: "Dormir bien",
      beneficio: "Mayor energía",
      frecuencia: "8 horas diarias",
      icono: Icons.bed,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hábitos"),
      ),
      body: ListView.builder(
        itemCount: habitos.length,
        itemBuilder: (context, index) {

          final h = habitos[index];

          return Card(
            child: ListTile(
              leading: Icon(h.icono),
              title: Text(h.nombre),
              subtitle: Text(
                "Beneficio: ${h.beneficio}\n"
                "Frecuencia: ${h.frecuencia}",
              ),
            ),
          );
        },
      ),
    );
  }
}