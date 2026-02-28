import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AtomTag extends StatelessWidget {
  final String text;
  final Color? color;
  final IconData? icon;

  const AtomTag({super.key, required this.text, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    if (icon == null){
      return Container(
        padding: const EdgeInsets.symmetric(vertical: spaceXSM, horizontal: spaceMD),
        decoration: BoxDecoration(
            color: color ?? darkColor,
            borderRadius: const BorderRadius.all(Radius.circular(roundedMD))
        ),
        child: Text(text, style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: textMD
        )),
      );
    } else {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: spaceXXSM, horizontal: spaceSM),
        decoration: BoxDecoration(
            color: color ?? darkColor,
            borderRadius: const BorderRadius.all(Radius.circular(roundedMD))
        ),
        child: Row(
          spacing: spaceMini,
          mainAxisSize: MainAxisSize.min,
          children: [
            FaIcon(icon, size: textJumbo, color: whiteColor,),
            AtomText(text: text, type: 'content', color: whiteColor),
          ],
        )
      );
    }
  }
}
