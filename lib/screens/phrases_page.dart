import 'package:flutter/material.dart';
import 'package:toku_app/models/phrase.dart';

import '../Components/phrases_list.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemPh> members = const [
    ItemPh(
        phrase: 'Are you coming?',
        phraseJ: 'Kimasu ka?',
        japWrite: '来ますか？',
        sounds: 'sounds/phrases/areyoucoming.wav'),
    ItemPh(
        phrase: 'Yes, I am coming',
        phraseJ: 'Hai, watashi wa ki masu',
        japWrite: 'はい、来ます ',
        sounds: 'sounds/phrases/yesimcoming.wav'),
    ItemPh(
        phrase: 'How are you feeling?',
        phraseJ: 'Go kibun wa ikagadesu ka?',
        japWrite: 'ご気分はいかがですか?',
        sounds: 'sounds/phrases/howareyoufeeling.wav'),
    ItemPh(
        phrase: 'I love anime',
        phraseJ: 'watashi wa anime ga daisukidesu',
        japWrite: '私はアニメが大好きです',
        sounds: 'sounds/phrases/iloveanime.wav'),
    ItemPh(
        phrase: 'I love programming',
        phraseJ: 'Watashi wa puroguramingu ga daisukidesu',
        japWrite: '私はプログラミングが大好きです',
        sounds: 'sounds/phrases/iloveprogramming.wav'),
    ItemPh(
        phrase: 'Programming is easy',
        phraseJ: 'Puroguramingu wa kantandesu',
        japWrite: 'プログラミングは簡単です',
        sounds: 'sounds/phrases/programmingiseasy.wav'),
    ItemPh(
        phrase: 'What is your name?',
        phraseJ: 'Anata no namae wa nandesuka?',
        japWrite: 'あなたの名前は何ですか?',
        sounds: 'sounds/phrases/whatisyourname.wav'),
    ItemPh(
        phrase: 'Where are you going?',
        phraseJ: 'Doko ni iku no?',
        japWrite: 'どこに行くの?',
        sounds: 'sounds/phrases/whereareyougoing.wav'),
    ItemPh(
        phrase: "Don't forget to subscribe",
        phraseJ: 'Kōdoku suru koto o wasurenaide kudasai',
        japWrite: '購読することを忘れないでください',
        sounds: 'sounds/phrases/dontforgettosubscribe.wav'),
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
            'Phrases - 語句',
            style: TextStyle(
                fontFamily: 'Pacifico', fontSize: 35, color: Colors.black),
          ),
        ),
        backgroundColor: const Color(0xffFFEEF3),
        body: PhrasesList(
          items: members,
        ));
  }
}
