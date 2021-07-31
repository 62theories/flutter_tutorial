import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      home: SafeArea(
        child: MyScaffold(),
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
              title: Text(
            'Example title',
            style: Theme.of(context).primaryTextTheme.headline6,
          )),
          Expanded(
              child: Center(
            child: Text('hello world'),
          ))
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, Key? key}) : super(key: key);

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: 'Navigation menu',
          ),
          Expanded(child: title),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
            tooltip: null,
          )
        ],
      ),
    );
  }
}
