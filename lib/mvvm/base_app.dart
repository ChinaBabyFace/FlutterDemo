import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class BaseApp extends StatelessWidget {
  BaseApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: getContent(context),
      routes: getRoutes(),
    );
  }

  @protected
  Widget getContent(BuildContext context);

  @protected
  Map<String, WidgetBuilder> getRoutes();
}
