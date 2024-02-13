import 'package:flutter/material.dart';

class Que1 extends StatelessWidget {
  const Que1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: Colors.blue,width: 5,
            ),
            gradient: const LinearGradient(
              stops: [0.3,0.5],
              colors: [Colors.red,Colors.green])
          ),
          
        ),
      ),
    );
  }
}