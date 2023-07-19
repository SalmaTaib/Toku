import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrase.dart';

class ItemPhrase extends StatelessWidget {
  const ItemPhrase({super.key, required this.item});
  final ItemPh item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(9, 15, 9, 15),
      margin: const EdgeInsets.fromLTRB(25, 15, 25, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(45, 255, 58, 153),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(4, 13),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(14, 20, 15, 20),
              width: 45,
              height: 45,
              child: Image(image: AssetImage(item.image), width: 40)),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.japWrite,
                  style: const TextStyle(
                      color: Color(0xffff3a9a),
                      fontSize: 19,
                      fontFamily: 'ZenAntique'),
                ),
                Text(
                  item.phraseJ,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 158, 158, 158),
                      fontSize: 10,
                      fontFamily: 'BaiJamjuree'),
                ),
                Text(
                  item.phrase,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontFamily: 'BaiJamjuree'),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.volume_up_outlined,
              color: Color.fromARGB(115, 255, 58, 153),
            ),
            onPressed: () async {
              final player = AudioPlayer();

              await player.play(
                  AssetSource(item.sounds)); // will immediately start playing
            },
          ),
        ],
      ),
    );
  }
}
