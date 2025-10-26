import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

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
      appBar: AppBar(title: Text("Aula 14"), actions: [SwitchTheme()]),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Contador: $counter", style: TextStyle(fontSize: 25)),
            SwitchTheme(),
            Container(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.blue),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          FloatingActionButton(
            child: Icon(Icons.plus_one),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.exposure_minus_1),
            onPressed: () {
              setState(() {
                counter--;
              });
            },
          ),
        ],
      ),
    );
  }
}

class SwitchTheme extends StatelessWidget {
  const SwitchTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
