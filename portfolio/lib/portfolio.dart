import 'package:flutter/material.dart';
import 'next.dart';

class Assign15 extends StatelessWidget {
  const Assign15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(78, 43, 1, 1),
        title: const Text(
          "Portfolio",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 234, 231, 227),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.8,
                0.9,
              ],
              colors: [
                Color.fromARGB(215, 169, 68, 0),
                Color.fromARGB(195, 224, 154, 23),
                Color.fromARGB(185, 219, 203, 144),
                Color.fromARGB(66, 171, 114, 114),
              ],
            ),
            ),
        child: ListView(
          
          children: [
            
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromRGBO(78, 43, 1, 1),
                      ),
                      height: 40,
                      width: 350,
                      child: const Center(
                        child: Text(
                          "Name: Harshad Vinayak Anbhule",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 400,
                    width: 400,
                    child: Image.asset(
                      "assets/images/WhatsApp Image 2024-01-29 at 02.18.46_c768a715.jpg",
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                       color: Color.fromRGBO(78, 43, 1, 1),
                      ),
                      height: 40,
                      width: 600,
                      child: const Center(
                        child: Text(
                          "College Name: Smt.Kashibai Navle College Of Engineering,Pune",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 400,
                    width: 400,
                    child: Image.network(
                        "https://media.licdn.com/dms/image/C510BAQE6t2jAlgA0Gw/company-logo_200_200/0/1630590513407?e=1714608000&v=beta&t=xqoteYwg1KQhL80UWWwHEDsLw-pL_4qZB9218CaHj6Q"),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromRGBO(78, 43, 1, 1),
                      ),
                      height: 40,
                      width: 300,
                      child: const Center(
                        child: Text(
                          "Dream Company: Google",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 400,
                    width: 400,
                    child: Image.network(
                        "https://1000logos.net/wp-content/uploads/2021/05/Google-logo-768x432.png"),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding here
                    
                      child:  Center(
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Assign1()));

                        }, child: const Text("Next",
                        style: TextStyle(
                          color: Colors.black
                        ),
                        )),
                      ),
                    ),
                  ),
                
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
