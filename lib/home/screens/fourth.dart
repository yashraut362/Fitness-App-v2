import 'package:flutter/material.dart';

void main() => runApp(Fourth());

class Fourth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Fourth',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Fourth'),
        ),
        body: Center(
          child: Text('4'),
        ),
      ),
    );
  }
}