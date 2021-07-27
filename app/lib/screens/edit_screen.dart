import 'package:app/utils/contants.dart';
import 'package:app/widgets/app_tab_bar_view.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: appSecondaryColor,
        appBar: AppBar(
          backgroundColor: appPrimaryColor,
          elevation: 0.0,
          title: Text(
            'Notes',
            style: TextStyle(
              color: appWhite,
              fontWeight: FontWeight.normal,
            ),
          ),
          bottom: TabBar(
            indicatorColor: appPrimaryAccentColor,
            unselectedLabelColor: appWhite,
            labelColor: appPrimaryAccentColor,
            tabs: [
              Tab(icon: Icon(Icons.edit_outlined)),
              Tab(icon: Icon(Icons.visibility_outlined)),
            ],
          ),
        ),
        body: SafeArea(
          child: AppTabBarView(),
        ),
      ),
    );
  }
}
