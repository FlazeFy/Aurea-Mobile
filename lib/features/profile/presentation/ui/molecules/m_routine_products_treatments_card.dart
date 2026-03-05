import 'package:aurea/core/atoms/a_tag.dart';
import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:aurea/features/profile/presentation/ui/molecules/m_allergics_sensitives_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoleculeRoutineProductsTreatmentsCard extends StatelessWidget {
  const MoleculeRoutineProductsTreatmentsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AtomText(text: 'Routine Products & Treatments', type: 'content-title'),
        AtomText(text: "Daily : Product A", type: 'content'),
        AtomText(text: "Weekly : Product B, and Product C", type: 'content'),
        AtomText(text: "Monthly : Treatment A, Product B, and Treatment C", type: 'content'),
      ],
    );
  }
}
