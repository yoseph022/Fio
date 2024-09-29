// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/my_button.dart';
import 'package:flutter_application_1/component/my_textfield.dart';
import 'package:flutter_application_1/component/square_tile.dart';
// import 'package:flutter/widgets.dart';

class Loginpage extends StatefulWidget {
  final Function()? onTap;
  Loginpage({super.key, required this.onTap});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  //text editing controller
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

  //user sign in
  void SignUserIn() async{

    //show loading
    showDialog(
      context: context, 
      builder: (context){
        return const Center(child: CircularProgressIndicator(),
        );
     },
    );

    // try signin
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: EmailController.text, 
      password: PasswordController.text,
      );
      // pop loading circle
      Navigator.pop(context);
    }on FirebaseAuthException catch(e) {
      // pop loading circle
      Navigator.pop(context);
      // show eror message
      if (e.code == 'user-not-found') {
      showErorMessage("Email not registered, please check your email.");
    } else if (e.code == 'wrong-password') {
      showErorMessage("Wrong password, please try again.");
    } else {
      showErorMessage("Eror Sign in");
    }
    }
  }

  //wrong message popup
  void showErorMessage(String message){
    showDialog( 
      context: context, 
      builder: (context){
     return AlertDialog(
      backgroundColor: Colors.black,
        title: Center(
          child: Text(
            message,
              style: const TextStyle(color: Colors.white),
            ),
          ), 
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center (
          child: SingleChildScrollView(
            child: Column(
              children: [
            
            // logo
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Image.asset('images/logo-app.jpg', width: 200, height: 200,),
            ),
            
            // login
            SizedBox(height: 10),
            Text(
            "welcome back you\'ve been missed",
              textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            //username
            SizedBox(height: 25),
            MyTextfield(
              controller: EmailController,
              HintText: 'Username',
              obscureText: false,
            ),
            
            //password
            SizedBox(height: 10),
            MyTextfield(
              controller: PasswordController,
              HintText: 'Password',
              obscureText: true,
            ),
            
            //signin
            SizedBox(height: 25,),
            MyButton(
              text: "Sign in",
              onTap: SignUserIn,
            ),
            
            //or cintinye with
            SizedBox(height: 30,),
            
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                      "Or Continue with",
                      style: TextStyle(color: Colors.black)
                      ),
                    ),
                      Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                      ),
                      ),
                  ],
                ),
              ),
            
            
            //google or apple button
            const SizedBox(height: 30,),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  squareTile(imagePath: 'images/google.png'),
                  const SizedBox(width: 30,),
                  squareTile(imagePath: 'images/apple.png'),
                ],
              ),
            
            
            // not a member register now
            const SizedBox(height: 30),
            
              Row (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't Have Account?"),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text("Register Now",
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            
                    ],
                  ),
          ),
      ),
      )
    );
  }
}