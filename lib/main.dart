import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(text: 'Text'));
}

class AppWidget extends StatelessWidget {
  final String text;

  const AppWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:  Center(child: Text("Text")),
      theme: ThemeData.dark(),
    );
  }
}
