import "package:flutter/material.dart";

class Assign extends StatefulWidget {
  const Assign({super.key});

  @override
  State<Assign> createState() => _AssignState();
}

class _AssignState extends State<Assign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("TextField"),
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    prefixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.mail)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            const BorderSide(color: Colors.orange, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 2))),
              )),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(onPressed: () {}, icon:const Icon(Icons.remove_red_eye),color: Colors.purple,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    )),
              )),
        ],
      )),
    );
  }
}
