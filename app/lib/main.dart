import 'package:app/screens/app_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DailyNotes());
}

class DailyNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppScreen(),
    );
  }
}
