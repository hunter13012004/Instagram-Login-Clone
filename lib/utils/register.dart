// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class registerNow extends StatelessWidget {
  void Function()? onTap;
   registerNow({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
    child: Text('Register Now',style: TextStyle(color: Colors.blue),),
      ),
    );
  }
}