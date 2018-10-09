import 'package:flutter/material.dart';
import 'package:wjy_flutter_demo/mvvm/base_stateless_page.dart';

class AboutUsPage extends BaseStatelessPage {
  static const String ROUTE_PATH = 'home_page/about_us_page';
  final String title;

  AboutUsPage(this.title);

  @override
  Widget getContentWidget(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("About Us Page>>>>>>>>>>>", style: TextStyle(color: Colors.pink)),
        FlatButton(
          child: Text('Pop'),
          onPressed: () {
            Navigator.of(context).pop('回来了');
          },
        )
      ],
    );
  }

  @override
  String getTitle() {
    return title;
  }
}
