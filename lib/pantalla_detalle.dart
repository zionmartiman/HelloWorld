import 'package:flutter/material.dart';

class PantallaDetalle extends StatefulWidget {
  final int valorInicial;

  PantallaDetalle({required this.valorInicial});

  @override
  _PantallaDetalleState createState() => _PantallaDetalleState();
}

class _PantallaDetalleState extends State<PantallaDetalle> {
  late int _contador;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla Detalle')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $_contador', style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _incrementar, child: Text('Sumar 1')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _volverConResultado,
              child: Text('Volver y enviar valor'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _contador = widget.valorInicial;
  }

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _volverConResultado() {
    Navigator.pop(context, _contador);
  }
}
