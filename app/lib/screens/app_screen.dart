import 'package:app/utils/constants.dart';
import 'package:app/widgets/topbar.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: appPrimaryColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: appPrimaryAccentColor,
          child: Icon(Icons.note_add_outlined),
          onPressed: () {},
        ),
        appBar: Topbar(),
        body: TabBarView(children: [
          Text("Hello World"),
          Text("Hello World"),
        ]),
      ),
    );
  }
}
