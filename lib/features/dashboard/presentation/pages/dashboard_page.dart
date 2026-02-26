import 'package:aurea/features/dashboard/presentation/ui/organisms/o_daily_progress_card.dart';
import 'package:aurea/features/dashboard/presentation/ui/organisms/o_today_routine_list.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView(
        children: [
          OrganismDailyProgressCard(),
          OrganismTodayRoutineList()
        ],
      ),
    );
  }
}