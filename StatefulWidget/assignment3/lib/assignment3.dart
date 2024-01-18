
import 'package:flutter/material.dart';
class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});
  @override
  State<Assignment5> createState() => _Assignment3State();
}
class _Assignment3State extends State<Assignment5> {
  int? selectIndex = 0;
  final List<String> imageList = [
    "https://images.unsplash.com/photo-1682687982141-0143020ed57a?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1705222594042-90f8f7280750?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1682687980976-fec0915c6177?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1705179910388-0dfc2c21a3f9?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ];
  void showNextImage() {
    setState(() {
      selectIndex = selectIndex! + 1;
      print(selectIndex);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Images"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectIndex!],
              height: 300,
              width: 300,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showNextImage();
              },
              child: const Text("Next"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectIndex = 0;
                });
              },
              child: const Text("RESET"),
            ),
          ],
        ),
      ),
    );
  }
}
