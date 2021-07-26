import 'package:flutter/material.dart';

void main() {
  runApp(DailyNotes());
}

class DailyNotes extends StatelessWidget {
  const DailyNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
