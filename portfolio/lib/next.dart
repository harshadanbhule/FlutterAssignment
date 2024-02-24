import 'package:flutter/material.dart';

class Assign1 extends StatelessWidget {
  const Assign1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(78, 43, 1, 1),
        title: const Text(
          "Portfolio",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 234, 231, 227),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.8,
                0.9,
              ],
              colors: [
                Color.fromARGB(215, 169, 68, 0),
                Color.fromARGB(195, 224, 154, 23),
                Color.fromARGB(185, 219, 203, 144),
                Color.fromARGB(66, 171, 114, 114),
              ],
            ),
            ),
        
      ),
    );
  }
}
