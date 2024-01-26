
import 'package:flutter/material.dart';
class Assignment10 extends StatelessWidget{
  const Assignment10({super.key});
  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Center(
            child: Text ("Hello Core2web",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          
        ),
       
        
        body:Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 100,
            height: 100,
            child: Container(
              color: Colors.red,
            ),
          ),

        ),
       
       
      );
  }
}
