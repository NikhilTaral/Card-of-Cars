import 'package:cards/login.dart';
import 'package:flutter/material.dart';


class SignIn extends StatelessWidget {
  const SignIn( {super. key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: Center(
          child: Stack(
            children: [
              Container(
                height: 500,
                width: 360,
                decoration: const BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 14)],
                  color: Colors.white,
                ),
                child: Padding(
                  
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Image.asset('assets/images/logo.png',),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Create New Account',
                        style: TextStyle(fontSize: 35,color: Colors.grey,),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Email Id',
                        ),
                      ),
                      const SizedBox(height: 15),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                        ),
                      ),
                      const SizedBox(height: 15),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 120,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.blue,
                                backgroundColor: Colors.white,
                                shadowColor: Colors.grey,
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Create',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          SizedBox(
                            width: 120,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue,
                                shadowColor: Colors.lightBlue,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Login(),
                                  ),
                                );
                              },
                              child: const Text('Login'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// setState(() {
       //                       _emailController.text.isEmpty ||
                                      // !_emailController.text.contains('@') ||
                                      // _passwordController.text.isEmpty
                                  // ? _validate = true
        //  /                         : _validate = false;
                            // });