import 'package:flutter/material.dart';
import 'package:toku_app/Components/category.dart';
import 'package:toku_app/screens/number_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

import 'colors_page.dart';
import 'family_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFEEF3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            children: [
              Spacer(flex: 1),
              Image(
                image: AssetImage('assets/images/Toku.png'),
                width: 70,
              ),
              Text(
                'Welcome to',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                ),
              ),
              Text(
                'Toku',
                style: TextStyle(
                    fontFamily: 'BaiJamjuree',
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Color(0xffff3a9a)),
              ),
              Spacer(flex: 2),
            ],
          ),
          Category(
            text: 'Family  -   家族',
            iconC: Icons.family_restroom,
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyPage();
              }));
            },
          ),
          Category(
            text: 'Numbers  -   数',
            iconC: Icons.format_list_numbered,
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumberPage();
              }));
            },
          ),
          Category(
            text: 'Colors  -   色',
            iconC: Icons.color_lens,
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
          ),
          Category(
            text: 'Phrases  -   語句',
            iconC: Icons.speaker_notes_rounded,
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
