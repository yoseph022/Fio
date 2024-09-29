import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final String HintText;
  final bool obscureText;

  const MyTextfield({
    super.key,
    required this.controller,
    required this.HintText,
    required this.obscureText
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
              ),
              fillColor: Colors.white,
              filled: true,
              hintText: HintText,
              hintStyle: TextStyle(color: Colors.grey[500])
            ),
            ),
          );
  }
}

          