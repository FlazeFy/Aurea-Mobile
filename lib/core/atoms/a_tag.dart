import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';

class AtomTag extends StatelessWidget {
  final String text;
  final Color? color;

  const AtomTag({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: spaceXSM, horizontal: spaceMD),
      decoration: BoxDecoration(
        color: color ?? darkColor,
        borderRadius: const BorderRadius.all(Radius.circular(roundedMD))
      ),
      child: Text(text, style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: textMD
      )),
    );
  }
}
