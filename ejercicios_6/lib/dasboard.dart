import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard de Proyectos"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),

        child: SingleChildScrollView(
          child: Column(
            children: [

              // Título
              const Text(
                "Resumen General",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // Primera fila
              Row(
                children: [

                  Expanded(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Icon(Icons.folder, size: 40),
                            SizedBox(height: 10),
                            Text(
                              "5",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Proyectos"),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Icon(Icons.people, size: 40),
                            SizedBox(height: 10),
                            Text(
                              "4",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Equipos"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              Row(
                children: [

                  Expanded(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Icon(Icons.check_circle,
                                size: 40),
                            SizedBox(height: 10),
                            Text(
                              "2",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Finalizados"),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Icon(Icons.schedule,
                                size: 40),
                            SizedBox(height: 10),
                            Text(
                              "3",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("En proceso"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [

                      Text(
                        "Avance General",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 15),

                      LinearProgressIndicator(
                        value: 0.70,
                        minHeight: 12,
                      ),

                      SizedBox(height: 10),

                      Text("70% completado"),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              Card(
                elevation: 4,
                child: ListTile(
                  leading: Icon(Icons.event),
                  title: Text(
                    "Próxima entrega",
                  ),
                  subtitle: Text(
                    "Proyecto LexiSing - 20/06/2026",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}