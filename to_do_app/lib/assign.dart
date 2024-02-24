import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});
  @override
  State createState() => _AssignmentState();
}

class _AssignmentState extends State {
  List<Color?> colorList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];

  int colorindex = -1;
  int count = 1;

  Color? boxColor() {
    if (colorindex == colorList.length - 1) {
      colorindex = 0;
    } else {
      colorindex++;
    }

    return colorList[colorindex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "To-do-list",
          style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              height: 32.5,
              color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        onPressed: () {
          setState(() {});
        },
        shape: const CircleBorder(), 
        elevation: 6,
        child: const Icon(Icons.add,size: 40,),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int count) {
        return Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                color: boxColor(), //colorList[colorindex],
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                      color: Colors.grey, offset: Offset(0, 8), blurRadius: 20),
                ],
              ),
              width: 380,
              //color: colorList[index],
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 70,
                        width: 70,

                        margin: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.07),
                              offset: Offset(0, 0),
                              blurRadius: 10),
                        ], color: Colors.white, shape: BoxShape.circle),
                        // padding: const EdgeInsets.all(6.0),

                        child: Image.asset(
                          "assets/images/Group 42.png",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "10 July 2023",
                          style: GoogleFonts.quicksand(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(132, 132, 132, 1)),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Lorem Ipsum is simply setting industry.",
                        style: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Simply dummy text of the printing and typesetting \n industry. Lorem Ipsum has been the industry's\n standard dummy text ever since the 1500s",
                        style: GoogleFonts.quicksand(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(84, 84, 84, 1),
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 190,
                          ),
                          SizedBox(
                              width: 10,
                              height: 13,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.create_outlined,
                                ),
                                color: const Color.fromRGBO(0, 139, 148, 1),
                              )),
                              const SizedBox(
                                width: 25,
                              ),
                          SizedBox(
                              width: 10,
                              height: 13,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.delete_outlined,
                                ),
                                color: const Color.fromRGBO(0, 139, 148, 1),
                              )),

                        ],

                      ),
                      const SizedBox(
                    height: 10,
                  )
                    ],
                  ),
                  
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
