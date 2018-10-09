import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:wjy_flutter_demo/mvvm/base_app.dart';
import 'package:wjy_flutter_demo/mvvm/base_stateful_page.dart';

void main() => runApp(ScrollApp());

class ScrollApp extends BaseApp {
  @override
  Widget getContent(BuildContext context) {
    return WordListPage();
  }

  @override
  Map<String, WidgetBuilder> getRoutes() {
    return {};
  }
}

class WordListViewState extends BasePageState<WordListPage> {
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (BuildContext _content, int i) {
        if (i.isOdd) {
          return const Divider();
        }
        final int index = i ~/ 2;

        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  @override
  Widget getContentWidget(BuildContext context) {
    return _buildSuggestions();
  }

  @override
  String getTitle() {
    return 'Startup Name Generator';
  }
}

class WordListPage extends BaseStatefulPage {
  @override
  WordListViewState createState() => new WordListViewState();
}
