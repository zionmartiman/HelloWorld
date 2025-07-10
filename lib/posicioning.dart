import 'package:flutter/material.dart';

class Posicioning extends StatelessWidget {
  const Posicioning({super.key});
  @override
  Widget build(BuildContext context) {
    const double space = 30;
    return Scaffold(
      appBar: AppBar(title: const Text('Layouts')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=3'),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text('1', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
