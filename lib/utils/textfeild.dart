// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextfeildButton extends StatelessWidget {
  final bool obscure;
  final String Hint;
  final TextEditingController controllers;
  // final Icon logo;
  const TextfeildButton(
      {super.key,
      required this.obscure,
      required this.Hint,
      required this.controllers,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(color: Colors.grey[850]),
        child: TextField(
          style: TextStyle(
            color: Colors.white70,
          ),
          obscureText: obscure,
          controller: controllers,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              hintText: Hint,
              // icon: logo,
              hintStyle: TextStyle(color: Colors.white70, fontSize: 14)),
        ),
      ),
    );
  }
}
