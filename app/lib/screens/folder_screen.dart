import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class FolderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            color: appSecondaryColor,
            margin: EdgeInsets.all(10.0),
          ),
          Container(
            width: double.infinity,
            height: 200.0,
            color: appSecondaryColor,
            margin: EdgeInsets.all(10.0),
          ),
          Container(
            width: double.infinity,
            height: 200.0,
            color: appSecondaryColor,
            margin: EdgeInsets.all(10.0),
          ),
          Container(
            width: double.infinity,
            height: 200.0,
            color: appSecondaryColor,
            margin: EdgeInsets.all(10.0),
          ),
        ],
      ),
    );
  }
}
