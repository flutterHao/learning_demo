import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('首页')),
      body:Center(
        child: Column(
          children: <Widget>[
            Text('我是首页'),
            IconButton(icon: Icon(Icons.flip_to_front,color: Colors.red,),
            onPressed: (){
              Navigator.of(context).pop();
            },
            )
          ],
        ),
      )
    );
  }
}