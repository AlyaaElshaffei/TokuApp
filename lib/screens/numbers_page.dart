import 'package:flutter/material.dart';
import 'package:myapp/componants/items.dart';
import 'package:myapp/models/item_class.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemClass> numbers = const [
    ItemClass(
        image: "assets/images/numbers/number_one.png",
        jpName: "ichi",
        enName: "one",
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemClass(
        image: "assets/images/numbers/number_two.png",
        jpName: "Ni",
        enName: "two",
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemClass(
        image: "assets/images/numbers/number_three.png",
        jpName: "san",
        enName: "three",
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemClass(
        image: "assets/images/numbers/number_four.png",
        jpName: "Shi",
        enName: "four",
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemClass(
        image: "assets/images/numbers/number_five.png",
        jpName: "Go",
        enName: "five",
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemClass(
        image: "assets/images/numbers/number_six.png",
        jpName: "Roku",
        enName: "six",
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemClass(
        image: "assets/images/numbers/number_seven.png",
        jpName: "Sebun",
        enName: "seven",
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemClass(
        image: "assets/images/numbers/number_eight.png",
        jpName: "hachi",
        enName: "eight",
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemClass(
        image: "assets/images/numbers/number_nine.png",
        jpName: "kyu",
        enName: "nine",
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemClass(
        image: "assets/images/numbers/number_ten.png",
        jpName: "ju",
        enName: "ten",
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xff46322B),
          title: const Text(
            "Numbers",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, i) => Items(
            item: numbers[i],
            color: Colors.orangeAccent,
          ),
        ));
  }
}
