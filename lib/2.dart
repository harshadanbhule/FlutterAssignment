import "package:flutter/material.dart";

class Assign extends StatefulWidget {
  const Assign({super.key});

  @override
 State<Assign> createState() => _AssignState();
}

class _AssignState extends State<Assign> {
  var companyName = TextEditingController();
  var name = TextEditingController();
  var companyDep = TextEditingController();

  List<String> employeeInfos = [ ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          "TextField",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
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
                controller: companyName,
                decoration: InputDecoration(
                  hintText: "Enter Company Name",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.orange, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              ),
            ),
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
                    borderSide: const BorderSide(color: Colors.orange, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: companyDep,
                decoration: InputDecoration(
                  hintText: "Enter Your Department",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.orange, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Concatenate text from all three text fields
                  String info = 'Company Name: ${companyName.text}\n'
                      'Employee Name: ${name.text}\n'
                      'Company Department: ${companyDep.text}\n';
                  employeeInfos.add(info);
                });
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
              ),
              child: const Text(
                "Add Employee",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: employeeInfos.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        employeeInfos[index],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}