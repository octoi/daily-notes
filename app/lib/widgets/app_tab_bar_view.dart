import 'package:app/utils/contants.dart';
import 'package:app/utils/open_file.dart';
import 'package:app/utils/save_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class AppTabBarView extends StatefulWidget {
  const AppTabBarView({Key? key}) : super(key: key);

  @override
  _AppTabBarViewState createState() => _AppTabBarViewState();
}

class _AppTabBarViewState extends State<AppTabBarView> {
  TextEditingController _textEditingController = TextEditingController();
  String markdown = '';

  void saveMardown() async {
    await saveFile("sample", markdown);
  }

  void readMardown() async {
    String content = await readFile("sample");
    _textEditingController.text = content;
    setState(() => markdown = content);
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: saveMardown, icon: Icon(Icons.save)),
                  IconButton(onPressed: readMardown, icon: Icon(Icons.book)),
                ],
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: TextField(
                  controller: _textEditingController,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  cursorColor: appWhite,
                  style: TextStyle(
                    color: appWhite,
                    fontSize: 20.0,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Markdown Text",
                    hintStyle: TextStyle(color: appWhite),
                  ),
                  onChanged: (String inputVal) {
                    setState(() => markdown = inputVal);
                  },
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(20.0),
                child: MarkdownBody(
                  data: markdown.length == 0
                      ? '# Nothing to render 🤷‍♂️'
                      : markdown,
                  selectable: true,
                  styleSheetTheme: MarkdownStyleSheetBaseTheme.cupertino,
                  styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
