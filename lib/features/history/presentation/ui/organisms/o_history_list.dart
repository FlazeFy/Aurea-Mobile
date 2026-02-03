

import 'package:aurea/features/history/data/models/history_response.dart';
import 'package:aurea/features/history/presentation/ui/molecules/m_history_card.dart';
import 'package:flutter/material.dart';

class OrganismHistoryList extends StatelessWidget {
  final List<History> histories;

  const OrganismHistoryList({super.key, required this.histories});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: histories.length,
      itemBuilder: (context, index) {
        return MoleculeHistoryCard(history: histories[index]);
      },
    );
  }
}