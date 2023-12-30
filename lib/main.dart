// ignore_for_file: library_private_types_in_public_api

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_2/auth/login.dart';
import 'package:flutter_application_2/auth/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyDfSCCQyQMNJyewlSqTyYpZQDw6KdpypaQ",
            appId: "1:827521004027:android:7f031f145241f9ebc61b5e",
            messagingSenderId: "827521004027",
            projectId: "first-4c169",
          ),
        )
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      routes: {
        "login": (context) => const Login(),
        "signup": (context) => const SignUp(),
      },
    );
  }
}
