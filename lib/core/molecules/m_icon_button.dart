import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoleculeIconButton extends StatelessWidget {
  final String title;
  final IconData icon;

  const MoleculeIconButton({
    super.key,
    required this.title,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: spaceSM),
      padding: const EdgeInsets.only(bottom: spaceXXSM, left: spaceXMD, right: spaceXMD, top: spaceXMD),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(roundedMD)),
          boxShadow: [
            BoxShadow(
              color: darkColor.withOpacity(0.125),
              blurRadius: 6.0,
              spreadRadius: 0.0,
              offset: const Offset(
                1.0, 1.0,
              ),
            )
          ],
      ),
      child: Column(
        children: [
          FaIcon(icon, color: pinkColor),
          const SizedBox(height: spaceSM),
          AtomText(text: title, type: "content-title")
        ],
      )
    );
  }
}