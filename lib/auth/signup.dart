import 'package:flutter/material.dart';

import '../components/customButtonAuth.dart';
import '../components/customLogoAuth.dart';
import '../components/textFormField.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
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
                const CustomLogoAuth(
                  height: 30,
                  width: 250,
                ),
                const Center(
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                ),
                CustomTextForm(
                  label: "First Name",
                  hinttext: 'Enter Your First Name',
                  mycontroller: firstNameController,
                ),
                CustomTextForm(
                  label: "Last Name",
                  hinttext: 'Enter Your Last Name',
                  mycontroller: lastNameController,
                ),
                CustomTextForm(
                  label: "Username",
                  hinttext: 'Enter Your Username',
                  mycontroller: usernameController,
                ),
                CustomTextForm(
                  label: "Number",
                  hinttext: 'Enter Your Number',
                  mycontroller: usernameController,
                ),
                CustomTextForm(
                  label: "Email",
                  hinttext: 'Enter Your Email',
                  mycontroller: emailController,
                ),
                CustomTextForm(
                  label: "Password",
                  hinttext: 'Enter Your Password',
                  mycontroller: passwordController,
                ),
              ],
            ),
            Container(
              height: 10,
            ),
            CustomButtonAuth(
              title: "SignUp",
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Already have an account ? "),
                      TextSpan(
                        text: "Login",
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
