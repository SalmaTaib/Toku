import 'package:flutter/material.dart';
import 'package:toku_app/Components/phrase_item.dart';
import 'package:toku_app/models/phrase.dart';

class PhrasesList extends StatelessWidget {
  const PhrasesList({
    super.key,
    required this.items,
  });
  final List<ItemPh> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ItemPhrase(
          item: items[index],
        );
      },
      itemCount: items.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    );
  }
}
