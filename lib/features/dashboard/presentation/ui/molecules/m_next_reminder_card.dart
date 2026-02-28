import 'package:aurea/core/atoms/a_tag.dart';
import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';

class MoleculeNextReminderCard extends StatelessWidget {
  const MoleculeNextReminderCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.75,
      margin: const EdgeInsets.symmetric(vertical: spaceXSM, horizontal: spaceMD),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(roundedLG)),
          color: lightWarningColor
      ),
      padding: const EdgeInsets.all(spaceXMD),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AtomText(text: "Reminder!", type: 'content-title'),
          AtomText(text: "Facial whitetening treatment", type: 'content'),
          SizedBox(height: spaceSM),
          Wrap(
            spacing: spaceXSM,
            runSpacing: spaceXSM,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              AtomTag(
                text: '24 Jun 2026', icon: Icons.calendar_month, color: pinkColor,
              ),
              AtomTag(
                text: '10:30', icon: Icons.alarm, color: pinkColor,
              ),
              AtomTag(
                text: 'Vorta Beauty', icon: Icons.location_pin, color: pinkColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}
