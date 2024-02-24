import 'package:flutter/material.dart';


//import 'assignment1.dart';
void main() {
  runApp(const Assign12());
}

class Assign12 extends StatelessWidget {
  const Assign12({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment11"),

      ),
      body: Column(
       
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,

          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            
          )

        ],
      ),
    );
  }
}
