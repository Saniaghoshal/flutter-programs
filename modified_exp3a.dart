import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive UI',
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive UI'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth >= 600) {
            return buildWideContainers();
          } else {
            return buildNarrowContainers();
          }
        },
      ),
    );
  }

  Widget buildWideContainers() {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          ' you are using Wide Screen!',
          style: TextStyle(
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildNarrowContainers() {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          'Narrow Screen!',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
