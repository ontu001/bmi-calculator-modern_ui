// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:bmi_calculator_starter/UI/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(HealthBmiCalculator());

class HealthBmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0D22)),
      ),
      home: InputPage(),
    );
  }
}
