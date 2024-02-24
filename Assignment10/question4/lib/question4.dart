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
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
       body: Center(
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              height: 80,
              width: 80,
            ),
            SizedBox(width: 30,),
            Container(
              color: Colors.red,
              height: 80,
              width: 80,
            )
          ],
         ),
       ),
      );
  }
}