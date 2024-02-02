import 'package:flutter/material.dart';

class registertextFeild extends StatelessWidget {
  final bool obscure;
  final String hint;
  final TextEditingController controllers;
  const registertextFeild({super.key,required this.obscure,required this.controllers,required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(color: Colors.grey[300]),
        child: TextField(
          style: TextStyle(
            color: Colors.grey[850],
          ),
          obscureText: obscure,
          controller: controllers,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70)),
              hintText: hint,
              // icon: logo,
              hintStyle: TextStyle(color: Colors.grey[800], fontSize: 14)),
        ),
      ),
    );
  }
}