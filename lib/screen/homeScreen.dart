import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List plantPic = [
    "assets/mango.jpg",
    "assets/neem.jpg",
    "assets/bamboo.jpg",
    "assets/ginger.jpg"
  ];
  List plantName = ["Mango", "Neem", "Bamboo", "Ginger"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("Welcome to\n   plants application",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                Container(
                    child: FaIcon(FontAwesomeIcons.tree,
                        size: 50,
                        color: const Color.fromARGB(255, 166, 215, 167)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 166, 215, 167),
                  boxShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(255, 214, 214, 214),
                        blurRadius: 10,
                        spreadRadius: 2)
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        child: FaIcon(FontAwesomeIcons.faceSmile,
                            size: 30,
                            color: const Color.fromARGB(255, 255, 255, 255))),
                    Text(
                      "Getting many kinds of plant\nfrom our application",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                        child: FaIcon(FontAwesomeIcons.faceSmile,
                            size: 30,
                            color: const Color.fromARGB(255, 255, 255, 255))),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 360,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: plantPic.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 214, 214, 214),
                                blurRadius: 10,
                                spreadRadius: 2),
                          ],
                          color: const Color.fromARGB(255, 239, 239, 239)),
                      child: Stack(
                        children: [
                          Container(
                            height: 300,
                            width: 300,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Container(
                                child: Image.asset(
                                  plantPic[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(plantName[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ],
                      ));
                }),
          )
        ],
      ),
    ));
  }
}
