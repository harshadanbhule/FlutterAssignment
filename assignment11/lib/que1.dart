import 'package:flutter/material.dart';


//import 'assignment1.dart';
void main() {
  runApp(const Assign11());
}

class Assign11 extends StatelessWidget {
  const Assign11({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment11"),

      ),
      body: Container(
        width: double.infinity,
          
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
         
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
      ),
    );
  }
}
