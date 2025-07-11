import 'package:flutter/material.dart';
import 'pantalla_detalle.dart';
import 'pantalla_layout.dart';
import 'posicioning.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegación con rutas',
      initialRoute: '/',
      routes: {
        '/': (context) => PantallaHome(),
        '/detalle': (context) => PantallaDetalle(valorInicial: 3),
        '/layout': (context) => const PantallaLayout(),
        '/posicionamiento': (context) => const Posicioning(),
      },
    );
  }
}
