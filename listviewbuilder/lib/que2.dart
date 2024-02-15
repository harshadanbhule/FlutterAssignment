import 'package:flutter/material.dart';

class Que1 extends StatefulWidget {
  const Que1({super.key});

  @override
  State<Que1> createState() => _Que1State();
}

class _Que1State extends State<Que1> {
  List<int> numList = [];

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text(
          "ItemBuilder",
          style: TextStyle(
            color: Colors.blueAccent,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: numList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                margin: const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 203, 135, 135),
                child: Center(child: Text("${numList[index]}",
                style: const TextStyle(
                  
                  fontWeight: FontWeight.w400
                ),
                )),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            numList.add(count);
          });
        },
        child: const Icon(
          Icons.add
        ),
      ),
    );
  }
}
