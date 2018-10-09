import 'package:flutter/material.dart';

abstract class BaseStatefulPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState();
}

abstract class BasePageState<T extends StatefulWidget> extends State<T> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(getTitle(), textAlign: TextAlign.center),
            backgroundColor: Color(0xFF47B9FF)),
        body: getContentWidget(context));
  }

  String getTitle();

  Widget getContentWidget(BuildContext context);
}
