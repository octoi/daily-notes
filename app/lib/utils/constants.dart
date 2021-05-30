import 'package:flutter/material.dart';

const appPrimaryColor = Color(0xFF1F1D2B);
const appSecondaryColor = Color(0xFF272636);
const appPrimaryAccentColor = Color(0xFF6F6FC8);
const appSecondaryAccentColor = Color(0xFFFFC04A);

// styles

const whiteColorText = TextStyle(color: Colors.white);

const inputDecoration = InputDecoration(
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
);
