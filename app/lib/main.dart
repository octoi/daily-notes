import 'package:flutter/material.dart';

void main() {
  runApp(DailyNotes());
}

class DailyNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
