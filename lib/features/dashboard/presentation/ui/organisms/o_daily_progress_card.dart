import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';

class OrganismDailyProgressCard extends StatelessWidget {
  const OrganismDailyProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: spaceXSM, horizontal: spaceMD),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(roundedLG)),
          color: lightSuccessColor
      ),
      padding: const EdgeInsets.all(spaceXMD),
      child: const Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AtomText(text: 'Daily Progress', type: 'content-title'),
              AtomText(text: "You've completed 5/8 steps today!", type: 'content'),
            ],
          ),
          Spacer(),
          AtomText(text: '62%', type: 'summary-number'),
        ],
      ),
    );
  }
}
