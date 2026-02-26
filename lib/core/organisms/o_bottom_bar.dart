import 'package:aurea/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:aurea/features/dashboard/presentation/pages/routine_page.dart';
import 'package:aurea/features/forum/presentation/pages/forum_page.dart';
import 'package:aurea/features/profile/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:aurea/core/global/style.dart';

class OrganismBottomBar extends StatefulWidget {
  const OrganismBottomBar({super.key});

  @override
  State<OrganismBottomBar> createState() => _OrganismBottomBarState();
}

class _OrganismBottomBarState extends State<OrganismBottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    DashboardPage(),
    RoutinePage(),
    ForumPage(),
    ProfilePage(),
  ];

  void _onTap(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onTap,
          type: BottomNavigationBarType.fixed,
          backgroundColor: darkColor,
          selectedItemColor: pinkColor,
          unselectedItemColor: Colors.white54,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.spa_outlined),
              activeIcon: Icon(Icons.spa),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.checklist_outlined),
              activeIcon: Icon(Icons.checklist),
              label: "Routine",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              activeIcon: Icon(Icons.chat),
              label: "Forum",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}