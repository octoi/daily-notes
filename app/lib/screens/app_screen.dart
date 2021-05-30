import 'package:app/bloc/tab_bloc.dart';
import 'package:app/screens/all_screen.dart';
import 'package:app/screens/folder_screen.dart';
import 'package:app/utils/constants.dart';
import 'package:app/widgets/create_new.dart';
import 'package:app/widgets/topbar.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  final _tabBloc = TabBloc();
  bool _isFolderScreen = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(
        builder: (BuildContext context) {
          final TabController _tabController =
              DefaultTabController.of(context)!;

          _tabController.addListener(() {
            if (!_tabController.indexIsChanging) {
              _isFolderScreen = _tabController.index == 1;
              _tabBloc.tabSink.add(_isFolderScreen);
            }
          });

          return Scaffold(
            backgroundColor: appPrimaryColor,
            appBar: Topbar(),
            floatingActionButton: StreamBuilder(
              stream: _tabBloc.tabStream,
              builder: (context, snapshot) {
                return FloatingActionButton(
                  backgroundColor: appPrimaryAccentColor,
                  child: Icon(
                    _isFolderScreen
                        ? Icons.create_new_folder_outlined
                        : Icons.note_add_outlined,
                  ),
                  onPressed: () {
                    createThing(context, _isFolderScreen);
                  },
                );
              },
            ),
            body: TabBarView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  child: AllScreen(),
                  margin: EdgeInsets.all(15.0),
                ),
                Container(
                  child: FolderScreen(),
                  margin: EdgeInsets.all(15.0),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
