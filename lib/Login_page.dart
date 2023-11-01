import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25),
              Text('Hello Again!',
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Welcome back, you''ve been missed!',
              style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.password),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.deepPurple,
                    // border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Register Now',
                  style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                  ),
                ],
              )


            ],
          ),
        ),

      ),
    );
  }
}
