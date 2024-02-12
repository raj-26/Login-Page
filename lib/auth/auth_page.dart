import 'package:flutter/material.dart';
import 'package:loginpage_dart/Signup.dart';
import 'package:loginpage_dart/pages/Login_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  // initally, show the login page
  bool showLoginPage = true;

  void toggleScreen(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showSignUpPage: toggleScreen);
    }
    else {
      return SignUpPage(showLoginPage: toggleScreen);
    }
  }
}
