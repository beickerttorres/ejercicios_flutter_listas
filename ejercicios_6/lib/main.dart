import 'package:flutter/material.dart';
import '/dasboard.dart';
import '/proyectos.dart';
import '/reporte.dart';
import '/recomendaciones.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Seguimiento de Proyectos",
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
          "Seguimiento de Proyectos",
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,

          children: [

            ElevatedButton(
              child: const Text("Dashboard"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const DashboardScreen(),
                  ),
                );
              },
            ),

            ElevatedButton(
              child: const Text(
                "Lista de Proyectos",
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        ProyectosScreen(),
                  ),
                );
              },
            ),

            ElevatedButton(
              child: const Text(
                "Reporte de Avance",
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const ReporteScreen(),
                  ),
                );
              },
            ),

            ElevatedButton(
              child: const Text(
                "Recomendaciones",
              ),
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