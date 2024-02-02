import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trykaara/pages/homepage.dart';

class forgotpasswordPage extends StatefulWidget {
  
  const forgotpasswordPage({super.key});

  @override
  State<forgotpasswordPage> createState() => _forgotpasswordPageState();
}

class _forgotpasswordPageState extends State<forgotpasswordPage> {
  final _emailcontroller = TextEditingController();
  bool goback = true;

  Future forgotPassword() async {
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: _emailcontroller.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/locked.png',
              color: Colors.black,
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Trouble Logging In ?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Enter your email,phone or username and we\'ll send you a link to get back into your account',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[400]),
                child: TextField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70)),
                      hintText: 'Enter your Email',

                      // icon: logo,
                      hintStyle:
                          TextStyle(color: Colors.grey[800], fontSize: 14)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 110),
                  child: MaterialButton(
                      onPressed: forgotPassword,
                      child: Text(
                        "Send login Link",
                        style: TextStyle(color: Colors.white),
                      )),
                )),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                )),
                Text('OR'),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey,
                        )))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.facebook,
                  color: Colors.blue,
                ),
                Text(
                  "Login With Facebook",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
SizedBox(height: 310,),
            Expanded(child: Divider(color: Colors.grey,thickness: 2,)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Go Back To Login',style: TextStyle(color: Colors.blue,fontSize: 16),),
            )
          ],
        ),
      ),
    );
  }
}
