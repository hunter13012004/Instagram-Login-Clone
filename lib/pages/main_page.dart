// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trykaara/pages/homepage.dart';
import 'package:trykaara/pages/loggedInPage.dart';
import 'package:trykaara/utils/auth.dart.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(), builder: (context, snapshot){
      if(snapshot.hasData){
        return LoggedInPage();
      }
      else{
        return AuthPage();
      }
    });
  }
}