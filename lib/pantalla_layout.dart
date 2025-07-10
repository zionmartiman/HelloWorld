import 'package:flutter/material.dart';

class PantallaLayout extends StatelessWidget {
  const PantallaLayout({super.key});

  @override
  Widget build(BuildContext context) {
    const double space = 30;
    return Scaffold(
      appBar: AppBar(title: const Text('Layouts')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(flex: 2),
          Row(
            children: [
              Icon(Icons.person, size: 40),
              const SizedBox(width: 12), // espacio entre icono y texto
              Expanded(
                child: Text(
                  'Juan Pérez el Desarrollador aksdjh sahudhasuhdiuas hdau hiuhd', // probá con texto largo
                  style: TextStyle(fontSize: 24),
                  overflow: TextOverflow.ellipsis, // si se pasa, pone "..."
                ),
              ),
              const SizedBox(width: 12),
              ElevatedButton(onPressed: () {}, child: Text('Editar')),
            ],
          ),
          SizedBox(height: 200),
          Column(
            mainAxisAlignment: MainAxisAlignment.end, // centra verticalmente
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
          Spacer(),
        ],
      ),
    );
  }
}
