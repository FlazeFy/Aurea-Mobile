import 'package:aurea/core/global/style.dart';
import 'package:aurea/features/dashboard/presentation/ui/molecules/m_next_reminder_card.dart';
import 'package:flutter/material.dart';

class OrganismNextReminderList extends StatelessWidget {
  const OrganismNextReminderList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView(
        padding: const EdgeInsets.all(spaceXXSM),
        scrollDirection: Axis.horizontal,
        children: [
          MoleculeNextReminderCard(),
          MoleculeNextReminderCard()
        ],
      ),
    );
  }
}
