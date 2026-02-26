import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:aurea/features/dashboard/presentation/ui/molecules/m_main_search_bar.dart';
import 'package:flutter/material.dart';

class OrganismMainSearchAndGreetingCard extends StatelessWidget {
  const OrganismMainSearchAndGreetingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(spaceMD),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AtomText(text: 'Hi FlazeFy', type: 'content-title'),
          AtomText(text: 'Ready for your morning routine?', type: 'content'),
          SizedBox(height: spaceMD),
          MoleculeMainSearchBar()
        ],
      ),
    );
  }
}
