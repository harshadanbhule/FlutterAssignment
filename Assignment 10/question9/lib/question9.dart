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
       body:Center(
         child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(
                      color: Colors.red,
                      
                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),
               ),
       ),
      );
  }
}
