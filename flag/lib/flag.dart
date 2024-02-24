
import 'package:flutter/material.dart';

//import 'assignment1.dart';
void main() {
int ? x = 10;
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
        
        body: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
           
            children: [
              Container(
                height: 100,
                width: 400,
                color: Colors.orange,
          
              ),
              Container(
                height: 100,
                width: 400,
                color: Colors.white,
                child: Image.asset(
                  "assets/images/pngfind.com-lion-png-hd-119021.png",
                ),
              ),
              Container(
                height: 100,
                width: 400,
                color: Colors.green,
                
              )
          
            ],
          ),
        ),
      
    );
  }
}
