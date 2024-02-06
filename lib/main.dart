import 'package:flutter/material.dart';
import 'package:projectiongolf/Main/main_screen.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:projectiongolf/common/timetable_screen.dart';

void main() {
  initializeDateFormatting('ko_KR', null).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}

