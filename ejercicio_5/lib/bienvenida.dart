import 'package:flutter/material.dart';

class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hábitos Saludables"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.favorite,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(
              "Bienvenido",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Mejora tu calidad de vida con hábitos saludables",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}