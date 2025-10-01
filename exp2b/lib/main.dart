import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: LayoutApp()));
  }
}

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('I\'m in a column and centred.The row is below.'),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (var color in [Colors.red, Colors.green, Colors.blue])
              Container(width: 100, height: 100, color: color),
          ],
        ),
        const SizedBox(height: 20),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 300, height: 200, color: Colors.yellow),
            const Text(
              'Stacked on yellow box',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

