import 'package:flutter/material.dart';
import 'pantalla_detalle.dart';
import 'pantalla_layout.dart';
import 'posicioning.dart';

class PantallaHome extends StatefulWidget {
  @override
  State<PantallaHome> createState() => _PantallaHomeState();
}

class _PantallaHomeState extends State<PantallaHome> {
  int _valorRecibido = 0;

  void _navegarADetalle() async {
    final resultado = await Navigator.push<int>(
      context,
      MaterialPageRoute(builder: (context) => PantallaDetalle(valorInicial: 5)),
    );

    if (resultado != null) {
      setState(() {
        _valorRecibido = resultado;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HOME')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Valor recibido: $_valorRecibido',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: ElevatedButton(
                onPressed: _navegarADetalle,
                child: Text('Ir a detalle y traer valor'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaLayout()),
                  );
                },
                child: Text('Ir a pantalla de Layouts'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/posicionamiento',
                  arguments: "este valor viene de home: $_valorRecibido",
                );
              },
              child: Text('Ir a pantalla de Posicionamiento'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/formulario');
              },
              child: Text('Ir a pantalla de Formulario'),
            ),
          ],
        ),
      ),
    );
  }
}
