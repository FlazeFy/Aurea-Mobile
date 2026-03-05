import 'package:aurea/features/profile/presentation/ui/organisms/o_skin_profile_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        children: [
          OrganismSkinProfileCard()
        ],
      ),
    );
  }
}