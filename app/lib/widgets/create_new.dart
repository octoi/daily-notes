import 'package:app/bloc/alert_input_bloc.dart';
import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

Future<void> alertForm(context, isFolderScreen) async {
  final _alertInputBloc = AlertInputBloc();
  String _value = "";

  createFolder() {}
  createDocument() {}

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          isFolderScreen ? 'New Folder' : 'New document',
          style: whiteColorText,
        ),
        backgroundColor: appSecondaryColor,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              TextField(
                onChanged: (val) {
                  _value = val;
                  _alertInputBloc.alertInputSink.add(_value);
                },
                decoration: inputDecoration.copyWith(
                  labelText: isFolderScreen ? 'folder name' : 'document name',
                ),
                style: whiteColorText,
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
          StreamBuilder(
            stream: _alertInputBloc.alertInputStream,
            builder: (context, snapshot) {
              return RaisedButton(
                child: Text("create"),
                highlightColor: appSecondaryColor,
                color: appPrimaryAccentColor,
                textColor: Colors.white,
                disabledColor: appPrimaryColor,
                disabledTextColor: Colors.white30,
                onPressed: _value.isEmpty
                    ? null
                    : () => isFolderScreen ? createFolder() : createDocument(),
              );
            },
          ),
        ],
      );
    },
  );
}
