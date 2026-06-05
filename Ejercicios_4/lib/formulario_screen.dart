import 'package:flutter/material.dart';

class FormularioScreen extends StatefulWidget {
  const FormularioScreen({super.key});

  @override
  State<FormularioScreen> createState() =>
      _FormularioScreenState();
}

class _FormularioScreenState
    extends State<FormularioScreen> {

  final _formKey = GlobalKey<FormState>();

  final nombreController =
      TextEditingController();

  final cantidadController =
      TextEditingController();

  final estadoController =
      TextEditingController();

  final observacionController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Reportar Herramienta"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: Form(
          key: _formKey,

          child: ListView(
            children: [

              TextFormField(
                controller: nombreController,
                decoration: const InputDecoration(
                  labelText:
                      "Nombre de la herramienta",
                ),
                validator: (value) {

                  if (value == null ||
                      value.isEmpty) {
                    return "Campo obligatorio";
                  }

                  return null;
                },
              ),

              TextFormField(
                controller: cantidadController,
                decoration: const InputDecoration(
                  labelText: "Cantidad",
                ),
                validator: (value) {

                  if (value == null ||
                      value.isEmpty) {
                    return "Ingrese una cantidad";
                  }

                  return null;
                },
              ),

              TextFormField(
                controller: estadoController,
                decoration: const InputDecoration(
                  labelText: "Estado",
                ),
              ),

              TextFormField(
                controller:
                    observacionController,
                maxLines: 3,
                decoration:
                    const InputDecoration(
                  labelText: "Observación",
                ),
                validator: (value) {

                  if (value == null ||
                      value.length < 10) {

                    return "Mínimo 10 caracteres";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {

                  if (_formKey
                      .currentState!
                      .validate()) {

                    ScaffoldMessenger.of(
                            context)
                        .showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Reporte enviado correctamente",
                        ),
                      ),
                    );
                  }
                },
                child: const Text(
                  "Guardar",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}