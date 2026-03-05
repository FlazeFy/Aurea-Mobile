import 'package:aurea/core/atoms/a_tag.dart';
import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoleculeAllergicsSensitives extends StatelessWidget {
  const MoleculeAllergicsSensitives({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AtomText(text: 'Allergics & Sensitivies', type: 'content-title'),
        SizedBox(height: spaceMini),
        Wrap(
          spacing: spaceXSM,
          runSpacing: spaceXSM,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            AtomTag(
              text: 'Vitamin C',
              icon: FontAwesomeIcons.triangleExclamation,
              color: pinkColor,
              isFilled: false,
            ),
            AtomTag(
              text: 'Fragrance',
              icon: FontAwesomeIcons.triangleExclamation,
              color: pinkColor,
              isFilled: false,
            ),
          ],
        ),
      ],
    );
  }
}
