import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models/pharses_model.dart';

class PhrasesComponants extends StatelessWidget {
  const PhrasesComponants({super.key, required this.phrase});
  final PharsesModel phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.blueAccent,
      child:Row(
        children: [
      Padding(padding: const EdgeInsets.only(left: 10),
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       Text(
        phrase.jpText,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      Text(
        phrase.enText,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
        ],),
      ),
       const Spacer(),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(phrase.sound));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ))
        ],),
    );
  }
}
