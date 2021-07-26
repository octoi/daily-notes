import 'package:app/utils/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class AppTabBarView extends StatefulWidget {
  const AppTabBarView({Key? key}) : super(key: key);

  @override
  _AppTabBarViewState createState() => _AppTabBarViewState();
}

class _AppTabBarViewState extends State<AppTabBarView> {
  String markdown = '';

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20.0),
                child: TextField(
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
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: MarkdownBody(
              data:
                  markdown.length == 0 ? '# Nothing to render 🤷‍♂️' : markdown,
              selectable: true,
              styleSheetTheme: MarkdownStyleSheetBaseTheme.cupertino,
              styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)),
            ),
          ),
        ),
      ],
    );
  }
}
