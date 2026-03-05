import 'package:aurea/core/atoms/a_tag.dart';
import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:aurea/features/profile/presentation/ui/molecules/m_allergics_sensitives_list.dart';
import 'package:aurea/features/profile/presentation/ui/molecules/m_routine_products_treatments_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrganismSkinProfileCard extends StatelessWidget {
  const OrganismSkinProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: spaceXSM, horizontal: spaceMD),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(roundedLG)),
          color: lightSuccessColor
      ),
      padding: const EdgeInsets.all(spaceXMD),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AtomText(text: 'Profile Details', type: 'content-title'),
                  AtomText(text: "Age : 24 | Daily Routine : Serum, Moisturizer", type: 'content'),
                ]
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.all(spaceMD),
                decoration: BoxDecoration(
                  color: lightPinkColor,
                  shape: BoxShape.circle,
                ),
                child: const FaIcon(FontAwesomeIcons.venus),
              ),
            ],
          ),
          Divider(),
          MoleculeAllergicsSensitives(),
          SizedBox(height: spaceMini),
          Divider(),
          MoleculeRoutineProductsTreatmentsCard()
        ],
      ),
    );
  }
}
