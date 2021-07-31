import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello world',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
