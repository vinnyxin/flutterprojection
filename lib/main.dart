import 'package:eggtranslate/Main/User/user_main_screen.dart';
import 'package:eggtranslate/Main/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:eggtranslate/Main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),

      home: LoginScreen()
    );
  }
}

