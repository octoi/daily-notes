import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class Folder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: appSecondaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.folder_rounded,
            size: 80.0,
            color: appSecondaryAccentColor,
          ),
          Text(
            "Folder Name",
            style: TextStyle(
              color: Colors.grey,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
