// ignore_for_file: library_private_types_in_public_api

import 'package:cards/test.dart';
import 'package:flutter/material.dart';
import 'package:cards/Signin.dart'; // Import the HomePage or any other page you want to navigate to after successful login

class Login extends StatefulWidget {
  const Login({super. key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // ignore: unused_field
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 120,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                      )
                    ],
                    color: Colors.white,
                  ),
                  width: 400,
                  height: 390,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Log in Cars',
                        style: TextStyle(fontSize: 25),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Email Address or Phone Number',
                            labelStyle:
                                TextStyle(color: Colors.grey, fontSize: 14),
                            border: OutlineInputBorder(),
                          ),
                          validator: (text) {
                            if (text != null && text.isNotEmpty) {
                              if (!text.contains('@')) {
                                return 'Enter a valid email address';
                              }
                            } else {
                              return 'Please enter your email address';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            labelStyle:
                                TextStyle(color: Colors.grey, fontSize: 14),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 40,
                        width: 250,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.red.shade400,
                            elevation: 5,
                          ),
                          onPressed: () {
                            // Check if email contains '@' and password contains special character
                            if (_emailController.text.contains('@') && _passwordController.text.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                              // Navigate to home page
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Test(), // Replace HomePage with your actual home page
                                ),
                              );
                            } else {
                              // If conditions are not met, show an alert dialog
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Invalid Data'),
                                  content: Text('Please enter valid email and password.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(); // Close the dialog
                                      },
                                      child: Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                          child: const Text(
                            'Log in',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          const Center(
                            child: SizedBox(
                              child: InkWell(
                                child: Text(
                                  ' Forgotten Password?',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: SizedBox(
                              child: InkWell(
                                child: const Text(
                                  ' Sign up for Cars',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignIn(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
