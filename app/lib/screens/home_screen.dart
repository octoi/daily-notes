import 'package:app/utils/contants.dart';
import 'package:app/widgets/new_document_btn.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appSecondaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              NewDocumentButton(),
            ],
          ),
        ),
      ),
    );
  }
}
