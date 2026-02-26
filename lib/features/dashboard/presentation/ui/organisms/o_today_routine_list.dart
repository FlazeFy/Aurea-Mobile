import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:aurea/core/molecules/m_inventory_schedule_box.dart';
import 'package:flutter/material.dart';

class OrganismTodayRoutineList extends StatelessWidget {
  const OrganismTodayRoutineList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(spaceMD),
      padding: const EdgeInsets.all(spaceSM),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AtomText(text: "Today's Routine", type: 'content-title'),
              Spacer(),
              AtomText(text: "Morning", type: 'content-title', color: pinkColor),
            ],
          ),
          SizedBox(height: spaceLG),
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
          )
        ],
      ),
    );
  }
}
