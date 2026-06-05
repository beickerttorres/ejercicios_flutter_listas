import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventario de Herramientas"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [

            Card(
              child: ListTile(
                leading: Icon(Icons.inventory),
                title: Text("Total herramientas"),
                subtitle: Text("15 herramientas registradas"),
              ),
            ),

            SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: Icon(Icons.build),
                title: Text("Estado general"),
                subtitle: Text("Mayoría en buen estado"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}