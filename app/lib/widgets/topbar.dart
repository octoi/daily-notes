import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "n",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              Text(
                "otes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
              color: Colors.white38,
              iconSize: 20.0,
              splashColor: appSecondaryColor,
              highlightColor: appSecondaryColor,
              splashRadius: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
