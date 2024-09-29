import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final user = FirebaseAuth.instance.currentUser!;

  //sign user out method
  void SignUserOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: SignUserOut, icon: Icon(Icons.logout))
        ]),
      body: Center(
        child: Text(
        "LOGGED IN AS: "+ user.email!,
        style: TextStyle(fontSize: 20),
        )
        ),
    );
  }
}