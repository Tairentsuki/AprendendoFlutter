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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text("Contador: $counter"),
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
    );
  }
}
