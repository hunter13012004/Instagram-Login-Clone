// ignore_for_file: unused_import

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:trykaara/pages/homepage.dart';
import 'package:trykaara/pages/main_page.dart';

void main() async
 {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
          apiKey: 'AIzaSyBvvhx6epdaGHH8GPhk76qQ3uYFSWrirg0',
          appId: "1:92181697430:android:568eb535d6cd8068ab43b7",
          messagingSenderId: '92181697430',
          projectId: 'fir-1f798',
        ))
      : await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
