import 'package:flutter/material.dart';

class ReporteScreen extends StatefulWidget {
  const ReporteScreen({super.key});

  @override
  State<ReporteScreen> createState() =>
      _ReporteScreenState();
}

class _ReporteScreenState
    extends State<ReporteScreen> {

  final _formKey = GlobalKey<FormState>();

  final nombreController =
      TextEditingController();

  final avanceController =
      TextEditingController();

  final dificultadController =
      TextEditingController();

  final accionController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Reporte de Avance",
        ),
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
                      "Nombre del proyecto",
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
                controller: avanceController,
                decoration: const InputDecoration(
                  labelText:
                      "Avance actual",
                ),
                validator: (value) {

                  if (value == null ||
                      value.isEmpty) {
                    return "Debe escribir el avance";
                  }

                  return null;
                },
              ),

              TextFormField(
                controller:
                    dificultadController,
                maxLines: 3,
                decoration:
                    const InputDecoration(
                  labelText:
                      "Dificultad encontrada",
                ),
                validator: (value) {

                  if (value == null ||
                      value.length < 10) {

                    return "Mínimo 10 caracteres";
                  }

                  return null;
                },
              ),

              TextFormField(
                controller:
                    accionController,
                maxLines: 3,
                decoration:
                    const InputDecoration(
                  labelText:
                      "Acción de mejora",
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
                          "Reporte guardado correctamente",
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