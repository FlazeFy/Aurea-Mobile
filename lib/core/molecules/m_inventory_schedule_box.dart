import 'package:aurea/core/atoms/a_checkbox.dart';
import 'package:aurea/core/atoms/a_tag.dart';
import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';

class MoleculeInventoryScheduleBox extends StatelessWidget {
  final String productName;
  final String productBrand;
  final String productCategory;
  final String? usageInstruction;
  final bool isFinished;

  const MoleculeInventoryScheduleBox({
    super.key,
    required this.productName,
    required this.productBrand,
    required this.productCategory,
    this.usageInstruction,
    required this.isFinished
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // do something
      },
      borderRadius: BorderRadius.circular(6),
      child: Container(
        margin: EdgeInsets.only(bottom: spaceMD),
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: darkColor.withOpacity(0.125),
              blurRadius: 6.0,
              spreadRadius: 0.0,
              offset: const Offset(
                1.0, 1.0,
              ),
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(roundedLG)),
        ),
        padding: EdgeInsets.all(spaceMD),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AtomText(text: productName, type: 'content-title'),
                    const SizedBox(height: spaceXXSM),
                    Row(
                      children: [
                        AtomTag(text: productCategory, color: lightPinkColor),
                        const SizedBox(width: spaceSM),
                        AtomText(text: productBrand, type: 'content', color: grayColor),
                      ],
                    )
                  ],
                ),
                Spacer(),
                AtomCheckbox(value: isFinished)
              ],
            ),
            SizedBox(height: spaceMD),
            if (usageInstruction != null && usageInstruction!.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AtomText(text: 'Usage Instructions', type: 'content'),
                  AtomText(text: usageInstruction!, type: 'content')
                ],
              )
            else
              const AtomText(
                text: '- This product has no usage instructions -',
                type: 'content',
                color: grayColor,
              ),
          ]
        ),
      ),
    );
  }
}