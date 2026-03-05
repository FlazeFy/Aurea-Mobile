import 'package:aurea/core/atoms/a_button.dart';
import 'package:aurea/core/atoms/a_text.dart';
import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';

class OrganismProfileCard extends StatelessWidget {
  const OrganismProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/profile.png',
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.3,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: spaceMD),
          const AtomText(
            text: "Jhon Doe",
            type: 'content-title',
          ),
          const AtomText(
            text: "flazen.edu@email.com",
            type: 'content',
          ),
          const SizedBox(height: spaceLG),
          const SizedBox(
            width: 160,
            child: AtomButton(text: "Edit Profile", color: pinkColor),
          )
        ],
      ),
    );
  }
}
