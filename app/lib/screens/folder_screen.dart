import 'package:app/widgets/folder_display.dart';
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
        Folder(),
        Folder(),
      ],
    );
  }
}
