import 'package:flutter/material.dart';

class Temp extends StatefulWidget {
  @override
  _TempState createState() => _TempState();
}

class _TempState extends State<Temp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Center(
                child: Text('Ok this is test page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
