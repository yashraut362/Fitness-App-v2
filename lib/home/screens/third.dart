import 'package:flutter/material.dart';

void main() => runApp(Third());

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Third',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Third'),
        ),
        body: Center(
          child: Text('3'),
        ),
      ),
    );
  }
}