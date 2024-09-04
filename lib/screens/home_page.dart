import 'package:flutter/material.dart';
import 'package:myapp/componants/container_item.dart';
import 'package:myapp/screens/colors.dart';
import 'package:myapp/screens/family_members.dart';
import 'package:myapp/screens/numbers_page.dart';
import 'package:myapp/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Column(children: [
        ContainerItem(
          text: "Numbers",
          color: Colors.orangeAccent,
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NumbersPage(),
                ));
          },
        ),
        ContainerItem(
          text: "Family Members",
          color: Colors.green,
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FamilyMembers(),
                ));
          },
        ),
        ContainerItem(
          text: "Colors",
          color: Colors.purple,
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Colors1(),
                ));
          },
        ),
        ContainerItem(
          text: "Phrases",
          color: Colors.blueAccent,
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Phrases(),
                ));
          },
        ),
      ]),
    );
  }
}
