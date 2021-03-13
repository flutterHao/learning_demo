import 'package:flutter/material.dart';
import 'tabbar_body.dart';

class KeepAliveBar extends StatefulWidget {
  @override
  _KeepAliveBarState createState() => _KeepAliveBarState();
}

class _KeepAliveBarState extends State<KeepAliveBar> with SingleTickerProviderStateMixin {

  TabController _controller;

  void initState(){
    super.initState();
    _controller=TabController(length: 3, vsync: this);
    print('initState');
  }

  // void dispose(){
  //   super.dispose();
  //   _controller.dispose();
  //    print('dispose');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Tab Bar Test'),
        bottom:TabBar(
          controller: _controller,
          tabs:<Widget>[
            Tab(icon: Icon(Icons.touch_app)),
            Tab(icon:Icon(Icons.toys)),
            Tab(icon:Icon(Icons.assistant_photo)),          
          ]
        ),
      ),
      body:Center(
        child:TabBarView(
          controller: _controller,
          children: <Widget>[          
            BodyPage(),
            BodyPage(),
            BodyPage()        
        ],)
      )
    );
  }
}