import 'package:flutter/material.dart';
import 'package:trykaara/pages/homepage.dart';
import 'package:trykaara/pages/registerPage.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  bool showloginpage = true;

  void toggleScreen(){
    setState(() {
      showloginpage = !showloginpage;
    });
  }


  @override
  Widget build(BuildContext context) {
    if(showloginpage){
      return homepage(showregisterpage:toggleScreen );
    }else{
      return registerPage(showloginpage:toggleScreen );
    }

  }
}