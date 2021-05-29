import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class FolderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: BouncingScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      children: [
        Folder(),
        Folder(),
        Folder(),
        Folder(),
        Folder(),
      ],
    );
  }
}

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
