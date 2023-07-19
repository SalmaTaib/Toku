import 'package:flutter/material.dart';
import 'package:toku_app/models/itemdata.dart';
import 'package:toku_app/Components/item_list.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  final List<ItemData> members = const [
    ItemData(
        name: 'Daughter',
        nameJ: 'musume',
        japWrite: '娘',
        image: 'assets/images/family_members/family_daughter.png',
        sounds: 'sounds/family_members/daughter.wav'),
    ItemData(
        name: 'Father',
        nameJ: 'chichioya',
        japWrite: '父親',
        image: 'assets/images/family_members/family_father.png',
        sounds: 'sounds/family_members/father.wav'),
    ItemData(
        name: 'Grandfather',
        nameJ: 'ojisan',
        japWrite: '祖父',
        image: 'assets/images/family_members/family_grandfather.png',
        sounds: 'sounds/family_members/grandfather.wav'),
    ItemData(
        name: 'grandmother',
        nameJ: 'sobo',
        japWrite: '祖母',
        image: 'assets/images/family_members/family_grandmother.png',
        sounds: 'sounds/family_members/grandmother.wav'),
    ItemData(
        name: 'mother',
        nameJ: 'haha',
        japWrite: '母',
        image: 'assets/images/family_members/family_mother.png',
        sounds: 'sounds/family_members/mother.wav'),
    ItemData(
        name: 'Older brother',
        nameJ: 'ani',
        japWrite: '兄',
        image: 'assets/images/family_members/family_older_brother.png',
        sounds: 'sounds/family_members/olderbrother.wav'),
    ItemData(
        name: 'Older sister',
        nameJ: 'ane',
        japWrite: '姉',
        image: 'assets/images/family_members/family_older_sister.png',
        sounds: 'sounds/family_members/oldersister.wav'),
    ItemData(
        name: 'Younger brother',
        nameJ: 'otōto',
        japWrite: '弟',
        image: 'assets/images/family_members/family_younger_brother.png',
        sounds: 'sounds/family_members/youngerbrother.wav'),
    ItemData(
        name: 'Younger Sister',
        nameJ: 'imōto',
        japWrite: '妹',
        image: 'assets/images/family_members/family_younger_sister.png',
        sounds: 'sounds/family_members/youngersister.wav'),
    ItemData(
        name: 'Son',
        nameJ: 'musuko',
        japWrite: '息子',
        image: 'assets/images/family_members/family_son.png',
        sounds: 'sounds/family_members/son.wav'),
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
            'Family - 家族',
            style: TextStyle(
                fontFamily: 'Pacifico', fontSize: 35, color: Colors.black),
          ),
        ),
        backgroundColor: const Color(0xffFFEEF3),
        body: ItemList(
          items: members,
          sizee: 15,
        ));
  }
}
