import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class AllScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardWidth = size.width;
    var cardHeight = size.height / 1.5;

    return GridView.count(
      physics: BouncingScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      childAspectRatio: cardWidth / cardHeight,
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
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: Text(
              "Minim in sunt reprehenderit nostrud ullamco velit laboris aliquip qui dolor. Qui cupidatat mollit et laboris. Reprehenderit eiusmod voluptate ullamco mollit. Do veniam quis dolore do.",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      ),
    );
  }
}
