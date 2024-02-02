// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trykaara/pages/homepage.dart';
import 'package:trykaara/utils/registertextfeilds.dart';
import 'package:trykaara/utils/textfeild.dart';

class registerPage extends StatefulWidget {
  final VoidCallback showloginpage;
  const registerPage({super.key,required this.showloginpage});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  final NewEmailController = TextEditingController();
  final NewNameController = TextEditingController();
  final newpasswordController = TextEditingController();
  final usernamecontroller = TextEditingController();
  Future signup()async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: NewEmailController.text.trim(),
        password: newpasswordController.text.trim());
  }
  
  @override
  void dispose() {
    NewEmailController.dispose();
    newpasswordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                // Top Logo

                Image.asset(
                  'assets/images/instaa.png',
                  height: 100,
                ),
                //Register text

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Sign up to see photos and videos ",
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'from your friend',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),

                //login with facebook
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.white,
                          ),
                          Text(
                            "Login With Facebook",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      'OR',
                      style: TextStyle(color: Colors.black),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //name textfeild
                registertextFeild(
                  obscure: false,
                  hint: 'Mobile Number or Email',
                  controllers: NewEmailController,
                ),

                SizedBox(
                  height: 5,
                ),
                //phone number feid
                registertextFeild(
                  obscure: false,
                  hint: 'Full Name',
                  controllers: NewNameController,
                ),
                SizedBox(
                  height: 5,
                ),
                //username textfeild

                registertextFeild(
                  obscure: false,
                  hint: 'Username',
                  controllers: usernamecontroller,
                ),
                SizedBox(
                  height: 5,
                ),

                //password textfeild

                registertextFeild(
                  obscure: true,
                  hint: 'Password',
                  controllers: newpasswordController,
                ),

                SizedBox(
                  height: 10,
                ),

                //forgot Password

                SizedBox(
                  height: 10,
                ),

                //register button

                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 130),
                    child: GestureDetector(
                      onTap: signup,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                //login button

                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(
                      thickness: 50,
                      color: Colors.black,
                      height: 10,
                      indent: 10,
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      'By signing up. you agree to our',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    )),
                    Text(' Terms Data Policy and Cookies ',
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 16)),
                    Text('Policy',
                        style: TextStyle(color: Colors.grey[600], fontSize: 16))
                  ],
                ),
                Row(
                  children: [
                    Text('Already A customer,'),
                    GestureDetector(
                      onTap: widget.showloginpage,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
