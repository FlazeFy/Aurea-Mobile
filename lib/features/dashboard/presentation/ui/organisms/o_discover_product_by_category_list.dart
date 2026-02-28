import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:aurea/features/dashboard/presentation/ui/molecules/m_icon_button.dart';
import 'package:aurea/features/dashboard/presentation/ui/molecules/m_main_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrganismDiscoverProductByCategoryList extends StatelessWidget {
  const OrganismDiscoverProductByCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> skincareCategories = [
      {'name': 'Toners', 'icon': FontAwesomeIcons.droplet},
      {'name': 'Moisturizers', 'icon': FontAwesomeIcons.sun},
      {'name': 'Serums', 'icon': FontAwesomeIcons.vial},
      {'name': 'Cleansers', 'icon': FontAwesomeIcons.bottleWater},
      {'name': 'Masks', 'icon': FontAwesomeIcons.mask},
      {'name': 'Exfoliators', 'icon': FontAwesomeIcons.sprayCan},
    ];

    return Container(
      margin: const EdgeInsets.all(spaceMD),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AtomText(text: 'Browse the Product', type: 'content-title'),
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
