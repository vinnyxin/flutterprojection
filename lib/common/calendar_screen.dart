import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    //api 연결 후 현재 남은 업무 수
    var numOfWork = 1;
    return Stack(
      children: [
        TableCalendar(
          locale: 'ko_KR',
          headerStyle: const HeaderStyle(
            titleTextStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            titleCentered: true,
            formatButtonVisible: false,
          ),
          calendarStyle: CalendarStyle(
              cellAlignment: Alignment.topLeft,
              cellPadding: EdgeInsets.all(5),
              todayDecoration: BoxDecoration(
                color: Colors.lightBlue[200],
              ),
              selectedDecoration: BoxDecoration(
                border: Border.all(color: Colors.red),
              ),
              selectedTextStyle: TextStyle(color: Colors.black)
          ),
          calendarBuilders: CalendarBuilders(
            dowBuilder: (context, day) {
              if (day.weekday == DateTime.sunday) {
                return Center(
                  child: Text(
                    '일',
                    style: TextStyle(color: Colors.red),
                  ),
                );
              }
            },
          ),
          daysOfWeekHeight: 25,
          shouldFillViewport: true,
          sixWeekMonthsEnforced: true,
          focusedDay: _focusedDay,
          firstDay: DateTime(2020, 1, 1),
          lastDay: DateTime(2099, 12, 31),
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
          onDayLongPressed: (selectedDay, focusedDay) {
            setState(() {
              _focusedDay = DateTime.now();
            });
          },
        ),
      ],
    );
  }
}