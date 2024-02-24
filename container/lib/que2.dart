import 'package:flutter/material.dart';

class Que1 extends StatelessWidget {
  const Que1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10
        ),
        child: Container(
          
            height: 200,
            width: 200,
            color: Colors.red,
          
        ),
      ),
    );
  }
}