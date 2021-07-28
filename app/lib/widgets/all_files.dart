import 'package:app/screens/edit_screen.dart';
import 'package:app/utils/contants.dart';
import 'package:app/utils/get_files.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllFiles extends StatefulWidget {
  const AllFiles({Key? key}) : super(key: key);

  @override
  _AllFilesState createState() => _AllFilesState();
}

class _AllFilesState extends State<AllFiles> {
  List files = [];

  void getFiles() async {
    List allFiles = await getAllFiles();
    setState(() => files = allFiles);
  }

  @override
  void initState() {
    super.initState();
    getFiles();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: files.map((file) {
        var splittedFile = file.toString().split('/');
        var currentFile = splittedFile[splittedFile.length - 1];
        currentFile = currentFile.substring(0, currentFile.length - 1);

        return Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Material(
            color: appPrimaryColor,
            borderRadius: BorderRadius.circular(10.0),
            child: InkWell(
              splashColor: appSecondaryColor,
              highlightColor: appPrimaryColor.withOpacity(0.5),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return EditScreen(fileName: currentFile);
                  },
                ));
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Center(
                  child: Text(
                    currentFile,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
        ;
      }).toList(),
    );
  }
}
