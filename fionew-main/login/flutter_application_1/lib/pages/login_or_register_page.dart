import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/register_page.dart';

class loginOrRegisterPage extends StatefulWidget {
  const loginOrRegisterPage({super.key});

  @override
  State<loginOrRegisterPage> createState() => _loginOrRegisterPageState();
}

class _loginOrRegisterPageState extends State<loginOrRegisterPage> {

  // initialy show login page
  bool showLoginPage = true;

  // togle between login and register page
  void toglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }


  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return Loginpage(
        onTap: toglePages,
      );
    } else {
      return registerPage(
        onTap: toglePages,
      );
    }
  }
}