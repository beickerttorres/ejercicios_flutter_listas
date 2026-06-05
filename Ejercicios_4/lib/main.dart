import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'herramientas_screen.dart';
import 'formulario_screen.dart';
import 'recomendaciones.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inventario',
      home: const MenuPrincipal(),
    );
  }
}

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Inventario Herramientas",
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,

          children: [

            ElevatedButton(
              child: const Text("Resumen"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const HomeScreen(),
                  ),
                );
              },
            ),

            ElevatedButton(
              child: const Text(
                  "Herramientas"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        HerramientasScreen(),
                  ),
                );
              },
            ),

            ElevatedButton(
              child:
                  const Text("Formulario"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const FormularioScreen(),
                  ),
                );
              },
            ),

            ElevatedButton(
              child: const Text(
                  "Recomendaciones"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const RecomendacionesScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}