import 'package:flutter/material.dart';

class Que1 extends StatefulWidget {
  const Que1({super.key});

  @override
  State<Que1> createState() => _Que1State();
}

class _Que1State extends State<Que1> {
  List <String> images =[
  "https://images.pexels.com/photos/1402787/pexels-photo-1402787.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/325044/pexels-photo-325044.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/36717/amazing-animal-beautiful-beautifull.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ];
  
  @override
  Widget build(BuildContext context) {      
    return Scaffold(
     appBar: AppBar(
      centerTitle: true,
      backgroundColor: Colors.amber,
      title: const Text("ItemBuilder",
      style: TextStyle(
        color: Colors.blueAccent,
      ),
      ),
     ),
     body:ListView.builder(
      itemCount:images.length,
      itemBuilder:(context,index){
        return Container(
          margin: const EdgeInsets.all(10),
          child: Image.network(
            images[index],
          ),

        );

      }
     )
    );
  }
}