// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class SignUpPage extends StatefulWidget {
//   final VoidCallback showLoginPage;
//   const SignUpPage({super.key, required this.showLoginPage});
//
//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }
//
// class _SignUpPageState extends State<SignUpPage> {
//
//   // test controllers
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//
//   Future signUp() async {
//     await FirebaseAuth.instance.createUserWithEmailAndPassword(
//       email: _emailController.text.trim(),
//       password: _passwordController.text.trim(),
//     );
//   }
//
// // dispose items when not in use
//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(height: 25),
//             Text('Hello There!',
//               style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text('Register below with your details',
//               style: TextStyle(fontSize: 15),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(22),
//                   color: Colors.grey[200],
//                   border: Border.all(color: Colors.white),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextField(
//                     // controller: _emailController,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Email',
//                       // prefixIcon: Icon(Icons.email),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(22),
//                   color: Colors.grey[200],
//                   border: Border.all(color: Colors.white),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextField(
//                     // controller: _passwordController,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Password',
//                       // prefixIcon: Icon(Icons.password),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(22),
//                   color: Colors.grey[200],
//                   border: Border.all(color: Colors.white),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextField(
//                     // controller: _passwordController,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Confirm Password',
//                       // prefixIcon: Icon(Icons.password),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//             // sign out button
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: GestureDetector(
//                 onTap: signUp,
//                 child: Container(
//                   height: 50,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(22),
//                     color: Colors.deepPurple,
//                     // border: Border.all(color: Colors.white),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Sign Up',
//                       style: TextStyle(
//                           fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('I am a member!',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 GestureDetector(
//                   onTap: widget.showLoginPage,
//                   child: Text('Login now',
//                     style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ],
//             )
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  final VoidCallback showLoginPage;

  const SignUpPage({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Use TextEditingController for email and password
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      // If registration is successful, navigate to the home page or perform any necessary action.
    } catch (e) {
      // Handle registration failures (e.g., email already in use, weak password, etc.)
      print("Error during registration: $e");
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            Text(
              'Hello There!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Register below with your details',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
            // Use TextField with controllers
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Use TextField with controllers and obscureText for password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),
            // Add a confirm password field if necessary
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Confirm Password',
                    ),
                  ),
                ),
              ),
            ),
            // Sign up button
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: signUp,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Login link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'I am a member!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: widget.showLoginPage,
                  child: Text(
                    'Login now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

