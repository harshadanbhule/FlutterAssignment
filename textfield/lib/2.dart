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

  var compname = "";
  var empname = "";
  var compdep = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text("TextField",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800
        ),
        ),
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
                compname = 'Company Name: ${compannyName.text}';
                empname = 'Employee Name: ${name.text}';
                compdep = 'Company Department: ${compannyDep.text}';
              });
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
            ),
            child: const Text("Print",
            style: TextStyle(
              fontSize: 20
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 170,
              width: 350,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        compname,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        empname,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        compdep,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
