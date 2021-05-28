import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class AllScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: BouncingScrollPhysics(),
      crossAxisCount: 2,
      children: [
        Note(),
        Note(),
        Note(),
        Note(),
        Note(),
      ],
    );
  }
}

class Note extends StatelessWidget {
  const Note({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.all(5.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: appSecondaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lorem Ipsum",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: Text(
              "Flutter is awesome because it is just awesome, Flutter is awesome because it is just awesome, Flutter is awesome because it is just awesome, Flutter is awesome because it is just awesome, Flutter is awesome because it is just awesome",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      ),
    );
  }
}
