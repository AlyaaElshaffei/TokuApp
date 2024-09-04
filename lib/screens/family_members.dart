import 'package:flutter/material.dart';
import 'package:myapp/componants/items.dart';
import 'package:myapp/models/item_class.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<ItemClass> familymembers = const [
    ItemClass(
        image: "assets/images/family_members/family_father.png",
        jpName: "chichioya",
        enName: "father",
        sound: 'sounds/family_members/father.wav'),
    ItemClass(
        image: "assets/images/family_members/family_mother.png",
        jpName: "Hahaoya",
        enName: "mother",
        sound: 'sounds/family_members/mother.wav'),
    ItemClass(
        image: "assets/images/family_members/family_son.png",
        jpName: "Musuko",
        enName: "son",
        sound: 'sounds/family_members/son.wav'),
    ItemClass(
        image: "assets/images/family_members/family_daughter.png",
        jpName: "Musume",
        enName: "daughter",
        sound: 'sounds/family_members/daughter.wav'),
    ItemClass(
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "Nisan",
        enName: "older bother",
        sound: 'sounds/family_members/older bother.wav'),
    ItemClass(
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "Ane",
        enName: "older sister",
        sound: 'sounds/family_members/older sister.wav'),
    ItemClass(
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "otōto",
        enName: "younger brother",
        sound: 'sounds/family_members/younger brohter.wav'),
    ItemClass(
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "Imoto",
        enName: "younger sister",
        sound: 'sounds/family_members/younger sister.wav'),
    ItemClass(
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "Ojisan",
        enName: "Grand Father",
        sound: 'sounds/family_members/grand father.wav'),
    ItemClass(
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "Sobo",
        enName: "Grand Mother",
        sound: 'sounds/family_members/grand mother.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xff46322B),
          title: const Text(
            "FamilyMembers",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: ListView.builder(
          itemCount: familymembers.length,
          itemBuilder: (context, i) => Items(
            item: familymembers[i],
            color: Colors.green,
          ),
        ));
  }
}
