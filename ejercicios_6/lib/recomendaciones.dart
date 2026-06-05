import 'package:flutter/material.dart';

class RecomendacionesScreen
    extends StatelessWidget {

  const RecomendacionesScreen(
      {super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Recomendaciones",
        ),
      ),

      body: ListView(
        children: const [

          ListTile(
            leading: Icon(Icons.lightbulb),
            title: Text(
              "Actualizar avances semanalmente",
            ),
          ),

          ListTile(
            leading: Icon(Icons.lightbulb),
            title: Text(
              "Registrar dificultades oportunamente",
            ),
          ),

          ListTile(
            leading: Icon(Icons.lightbulb),
            title: Text(
              "Mantener comunicación constante con el equipo",
            ),
          ),

          ListTile(
            leading: Icon(Icons.lightbulb),
            title: Text(
              "Definir acciones de mejora claras",
            ),
          ),
        ],
      ),
    );
  }
}