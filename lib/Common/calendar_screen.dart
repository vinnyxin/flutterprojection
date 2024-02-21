import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar<T> extends StatefulWidget {

  const CustomCalendar({super.key,});

  @override
  State<CustomCalendar> createState() => _CalendarState();
}

class _CalendarState<T> extends State<CustomCalendar<T>> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  List<T> Function(DateTime)? eventLoader;
   MarkerBuilder<T>? markerBuilder;

  @override
  Widget build(BuildContext context) {
    return TableCalendar<T>(
      locale: 'ko_KR',
      headerStyle: const HeaderStyle(
        titleTextStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        titleCentered: true,
        formatButtonVisible: false,
      ),
      calendarStyle: CalendarStyle(
        markersAlignment: Alignment.center,
        markersMaxCount: 2,
        cellAlignment: Alignment.topLeft,

        todayDecoration: BoxDecoration(
          color: Colors.lightBlue[100],
        ),
        todayTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),

        selectedDecoration: BoxDecoration(
          border: Border.all(color: Color(0xFF1BAA00),), // 添加绿色边框
        ),
        selectedTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
        tableBorder: const TableBorder(
          horizontalInside: BorderSide(color: Colors.black12),
          verticalInside: BorderSide(color: Colors.black12),
          right: BorderSide(color: Colors.black12),
        ),
        defaultTextStyle:
        const TextStyle(color: Colors.black, fontWeight: FontWeight.w500,fontSize: 12),
      ),
      calendarBuilders: CalendarBuilders(
        dowBuilder: (context, day) {
          return Center(
            child: Text(
              DateFormat.E('ko').format(day),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 11,
                color: day.weekday == DateTime.sunday
                    ? Colors.black
                    : day.weekday == DateTime.saturday
                    ? Colors.black
                    : Colors.black,
              ),
            ),
          );
        },
        markerBuilder: markerBuilder,
        defaultBuilder: (context, day, focusedDay) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                day.day.toString().padLeft(2, '0'),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                  color: day.weekday == DateTime.sunday
                      ? Color(0xFFDC143C)
                      : day.weekday == DateTime.saturday
                      ? Colors.black
                      : Colors.black,
                ),
              ),
            ),
          );
        },
        outsideBuilder: (context, day, focusedDay) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                day.day.toString().padLeft(2, '0'),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                  color: day.weekday == DateTime.sunday
                      ? Color(0xFFC49C9C)
                      : day.weekday == DateTime.saturday
                      ? Colors.grey
                      : Colors.grey,
                ),
              ),
            ),
          );
        },
      ),
      daysOfWeekHeight: 30,
      rowHeight: MediaQuery.of(context).size.height / 9.8,
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
      eventLoader: eventLoader,
    );
  }
}