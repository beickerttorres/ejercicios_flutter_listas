import 'package:flutter/material.dart';
import 'bienvenida.dart';
import 'habitos.dart';
import 'formulario.dart';
import 'consejos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hábitos Saludables",
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
          "Hábitos Saludables",
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,

          children: [

            ElevatedButton(
              child: const Text(
                "Bienvenida",
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const BienvenidaScreen(),
                  ),
                );
              },
            ),

            ElevatedButton(
              child: const Text(
                "Lista de Hábitos",
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        HabitosScreen(),
                  ),
                );
              },
            ),

            ElevatedButton(
              child: const Text(
                "Compromiso Personal",
              ),
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
                "Consejos",
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const ConsejosScreen(),
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