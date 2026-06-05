import 'package:flutter/material.dart';

class RecomendacionesScreen
    extends StatelessWidget {

  const RecomendacionesScreen(
      {super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Recomendaciones"),
      ),

      body: ListView(
        children: const [

          ListTile(
            leading: Icon(Icons.check),
            title: Text(
              "Limpiar herramientas después de utilizarlas",
            ),
          ),

          ListTile(
            leading: Icon(Icons.check),
            title: Text(
              "Guardar cada herramienta en su lugar",
            ),
          ),

          ListTile(
            leading: Icon(Icons.check),
            title: Text(
              "Revisar periódicamente el estado de las herramientas",
            ),
          ),

          ListTile(
            leading: Icon(Icons.check),
            title: Text(
              "Reportar daños inmediatamente",
            ),
          ),
        ],
      ),
    );
  }
}