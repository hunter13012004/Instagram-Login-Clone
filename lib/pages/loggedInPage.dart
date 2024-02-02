// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoggedInPage extends StatefulWidget {
  const LoggedInPage({super.key});

  @override
  State<LoggedInPage> createState() => _LoggedInPageState();
}

class _LoggedInPageState extends State<LoggedInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomAppBar(
          
          color: Colors.black,
          child: Row(
            children: [
              const Padding(
                padding:  EdgeInsets.all(12.0),
                child: Icon(Icons.home,color: Colors.white,size: 40,),
              ),
              Spacer(flex: 1,),
              Icon(Icons.search,color: Colors.white,size: 40),
              Spacer(flex: 1,),
              Icon(Icons.add_box,color: Colors.white,size: 40),
              Spacer(flex: 1,),
              Icon(Icons.video_chat,color: Colors.white,size: 40),
              Spacer(flex: 1,),
              Icon(Icons.person_2_rounded,color: Colors.white,size: 40)
            ],
    
          ),
    
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [SizedBox(height: 10,),
            Row(
              children: [
               const Text('Instagram',style: TextStyle(color: Colors.white,fontSize: 24),),
                SizedBox(width: 250,),
                Icon(Icons.favorite_border,color: Colors.white,size: 40,)
              ],
            ),
            Container(decoration: BoxDecoration(
              color: Colors.white
  
            ),
            
              child: Column(
                children: [
                  Text('signout',style: TextStyle(color: Colors.black),),
                  MaterialButton(onPressed: (){
                    FirebaseAuth.instance.signOut();
                    
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
