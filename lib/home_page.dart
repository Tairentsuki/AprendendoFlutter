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
      appBar: AppBar(title: Text("Aula 7")),
      body: Center(
        child: Switch(value: AppController.instance.isDarkTheme, onChanged: (value) {
          AppController.instance.changeTheme();
        }
        )
      ),
    );
  }
}
