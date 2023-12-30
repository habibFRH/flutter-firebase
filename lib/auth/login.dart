import 'package:flutter/material.dart';

import '../components/customButtonAuth.dart';
import '../components/customLogoAuth.dart';
import '../components/textFormField.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(92, 94, 23, 235), Colors.white],
            begin: Alignment.centerLeft,
            end: Alignment.topCenter,
          ),
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomLogoAuth(height: 150, width: 300),
                const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 30,
                ),
                CustomTextForm(
                  label: "Email",
                  hinttext: 'Enter Your Email',
                  mycontroller: emailController,
                ),
                Container(
                  height: 20,
                ),
                CustomTextForm(
                  label: "Password",
                  hinttext: 'Enter Your Password',
                  mycontroller: passwordController,
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(top: 10, bottom: 20),
                  child: const Text(
                    "Forgot Password",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            CustomButtonAuth(
              title: "Login",
              onPressed: () {},
            ),
            Container(
              height: 10,
            ),
            MaterialButton(
              height: 40,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () {},
              color: const Color.fromARGB(255, 18, 194, 135),
              child: const Text(
                "Login with Google",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("signup");
              },
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "don't have an account ? "),
                      TextSpan(
                        text: "Register",
                        style: TextStyle(
                          color: Color(0xff5E17EB),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
