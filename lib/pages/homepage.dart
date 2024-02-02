// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trykaara/pages/forgot_pw_page.dart';
import 'package:trykaara/pages/registerPage.dart';
import 'package:trykaara/utils/register.dart';
import 'package:trykaara/utils/signin.dart';
import 'package:trykaara/utils/textfeild.dart';

class homepage extends StatefulWidget {
  final VoidCallback showregisterpage;
  const homepage({super.key,required this.showregisterpage});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  // void registerNew(){

  //   onPressed(() {

  //   });

  // }

  Future signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text.trim(),
        password: passwordcontroller.text.trim());
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  final mycolor = Colors.grey[850];

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      // backgroundColor: Color.fromRGBO(241,189,242 ,1.0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              
              children: [
                SizedBox(height: 100,),
                // Top Logo

                // Icon(
                //   Icons.lock,
                //   size: 200,
                //   color: mycolor,
                // ),
                Image.asset('assets/images/instaa.png', height: 100,color: Colors.white,),

                //signup and login text

                // Text(
                //   "Login/Signup",
                //   style: TextStyle(
                //       color: mycolor,
                //       fontSize: 34,
                //       fontWeight: FontWeight.bold),
                // ),
                SizedBox(
                  height: 25,
                ),

                //username textfeild

                TextfeildButton(
                  
                  obscure: false,
                  Hint: 'Phone number,username or email address',
                  controllers: emailcontroller,
                ),
                SizedBox(
                  height: 20,
                ),

                //password textfeild

                TextfeildButton(
                  obscure: true,
                  Hint: 'Password',
                  controllers: passwordcontroller,
                
                ),

                SizedBox(
                  height: 10,
                ),

                //forgot Password

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>forgotpasswordPage()));
                        },
                        child: Text(
                          'Forgotten pasword?',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                //not a member register now

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                    
                // SizedBox(
                //   height: 30,
                // ),

                //login button

                signInButton(
                  onTap: signin,
                  
                  // onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoggedInPage()));
                  // },
                ),
                SizedBox(
                  height: 5,
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
                    Text(
                      'Or',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //         decoration: BoxDecoration(
                //             color: Colors.white30,
                //             borderRadius: BorderRadius.circular(12)),
                //         child: Padding(
                //           padding: const EdgeInsets.symmetric(
                //               horizontal: 10, vertical: 5),
                //           child: Image.asset(
                //             'assets/images/google.png',
                //             height: 50,
                //           ),
                //         )),
                //     Container(
                //         decoration: BoxDecoration(
                //             color: Colors.white30,
                //             borderRadius: BorderRadius.circular(12),
                //             border: Border.all(color: Colors.white)),
                //         child: Padding(
                //           padding: const EdgeInsets.symmetric(
                //               horizontal: 15, vertical: 5),
                //           child: Image.asset(
                //             'assets/images/apple.png',
                //             height: 50,
                //           ),
                //         ))
                //         //#FADCD9
                //   ],
                // )
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text('OR',style: TextStyle(color: Colors.white),),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook,color: Colors.blue,),
                    Text("Login With Facebook",style: TextStyle(color: Colors.blue),),
                  ],
                ),

                SizedBox(height: 220,),
                Divider(color: Colors.white,thickness: 1,),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height:60 ,),  
                    Text('Don\'t have an account?',style: TextStyle(color: Colors.white),),
                  GestureDetector(onTap: widget.showregisterpage,
                    child: Text('Register',style: TextStyle(color: Colors.blue),))
                    // registerNow(onTap: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => registerPage()));
                    // })

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
