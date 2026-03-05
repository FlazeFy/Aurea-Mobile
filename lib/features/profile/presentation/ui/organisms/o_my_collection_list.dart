import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:aurea/core/molecules/m_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrganismMyCollectionListList extends StatelessWidget {
  const OrganismMyCollectionListList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> skincareCategories = [
      {'name': '(30) Products', 'icon': FontAwesomeIcons.box},
      {'name': '(5) Treatments', 'icon': FontAwesomeIcons.briefcaseMedical},
      {'name': '(4) Template', 'icon': FontAwesomeIcons.boxesStacked},
      {'name': '(2) Allergic', 'icon': FontAwesomeIcons.handDots},
      {'name': '(10) Discussion', 'icon': FontAwesomeIcons.comments},
    ];

    return Container(
      margin: const EdgeInsets.all(spaceMD),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AtomText(text: 'My Collections', type: 'content-title'),
          Container(
            height: 95,
            margin: const EdgeInsets.only(top: spaceXXSM),
            child: ListView.builder(
              padding: const EdgeInsets.all(spaceXXSM),
              scrollDirection: Axis.horizontal,
              itemCount: skincareCategories.length,
              itemBuilder: (context, index) {
                final category = skincareCategories[index];
                return MoleculeIconButton(title: category['name'], icon: category['icon']);
              },
            ),
          ),
        ],
      ),
    );
  }
}
