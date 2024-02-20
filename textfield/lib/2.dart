import "package:flutter/material.dart";

class Assign extends StatefulWidget {
  const Assign({super.key});

  @override
  State<Assign> createState() => _AssignState();
}

class _AssignState extends State<Assign> {
  var compannyName = TextEditingController();
  var name = TextEditingController();
  var compannyDep = TextEditingController();

  var data = "";
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
            height: 10,
          ),
          SizedBox(
              width: 300,
              child: TextField(
                controller: compannyName,
                decoration: InputDecoration(
                    hintText: "Enter Companny Name",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            const BorderSide(color: Colors.orange, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            const BorderSide(color: Colors.green, width: 2))),
              )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: 300,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            const BorderSide(color: Colors.orange, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            const BorderSide(color: Colors.green, width: 2))),
              )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: 300,
              child: TextField(
                controller: compannyDep,
                decoration: InputDecoration(
                    hintText: "Enter Your Department",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            const BorderSide(color: Colors.orange, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            const BorderSide(color: Colors.green, width: 2))),
              )),
          const SizedBox(
            height: 10,
          ),
           ElevatedButton(
              onPressed: () {
                setState(() {
                  // Concatenate text from all three text fields
                  data = 'Company Name: ${compannyName.text}\n'
                      'Employee Name: ${name.text}\n'
                      'Company Department: ${compannyDep.text}';
                });
              },
              style: ElevatedButton.styleFrom(
                foregroundColor:Colors.white,
                backgroundColor: Colors.green,
              ),
              child: const Text("Print"),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 300,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                )
              ),
        
              padding: const EdgeInsets.all(8),
              child: Text(data),
            ),
          )
        ],
      )),
    );
  }
}
