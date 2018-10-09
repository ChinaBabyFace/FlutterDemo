import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wjy_flutter_demo/mvvm/base_stateless_page.dart';
import 'package:wjy_flutter_demo/wjy/about_us_page.dart';

class HomePage extends BaseStatelessPage {
  @override
  Widget getContentWidget(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            RaisedButton(
              color: Colors.pink,
              onPressed: () {
//                Navigator.of(context)
//                    .pushNamed(AboutUsPage.ROUTE_PATH)
                Navigator.push<String>(context,
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return AboutUsPage('Shark');
                })).then((onValue) {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Text('Title'),
                            content: Text("Dialog content:" + onValue),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('Cancel'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              FlatButton(
                                child: Text('True'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ));
                });
              },
              child: Text("About Us", style: TextStyle(color: Colors.white)),
            )
          ],
        )
      ],
    );
  }

  @override
  String getTitle() {
    return '我的外教课';
  }
}
