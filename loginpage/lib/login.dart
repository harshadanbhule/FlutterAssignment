// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'homepage.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
        elevation: 100,
        //shape: const CircleBorder(side: BorderSide(width: 900)),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all((Radius.circular(40)))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'EMAIL',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'PASSEORD',
                prefixIcon: Icon(Icons.password_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style:
                    const ButtonStyle(animationDuration: Duration(seconds: 1)),
                onPressed: () {
                  // Implement your login logic here
                  String email = _emailController.text;
                  String password = _passwordController.text;

                  if (email == "abc" && password == '123') {
                    //  print("you loged in ");
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
                  // Validate credentials, call APIs, etc.
                },
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
