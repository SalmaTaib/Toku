import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, this.text, this.iconC, this.ontap});
  final String? text;
  final IconData? iconC;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shadowColor: const Color(0xffff3a9a),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      margin: const EdgeInsets.fromLTRB(30, 30, 30, 10),
      child: GestureDetector(
        onTap: ontap,
        child: ListTile(
          leading: Icon(
            iconC,
            color: const Color(0xffff3a9a),
          ),
          title: Text(
            text!,
            style: const TextStyle(
                fontFamily: 'BaiJamjuree',
                fontWeight: FontWeight.w600,
                fontSize: 17),
          ),
        ),
      ),
    );
  }
}
