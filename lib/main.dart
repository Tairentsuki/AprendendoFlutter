import 'package:flutter/material.dart';

main() {
  runApp(
    Center(
      child: Container(
        alignment: Alignment.center,
        child: Text(
          "Hello World! ",
          style: TextStyle(color: Colors.yellow, fontSize: 45),
          textDirection: TextDirection.ltr,
        ),
      ),
    ),
  );
}
