import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: Row(
        children: [
          Row(
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
        ],
      ),
    );
  }
}
