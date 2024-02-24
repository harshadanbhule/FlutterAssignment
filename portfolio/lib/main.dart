
import 'package:flutter/material.dart';
import'package:portfolio/portfolio.dart';

//import 'assignment1.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assign15(),
      debugShowCheckedModeBanner: false,
    );
  }
}