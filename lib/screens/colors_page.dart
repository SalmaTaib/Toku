import 'package:flutter/material.dart';
import 'package:toku_app/models/itemdata.dart';
import 'package:toku_app/Components/item_list.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemData> members = const [
    ItemData(
        name: 'Black',
        nameJ: 'burakku',
        japWrite: '黒',
        image: 'assets/images/colors/color_black.png',
        sounds: 'sounds/colors/black.wav'),
    ItemData(
        name: 'White',
        nameJ: 'shiro',
        japWrite: '白',
        image: 'assets/images/colors/color_white.png',
        sounds: 'sounds/colors/white.wav'),
    ItemData(
        name: 'Brown',
        nameJ: 'chairo',
        japWrite: '茶色',
        image: 'assets/images/colors/color_brown.png',
        sounds: 'sounds/colors/brown.wav'),
    ItemData(
        name: 'Gray',
        nameJ: 'gurē',
        japWrite: '灰色',
        image: 'assets/images/colors/color_gray.png',
        sounds: 'sounds/colors/gray.wav'),
    ItemData(
        name: 'Red',
        nameJ: 'aka',
        japWrite: '赤',
        image: 'assets/images/colors/color_red.png',
        sounds: 'sounds/colors/red.wav'),
    ItemData(
        name: 'Yellow',
        nameJ: 'kiiro',
        japWrite: '黄色',
        image: 'assets/images/colors/yellow.png',
        sounds: 'sounds/colors/yellow.wav'),
    ItemData(
        name: 'Green',
        nameJ: ' midori',
        japWrite: ' 緑',
        image: 'assets/images/colors/color_green.png',
        sounds: 'sounds/colors/green.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 180,
          elevation: 0.0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffFFEEF3),
          title: const Text(
            'Colors - 色',
            style: TextStyle(
                fontFamily: 'Pacifico', fontSize: 35, color: Colors.black),
          ),
        ),
        backgroundColor: const Color(0xffFFEEF3),
        body: ItemList(
          items: members,
          sizee: 20,
        ));
  }
}
