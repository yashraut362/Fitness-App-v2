import 'package:flutter/material.dart';

void main() => runApp(Fifth());

class Fifth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Fifth',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Fifth'),
        ),
        body: Center(
          child: Text('5'),
        ),
      ),
    );
  }
}