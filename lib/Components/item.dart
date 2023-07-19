import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/itemdata.dart';

class ItemJap extends StatelessWidget {
  const ItemJap({super.key, required this.item, required this.sizee});
  final ItemData item;
  final double sizee;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: const Color(0xffFFEEF3)),
              child: Image(image: AssetImage(item.image), width: 70)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.japWrite,
                style: const TextStyle(
                    color: Color(0xffff3a9a),
                    fontSize: 26,
                    fontFamily: 'ZenAntique'),
              ),
              Text(
                item.nameJ,
                style: const TextStyle(
                    color: Color.fromARGB(255, 158, 158, 158),
                    fontSize: 12,
                    fontFamily: 'BaiJamjuree'),
              ),
            ],
          ),
          Text(
            item.name,
            style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: sizee,
                fontFamily: 'BaiJamjuree'),
          ),
          IconButton(
            icon: const Icon(Icons.volume_up_outlined,
                color: Color.fromARGB(115, 255, 58, 153)),
            onPressed: () async {
              final player = AudioPlayer();

              // await player.setSource(AssetSource('assets/sounds/colors/grey.wav'));
              await player.play(
                  AssetSource(item.sounds)); // will immediately start playing
            },
          ),
        ],
      ),
    );
  }
}
