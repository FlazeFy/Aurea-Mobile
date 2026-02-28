import 'package:aurea/features/dashboard/presentation/ui/organisms/o_daily_progress_card.dart';
import 'package:aurea/features/dashboard/presentation/ui/organisms/o_discover_product_by_category_list.dart';
import 'package:aurea/features/dashboard/presentation/ui/organisms/o_main_search_and_greeting_card.dart';
import 'package:aurea/features/dashboard/presentation/ui/organisms/o_next_reminder_list.dart';
import 'package:aurea/features/dashboard/presentation/ui/organisms/o_today_routine_list.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          OrganismMainSearchAndGreetingCard(),
          OrganismDiscoverProductByCategoryList(),
          OrganismNextReminderList(),
          OrganismDailyProgressCard(),
          OrganismTodayRoutineList()
        ],
      ),
    );
  }
}