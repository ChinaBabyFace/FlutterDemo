import 'package:flutter/material.dart';

void main() => runApp(TextApp());

class TextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Text Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('关于我们'),
            centerTitle: true,
          ),
          backgroundColor: Colors.pinkAccent,
          body: HomeContent(),
        ));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
        color: Color.fromARGB(255, 0, 255, 0),
        fontSize: 20.0,
        textBaseline: TextBaseline.ideographic);
    return Container(
        color: Colors.amber,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('ROW1'), Text('ROW2')]),
              new Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                child: Text("PADDING"),
              ),
              Text(
                '123',
                textAlign: TextAlign.left,
              ),
              Text('456'),
              Text(
                'If the app is running, use the hot reload button (lightning bolt icon) to update the running app. Each time you click hot reload, or save the project, you should see a different word pair, chosen at random, in the running app. This is because the word pairing is generated inside the build method, which is run each time the MaterialApp requires rendering, or when toggling the Platform in Flutter Inspector.',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: style,
              ),
              Text(
                'If the app is running, use the hot reload button (lightning bolt icon) to update the running app. Each time you click hot reload, or save the project, you should see a different word pair, chosen at random, in the running app. This is because the word pairing is generated inside the build method, which is run each time the MaterialApp requires rendering, or when toggling the Platform in Flutter Inspector.',
                overflow: TextOverflow.fade,
                maxLines: 2,
                style: style,
              ),
              Text(
                'If the app is running, use the hot reload button (lightning bolt icon) to update the running app. Each time you click hot reload, or save the project, you should see a different word pair, chosen at random, in the running app. This is because the word pairing is generated inside the build method, which is run each time the MaterialApp requires rendering, or when toggling the Platform in Flutter Inspector.',
                overflow: TextOverflow.clip,
                maxLines: 2,
                style: style,
              ),
            ]));
  }
}
