import 'package:app/utils/contants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appSecondaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Material(
                color: appPrimaryColor,
                borderRadius: BorderRadius.circular(10.0),
                child: InkWell(
                  splashColor: appSecondaryColor,
                  highlightColor: appPrimaryColor.withOpacity(0.5),
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 60.0),
                    child: Icon(
                      CupertinoIcons.add_circled,
                      color: appPrimaryAccentColor,
                      size: 50.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
