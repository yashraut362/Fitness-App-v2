import 'package:fitness_app_megahack/home/screens/first.dart';
import 'package:fitness_app_megahack/home/screens/second.dart';
import 'package:fitness_app_megahack/home/screens/third.dart';
import 'package:fitness_app_megahack/home/screens/fourth.dart';
import 'package:fitness_app_megahack/home/screens/fifth.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BottomNavBar extends StatefulWidget {
  static const String id ='BottomNavBar';
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  //create all pages

  final Third _sites = new Third();
  final First _dashboard = new First();
  final Second _clients = new Second();
  final Fourth _flutterpages = new Fourth();
  final Fifth _pageother = new Fifth();


Widget _showPage = new First();

Widget _pageChooser(int page){
  switch(page){
    case 0:
    return _dashboard;
    break;
    case 1:
    return _clients;
    break;
    case 2:
    return _sites;
    break;
    case 3:
    return _flutterpages;
    break;
    case 4:
    return _pageother;
    break;
    default: 
    return new Center(
      child: new Center(
        child: new Text(
          '404 Page Not Found',
          style: new TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: pageIndex,
          height: 50.0,
          items: <Widget>[
            Icon(FontAwesomeIcons.shoePrints, size: 23),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.blueAccent,
          buttonBackgroundColor: Colors.blueAccent,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: _showPage,
          ),
        ));
  }
}