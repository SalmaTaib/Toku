import 'package:flutter/material.dart';
import 'package:toku_app/Components/item.dart';
import 'package:toku_app/models/itemdata.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.items, required this.sizee});
  final List<ItemData> items;
  final double sizee;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ItemJap(
          item: items[index],
          sizee: sizee,
        );
      },
      itemCount: items.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    );
  }
}
