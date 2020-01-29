import 'package:flutter/material.dart';

void main() => runApp(First());

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to First',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to First'),
        ),
        body: Center(
          child: Text('1'),
        ),
      ),
    );
  }
}