import 'package:app/widgets/note_display.dart';
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
        NoteDisplay(),
        NoteDisplay(),
        NoteDisplay(),
        NoteDisplay(),
        NoteDisplay(),
        NoteDisplay(),
      ],
    );
  }
}
