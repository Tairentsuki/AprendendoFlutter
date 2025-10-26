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
      appBar: AppBar(title: Text("Aula 5")),
      body: Center(
        child: GestureDetector(
          child: Text("Contador: $counter", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold), ),
          onTap: () {
            setState(() {
              counter++;
            });
          },
          onDoubleTap: () {
            setState(() {
              counter--;
            });
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          FloatingActionButton(
            child: Icon(Icons.exposure_minus_1),
            onPressed: () {
              setState(() {
                counter--;
              });
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.exposure_plus_1),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
        ],
      ),
    );
  }
}
