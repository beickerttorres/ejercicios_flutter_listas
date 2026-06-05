import 'package:flutter/material.dart';

class ConsejosScreen extends StatelessWidget {
  const ConsejosScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Consejos"),
      ),

      body: ListView(
        children: const [

          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(
              "Tomar suficiente agua diariamente",
            ),
          ),

          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(
              "Dormir al menos 8 horas",
            ),
          ),

          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(
              "Realizar actividad física",
            ),
          ),

          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(
              "Consumir frutas y verduras",
            ),
          ),
        ],
      ),
    );
  }
}