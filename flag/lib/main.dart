import 'package:flutter/material.dart';
import 'package:flag/flag.dart';

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