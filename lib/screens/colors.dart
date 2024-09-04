import 'package:flutter/material.dart';
import 'package:myapp/componants/items.dart';
import 'package:myapp/models/item_class.dart';

class Colors1 extends StatelessWidget {
  const Colors1({super.key});

  final List<ItemClass> colors = const [
    ItemClass(
        image: "assets/images/colors/color_black.png",
        jpName: "Burakku",
        enName: "black",
        sound: 'sounds/colors/black.wav'),
    ItemClass(
        image: "assets/images/colors/color_brown.png",
        jpName: "Chairo",
        enName: "brown",
        sound: 'sounds/colors/brown.wav'),
    ItemClass(
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "Hokori ppoi kiiro",
        enName: "dusty yellow",
        sound: 'sounds/colors/dusty yellow.wav'),
    ItemClass(
        image: "assets/images/colors/color_gray.png",
        jpName: "Gure",
        enName: "gray",
        sound: 'sounds/colors/gray.wav'),
    ItemClass(
        image: "assets/images/colors/color_green.png",
        jpName: "Midori",
        enName: "green",
        sound: 'sounds/colors/green.wav'),
    ItemClass(
        image: "assets/images/colors/color_red.png",
        jpName: "Aka",
        enName: "red",
        sound: 'sounds/colors/red.wav'),
    ItemClass(
        image: "assets/images/colors/color_white.png",
        jpName: "Shiroi",
        enName: "white",
        sound: 'sounds/colors/white.wav'),
    ItemClass(
        image: "assets/images/colors/yellow.png",
        jpName: "kiiro",
        enName: "yellow",
        sound: 'sounds/colors/yellow.wav'),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xff46322B),
          title: const Text(
            "Colors",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, i) => Items(
            item: colors[i],
            color: Colors.purple,
          ),
        ));
  }
}
