import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(64.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                ),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Senha",
                  ),
                ),
                SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    if (email == "teste@gmail.com" && password == "123456") {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage())
                    );
                    } else {
                      print("Login inválido");
                    }
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
