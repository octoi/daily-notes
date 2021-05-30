import 'package:app/screens/folder_screen.dart';
import 'package:flutter/material.dart';

void createFolder(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Text(
        "create folder",
        style: TextStyle(color: Colors.white),
      );
    },
  );
}

void createNote(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Text(
        "create note",
        style: TextStyle(color: Colors.white),
      );
    },
  );
}

void createThing(context, isFolderScreen) {
  if (isFolderScreen) {
    createFolder(context);
  } else {
    createNote(context);
  }
}
