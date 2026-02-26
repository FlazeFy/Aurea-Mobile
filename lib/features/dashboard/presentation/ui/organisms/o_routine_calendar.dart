import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class OrganismRoutineCalendar extends StatefulWidget {
  const OrganismRoutineCalendar({super.key});

  @override
  State<OrganismRoutineCalendar> createState() => _OrganismRoutineCalendarState();
}

class _OrganismRoutineCalendarState extends State<OrganismRoutineCalendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Container (
      margin: const EdgeInsets.all(spaceMD),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(roundedLG)),
        color: whiteColor
      ),
      padding: const EdgeInsets.all(spaceSM),
      child: TableCalendar(
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },
        calendarStyle: const CalendarStyle(
          todayDecoration: BoxDecoration(
            color: darkColor,
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(
            color: pinkColor,
            shape: BoxShape.circle,
          ),
        ),
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
        ),
      ),
    );
  }
}