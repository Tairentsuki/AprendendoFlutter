import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          theme: ThemeData(
            primaryColor: Colors.blue,
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
        );
      },
    );
  }
}
