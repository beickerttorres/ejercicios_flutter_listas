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

  final habitoController =
      TextEditingController();

  final metaController =
      TextEditingController();

  final motivoController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Compromiso Personal",
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
                  labelText: "Nombre del usuario",
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
                controller: habitoController,
                decoration: const InputDecoration(
                  labelText:
                      "Hábito a mejorar",
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
                controller: metaController,
                decoration: const InputDecoration(
                  labelText: "Meta semanal",
                ),
                validator: (value) {

                  if (value == null ||
                      value.isEmpty) {
                    return "Campo obligatorio";
                  }

                  if (value.length < 5) {
                    return "Mínimo 5 caracteres";
                  }

                  return null;
                },
              ),

              TextFormField(
                controller: motivoController,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText:
                      "Motivo personal",
                ),
                validator: (value) {

                  if (value == null ||
                      value.isEmpty) {
                    return "Campo obligatorio";
                  }

                  if (value.length < 10) {
                    return "Mínimo 10 caracteres";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {

                  if (_formKey.currentState!
                      .validate()) {

                    ScaffoldMessenger.of(
                            context)
                        .showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Compromiso registrado",
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