import 'package:aurea/features/dashboard/presentation/ui/organisms/o_routine_calendar.dart';
import 'package:flutter/material.dart';

class RoutinePage extends StatelessWidget {
  const RoutinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          OrganismRoutineCalendar()
        ],
      ),
    );
  }
}