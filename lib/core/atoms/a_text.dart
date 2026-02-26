import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';

class AtomText extends StatelessWidget {
  final String text;
  final String type;

  const AtomText({super.key, required this.text, required this.type});

  @override
  Widget build(BuildContext context) {
    final fontSize = type == "summary-number" ? textJumbo
        : type == "content-title" ? textLG
        : textXMD;
    final fontWeight = type == "summary-number" ? FontWeight.w800
        : type == "content-title" ? FontWeight.w600
        : FontWeight.w400;

    return Text(text,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight)
    );
  }
}