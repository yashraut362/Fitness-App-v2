import 'package:flutter/material.dart';

void main() => runApp(Second());

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Second',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Second'),
        ),
        body: Center(
          child: Text('2'),
        ),
      ),
    );
  }
}