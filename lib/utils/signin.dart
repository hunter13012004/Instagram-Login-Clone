// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class signInButton extends StatelessWidget {
  final void Function()? onTap;
  const signInButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 10),
          child: Text(
            'Log In',
            style: TextStyle(
                color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
