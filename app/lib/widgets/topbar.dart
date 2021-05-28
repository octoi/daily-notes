import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class Topbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
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
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_transit)),
        ],
      ),
      backgroundColor: appPrimaryColor,
      elevation: 0.0,
    );
  }
}
