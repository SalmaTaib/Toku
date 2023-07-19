import 'package:flutter/material.dart';
import 'package:toku_app/models/itemdata.dart';
import 'package:toku_app/Components/item_list.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  final List<ItemData> numbers = const [
    ItemData(
        name: 'One',
        nameJ: 'ichi',
        japWrite: '一',
        image: 'assets/images/numbers/number_one.png',
        sounds: 'sounds/numbers/number_one_sound.mp3'),
    ItemData(
        name: 'Two',
        nameJ: 'ni',
        japWrite: '二',
        image: 'assets/images/numbers/number_two.png',
        sounds: 'sounds/numbers/number_two_sound.mp3'),
    ItemData(
        name: 'Three',
        nameJ: 'san',
        japWrite: '三',
        image: 'assets/images/numbers/number_three.png',
        sounds: 'sounds/numbers/number_three_sound.mp3'),
    ItemData(
        name: 'Four',
        nameJ: 'yon',
        japWrite: '四',
        image: 'assets/images/numbers/number_four.png',
        sounds: 'sounds/numbers/number_four_sound.mp3'),
    ItemData(
        name: 'Five',
        nameJ: 'go',
        japWrite: '五',
        image: 'assets/images/numbers/number_five.png',
        sounds: 'sounds/numbers/number_five_sound.mp3'),
    ItemData(
        name: 'Six',
        nameJ: 'roku',
        japWrite: '六',
        image: 'assets/images/numbers/number_six.png',
        sounds: 'sounds/numbers/number_six_sound.mp3'),
    ItemData(
        name: 'Seven',
        nameJ: 'nana',
        japWrite: '七',
        image: 'assets/images/numbers/number_seven.png',
        sounds: 'sounds/numbers/number_seven_sound.mp3'),
    ItemData(
        name: 'Eight',
        nameJ: 'hachi',
        japWrite: '八',
        image: 'assets/images/numbers/number_eight.png',
        sounds: 'sounds/numbers/number_eight_sound.mp3'),
    ItemData(
        name: 'Nine',
        nameJ: 'kyū',
        japWrite: '九',
        image: 'assets/images/numbers/number_nine.png',
        sounds: 'sounds/numbers/number_nine_sound.mp3'),
    ItemData(
        name: 'Ten',
        nameJ: 'jū',
        japWrite: '十',
        image: 'assets/images/numbers/number_ten.png',
        sounds: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: const Color(0xffFFEEF3),
          automaticallyImplyLeading: false,
          title: const Text(
            'Numbers - 数',
            style: TextStyle(
                fontFamily: 'Pacifico', fontSize: 35, color: Colors.black),
          ),
        ),
        backgroundColor: const Color(0xffFFEEF3),
        body: ItemList(
          items: numbers,
          sizee: 20,
        ));
  }
}
