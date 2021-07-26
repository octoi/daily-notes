import 'package:app/utils/constants.dart';
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
            children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
