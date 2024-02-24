
import'package:flutter/material.dart';
class assign1 extends StatelessWidget {
  const assign1({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Margin&Padding",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),)
          ,backgroundColor: Colors.black,
          
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 400,
            color: Colors.amber,
            child: Container(
              color: Colors.blueGrey,
              padding:const EdgeInsets.all(20),//padding is use for outer side
              margin: const EdgeInsets.all(30),
              child: ClipOval(
              child: Image.asset('assets/images/pexels-guillaume-meurice-1544376.jpg',
              fit: BoxFit.cover,
              width: 200,
              height: 200,
              ),
            ),
            ),
          ),
        ),
    );
  }
}
