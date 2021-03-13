import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar:AppBar(title:Text('ExpansionTile Demo')),
        body:Center(
            child: ExpansionTile(
            title: Text('ExpansionTile'),
            leading:Icon(Icons.ac_unit),
            backgroundColor: Colors.white10,
            children: <Widget>[
              ListTile(
                title:Text('listTile'),
                subtitle:Text('subTitle')
              ),
              ListTile(
                title:Text('listTile'),
                subtitle:Text('subTitle')
              )
            ],
            initiallyExpanded:true
            )
        ),
      ),
    );
  }
}