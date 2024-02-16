import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assign()
      );
  }
}

class Assign extends StatefulWidget {
  const Assign({super.key});
  

  @override
  State<Assign> createState() => _AssignState();
}

class _AssignState extends State<Assign> {

  List player = [
    [
      "https://wallpapers.com/images/hd/rohit-sharma-smiling-for-national-team-9rhw30lxb71cpav6.jpg",
      "https://e1.pxfuel.com/desktop-wallpaper/776/106/desktop-wallpaper-24-hardik-pandya-ipl-hardik-pandya-ipl.jpg",
      "https://i.pinimg.com/originals/ac/0b/f1/ac0bf1b1f9450b562fb3b208f228aade.jpg",
      "https://cdn6.aptoide.com/imgs/1/9/1/191d837314c910bf183e0a0fc76d5cdd_screen.png"
    ], //MEN'S ODI CRICKET TEAM
    [
      "https://wallpapers.com/images/hd/rohit-sharma-smiling-for-national-team-9rhw30lxb71cpav6.jpg",
      "https://i.pinimg.com/originals/ac/0b/f1/ac0bf1b1f9450b562fb3b208f228aade.jpg",
      "https://wallpapercave.com/wp/wp4484880.jpg",
      "https://e0.pxfuel.com/wallpapers/12/567/desktop-wallpaper-happy-birtay-ajinkya-rahane-here-are-5-unique-records-held-thumbnail.jpg"
    ], //MEN'S TEST CRICKET TEAM
    [
      "https://wallpapers.com/images/hd/rohit-sharma-smiling-for-national-team-9rhw30lxb71cpav6.jpg",
      "https://i.pinimg.com/originals/ac/0b/f1/ac0bf1b1f9450b562fb3b208f228aade.jpg",
      "https://cdn6.aptoide.com/imgs/1/9/1/191d837314c910bf183e0a0fc76d5cdd_screen.png",
      "https://e1.pxfuel.com/desktop-wallpaper/576/742/desktop-wallpaper-kl-rahul-lokesh-rahul-thumbnail.jpg"
    ], //MEN'S T20 CRICKET TEAM
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black54,
        title: const Text(
          "Assignment",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.separated(
        itemCount: player.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  index == 0 ? "ODI Team" : index == 1 ? "Test Team" : "T20 Team",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              for (int i = 0; i < player[index].length; i++)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Center(child: Image.network(player[index][i])),
                ),
            ],
          );
        },
      ),
    );
  }
}
