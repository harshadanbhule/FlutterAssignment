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
            Image.asset(
              
              "assets/images/pexels-chris-g-1643409.jpg",
              height: 150,
              width: 150,
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              
              "assets/images/pexels-eberhard-grossgasteiger-691668.jpg",
              height: 150,
              width: 150,
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              
              "assets/images/pexels-vlad-alexandru-popa-1402787.jpg",
              height: 150,
              width: 150,
            ),
          ],
         ),
       ), 
      );
  }
}


