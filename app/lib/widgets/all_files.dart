import 'package:app/utils/get_files.dart';
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
        print(file);
        return Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 5.0),
          height: 100.0,
          color: Colors.red,
        );
      }).toList(),
    );
  }
}
