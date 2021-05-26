import 'package:app/utils/constants.dart';
import 'package:app/widgets/topbar.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: appPrimaryAccentColor,
        child: Icon(Icons.note_add_outlined),
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Topbar(),
          ],
        ),
      ),
    );
  }
}
