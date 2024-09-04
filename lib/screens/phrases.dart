import 'package:flutter/material.dart';
import 'package:myapp/componants/phrases_componants.dart';
import 'package:myapp/models/pharses_model.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});
  final List<PharsesModel> phrasesList = const [
    PharsesModel(
      jpText: "Codoku suru koto o wasurenaide kudassi",
      enText: 'Dont forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    PharsesModel(
        jpText: "Watashi wa Puroguramingu ga daisuki desu ",
        enText: "I love programming",
        sound: "sounds/phrases/i_love_programming.wav"),
    PharsesModel(
        jpText: "Puroguramingu wa kantan desu",
        enText: "programming is easy",
        sound: "sounds/phrases/programming_is_easy.wav"),
    PharsesModel(
        jpText: "Doko ni iku no",
        enText: "Where are you going",
        sound: "sounds/phrases/where_are_you_going.wav"),
    PharsesModel(
        jpText: "Onamae wa nan desu ka",
        enText: "What is your name",
        sound: "sounds/phrases/what_is_your_name.wav"),
    PharsesModel(
        jpText: "Anime ga daisuki desu",
        enText: "I love anime",
        sound: "sounds/phrases/i_love_anime.wav"),
    PharsesModel(
        jpText: "Kibun wa dō desu ka",
        enText: "How are you felling",
        sound: "sounds/phrases/how_are_you_feeling.wav"),
    PharsesModel(
        jpText: "Kimasu ka", 
        enText: "Are you comming", 
        sound: "sounds/phrases/are_you_coming.wav"),
    PharsesModel(
        jpText: "Hai,ikimasu", 
        enText: "Yes i am comming", 
        sound: "sounds/phrases/yes_im_coming.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          "Phrases",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, i) => PhrasesComponants(
          phrase: phrasesList[i],
          
        ),
      ),
    );
  }
}
