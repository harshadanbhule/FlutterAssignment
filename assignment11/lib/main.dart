import 'package:flutter/material.dart';
import 'package:assignment11/que1.dart';

//import 'assignment1.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assign11(),
      debugShowCheckedModeBanner: false,
    );
  }
}