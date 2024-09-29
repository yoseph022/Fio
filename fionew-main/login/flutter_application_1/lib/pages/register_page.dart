// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/my_button.dart';
import 'package:flutter_application_1/component/my_textfield.dart';
import 'package:flutter_application_1/component/square_tile.dart';
// import 'package:flutter/widgets.dart';

class registerPage extends StatefulWidget {
  final Function()? onTap;
  registerPage({super.key, required this.onTap});

  @override
  State<registerPage> createState() => _LoginpageState();
}

class _LoginpageState extends State<registerPage> {
  //text editing controller
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  final ConfirmPasswordControler = TextEditingController();

  //user sign in
  void SignUserUp() async{

    //show loading
    showDialog(
      context: context, 
      builder: (context){
        return const Center(child: CircularProgressIndicator(),
        );
     },
    );

    // try create user
    try{
      // check if password is confirmed
     if(PasswordController.text == ConfirmPasswordControler.text){
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: EmailController.text, 
      password: PasswordController.text,
      );
     } else {
      // eror message
      showErorMessage("Password Dont't Match!");
     }
     Navigator.pop(context);
    }on FirebaseAuthException catch(e) {
      Navigator.pop(context);

      showErorMessage("Crudential Dont't Match!");
    }
  }

  //wrong message popup
  void showErorMessage(String message){
    showDialog(context: context, builder: (context){
     return  AlertDialog(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image.asset('images/logo-app.jpg', width: 200, height: 200,),
            ),
            
            // login
            SizedBox(height: 10),
            Text(
              "Let's Create Your Account",
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

            // confirm Password
            SizedBox(height: 10),
            MyTextfield(
              controller: ConfirmPasswordControler,
              HintText: 'Confirm Password',
              obscureText: true,
            ),
            
              
            //signin
            SizedBox(height: 25,),
            MyButton(
              text: 'Sign Up',
              onTap: SignUserUp,
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
                  const Text("Already have an Account?"),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text("Login Now",
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