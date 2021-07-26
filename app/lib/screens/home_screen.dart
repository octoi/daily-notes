import 'package:app/utils/constants.dart';
import 'package:app/widgets/note.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // add button
              Material(
                color: appSecondaryColor,
                borderRadius: BorderRadius.circular(10.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: appPrimaryColor,
                  highlightColor: appPrimaryColor,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 50.0),
                    child: Icon(
                      CupertinoIcons.add_circled,
                      color: appPrimaryAccentColor,
                      size: 50.0,
                    ),
                  ),
                ),
              ),
              // recent notes
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 5.0,
                ),
                child: Text(
                  "Recent Notes",
                  style: TextStyle(
                    color: appPrimaryTextColor,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Note(),
              Note(),
              Note(),
              Note(),
              Note(),
            ],
          ),
        ),
      ),
    );
  }
}
