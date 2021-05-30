import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

Future<void> _showMyDialog(context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'New document',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: appSecondaryColor,
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "document name",
                  labelStyle: TextStyle(color: Colors.white30),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: appPrimaryAccentColor,
                      width: 0.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: appPrimaryAccentColor,
                      width: 1.5,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        actions: <Widget>[
          RaisedButton(
            onPressed: () => Navigator.pop(context),
            child: Text("cancel"),
            highlightColor: appSecondaryColor,
            color: appPrimaryColor,
            textColor: Colors.white,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("create"),
            highlightColor: appSecondaryColor,
            color: appPrimaryAccentColor,
            textColor: Colors.white,
          ),
        ],
      );
    },
  );
}

void createThing(context, isFolderScreen) {
  _showMyDialog(context);
}
