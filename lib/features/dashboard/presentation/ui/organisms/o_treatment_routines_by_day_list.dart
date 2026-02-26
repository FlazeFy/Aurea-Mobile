import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:aurea/core/molecules/m_inventory_schedule_box.dart';
import 'package:flutter/material.dart';

class OrganismTreatmentRoutinesByDayList extends StatelessWidget {
  const OrganismTreatmentRoutinesByDayList({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        margin: const EdgeInsets.all(spaceMD),
        padding: const EdgeInsets.all(spaceSM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AtomText(text: "27 Feb's Routine", type: 'content-title'),
            const TabBar(
              indicatorColor: Colors.green,
              indicatorWeight: 3,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "Morning"),
                Tab(text: "Afternoon"),
                Tab(text: "Night"),
              ],
            ),
            const SizedBox(height: spaceMD),
            Expanded(
              child: TabBarView(
                children: [
                  _buildRoutineList("Morning"),
                  _buildRoutineList("Afternoon"),
                  _buildRoutineList("Night"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildRoutineList(String period) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        MoleculeInventoryScheduleBox(
          productName: 'Niacinamide Brightening Serum',
          productBrand: 'Skintific',
          productCategory: 'Serum',
          isFinished: true,
        ),
        MoleculeInventoryScheduleBox(
          productName: 'Niacinamide Brightening Serum',
          productBrand: 'Skintific',
          productCategory: 'Serum',
          isFinished: false,
        ),
      ],
    );
  }
}