// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final void Function()? onPressed;
  final String title ; 

  const CustomButtonAuth({super.key, this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      shape: RoundedRectangleBorder(
          //BeveledRectangleBorder
          borderRadius: BorderRadius.circular(20)),
      onPressed: () {},
      color: const Color(0xff5E17EB),
      child:  Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
    );
  }
}
