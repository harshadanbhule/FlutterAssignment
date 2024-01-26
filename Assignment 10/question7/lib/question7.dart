import 'package:flutter/material.dart';

class Assignment10 extends StatelessWidget {
  const Assignment10({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Center(
          child: Text(
            "Hello Core2web",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 80,
              ),
              Image.network(
                "https://images.unsplash.com/photo-1698705486918-9b463adaaae4?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                width: 150,
                height: 300,
              ),
              SizedBox(
                width: 80,
              ),
              Image.network(
                "https://images.unsplash.com/photo-1703746969548-29e4a56fd8a5?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                width: 150,
                height: 300,
              ),
              SizedBox(
                width: 80,
              ),
              Image.network(
                "https://images.unsplash.com/photo-1634848860108-6d8368f5a0b3?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                width: 150,
                height: 300,
              ),
              SizedBox(
                width: 80,
              ),
              Image.network(
                "https://images.unsplash.com/photo-1701338678701-c053ba5d6ee1?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                width: 150,
                height: 300,
              ),
              SizedBox(
                width: 80,
              ),
              Image.network(
                "https://images.unsplash.com/photo-1703002917693-e51692232c81?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                width: 150,
                height: 300,
              ),
              SizedBox(
                width: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
