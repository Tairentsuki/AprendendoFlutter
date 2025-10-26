import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aula 6")),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        child: Center(
          child: Container(
            height: 150,
            width: 150,
            color: Colors.yellow,
            child: Center(
              child: Container(height: 100, width: 100, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
