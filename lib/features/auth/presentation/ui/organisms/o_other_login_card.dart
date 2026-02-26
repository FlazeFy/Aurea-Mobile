import 'package:aurea/core/atoms/a_button.dart';
import 'package:aurea/core/atoms/a_link.dart';
import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';

class OrganismOtherLoginCard extends StatelessWidget {
  const OrganismOtherLoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(spaceMD),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(roundedLG))
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Or Continue With', style: TextStyle(fontSize: textXLG, fontWeight: FontWeight.w600)),
          SizedBox(height: spaceSM),
          AtomButton(text: "Google Sign In", color: whiteColor),
          SizedBox(height: spaceLG),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('New to Aurea', style: TextStyle(fontSize: textXMD, fontWeight: FontWeight.w500)),
              AtomLink(text: 'Create Account Now!', color: pinkColor)
            ],
          )
        ],
      ),
    );
  }
}
