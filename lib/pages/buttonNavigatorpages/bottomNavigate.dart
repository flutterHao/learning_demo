import 'package:flutter/material.dart';

import 'email.dart';
import 'homePage.dart';
import 'lifePage.dart';
import 'workPage.dart';

class BottomNavigate extends StatefulWidget {
  BottomNavigate({Key key}) : super(key: key);

  @override
  _BottomNavigateState createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<BottomNavigate> {
  final buleColor = Colors.blue;
  int _currentIndex = 0;
  // var currentPage;
  List<Widget> pageList = List();
  @override
  void initState() {
    pageList
      ..add(HomePage())
      ..add(EmailPage())
      ..add(LifePage())
      ..add(WorkPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  body: pageList[_currentIndex],
      body: pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: buleColor,
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: buleColor,
                ),
                label: "Email"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: buleColor,
                ),
                label: "Pages"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color: buleColor,
                ),
                label: "AipPlay"),
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.shifting),
    );
  }
}
