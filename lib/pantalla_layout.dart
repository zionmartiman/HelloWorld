import 'package:flutter/material.dart';

class PantallaLayout extends StatelessWidget {
  const PantallaLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layouts')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centra verticalmente
          crossAxisAlignment:
              CrossAxisAlignment.center, // centra horizontalmente
          children: [
            Text(
              'Nombre:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Juan Pérez'),
            SizedBox(height: 16),
            ElevatedButton(onPressed: () {}, child: Text('Editar perfil')),
          ],
        ),
      ),
    );
  }
}
