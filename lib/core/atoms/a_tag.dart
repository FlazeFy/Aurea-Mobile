import 'dart:ffi';

import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AtomTag extends StatelessWidget {
  final String text;
  final Color? color;
  final IconData? icon;
  final bool isFilled;

  const AtomTag({super.key, required this.text, this.color, this.icon, this.isFilled = true});

  @override
  Widget build(BuildContext context) {
    final tagColor = color ?? darkColor;

    final backgroundColor = isFilled ? tagColor : whiteColor;
    final borderColor = isFilled ? Colors.transparent : tagColor;
    final textColor = isFilled ? whiteColor : tagColor;

    if (icon == null) {
      return Container(
        padding: const EdgeInsets.symmetric(
          vertical: spaceXSM,
          horizontal: spaceMD,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(roundedMD)),
          border: Border.all(color: borderColor),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: textMD,
            color: textColor,
          ),
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.symmetric(
          vertical: spaceXXSM,
          horizontal: spaceSM,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(roundedMD)),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          spacing: spaceMini,
          mainAxisSize: MainAxisSize.min,
          children: [
            FaIcon(icon, size: textJumbo, color: textColor),
            AtomText(
              text: text,
              type: 'content',
              color: textColor,
            ),
          ],
        ),
      );
    }
  }
}
