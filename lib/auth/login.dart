import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: ListView(
            children: [
              Image.asset(
                "images/registrecomLogo.png",
                width: 280,
                height: 280,
              ), // bixfit ttn7a
            ],
          )),
    );
  }
}
