import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class BasePage extends StatelessWidget {
  BasePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(getTitle(), textAlign: TextAlign.center),
            backgroundColor: Color(0xFF47B9FF)),
        body: getContentWidget(context));
  }

  @protected
  String getTitle();

  @protected
  Widget getContentWidget(BuildContext context);
}
