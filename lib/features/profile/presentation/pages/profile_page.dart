import 'package:aurea/core/global/style.dart';
import 'package:aurea/features/profile/presentation/ui/organisms/o_my_collection_list.dart';
import 'package:aurea/features/profile/presentation/ui/organisms/o_profile_card.dart';
import 'package:aurea/features/profile/presentation/ui/organisms/o_skin_profile_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          OrganismProfileCard(),
          SizedBox(height: spaceSM),
          OrganismSkinProfileCard(),
          OrganismMyCollectionListList()
        ],
      ),
    );
  }
}