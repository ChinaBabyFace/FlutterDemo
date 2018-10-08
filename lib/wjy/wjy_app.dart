import 'package:flutter/widgets.dart';
import 'package:wjy_flutter_demo/mvvm/base_app.dart';
import 'package:wjy_flutter_demo/wjy/about_us_page.dart';
import 'package:wjy_flutter_demo/wjy/home_page.dart';

class WjyApp extends BaseApp {
  @override
  Widget getContent(BuildContext context) {
    return HomePage();
  }

  @override
  Map<String, WidgetBuilder> getRoutes() {
    return {};
  }
}
