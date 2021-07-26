import 'package:app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // add button
              Material(
                color: appSecondaryColor,
                borderRadius: BorderRadius.circular(10.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: appPrimaryColor,
                  highlightColor: appPrimaryColor,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 50.0),
                    child: Icon(
                      CupertinoIcons.add_circled,
                      color: appPrimaryAccentColor,
                      size: 50.0,
                    ),
                  ),
                ),
              ),
              // recent notes
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 5.0,
                ),
                child: Text(
                  "Recent Notes",
                  style: TextStyle(
                    color: appPrimaryTextColor,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Material(
                  color: appSecondaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                  child: InkWell(
                    onTap: () {},
                    splashColor: appPrimaryColor,
                    highlightColor: appPrimaryColor,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Note Title",
                            style: TextStyle(
                              color: appPrimaryTextColor,
                              fontSize: 18.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Officia eiusmod minim deserunt duis cupidatat consectetur sint veniam velit non officia esse occaecat. Esse ipsum sint aute cillum aute ea. Do minim elit voluptate proident dolore do quis est ad do quis. Mollit anim reprehenderit quis labore non et irure proident sunt. Aliqua velit irure officia ullamco enim elit consequat consequat do ullamco nisi dolore anim quis. Ipsum ex consequat id Lorem."
                                    .substring(0, 200) +
                                " ...",
                            style: TextStyle(
                              color: appPrimaryTextColor,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
