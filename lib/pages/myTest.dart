import 'package:flutter/material.dart';

  class TestDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('test')),
        body: Column(
          children: <Widget>[
            customAlign(),
            // decorateBoxTest(),
            constrainedBox(),           
          ],
        ),
      );
    }

     Widget customAlign(){
      return Align(       
          child: Wrap(
          spacing: 8.0, // 主轴(水平)方向间距
          runSpacing: 4.0, // 纵轴（垂直）方向间距
          alignment: WrapAlignment.center, //沿主轴方向居中
          children: <Widget>[
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('A')),
              label: new Text('Hamilton'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('M')),
              label: new Text('Lafayette'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('H')),
              label: new Text('Mulligan'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('J')),
              label: new Text('Laurens'),
            ),
          ],
        ));
    }

     Widget decorateBoxTest(){
       return DecoratedBox(
         decoration: BoxDecoration(
          //  color:Colors.orangeAccent,
           gradient: LinearGradient(colors:[ Colors.red,Colors.orange[700]]),
           borderRadius: BorderRadius.circular(3.0),
           boxShadow: [BoxShadow(
             color: Colors.black12,
             offset: Offset(2.0, 2.0),
             blurRadius: 4.0,
           )],
         ),
         child: Padding(padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
        child: Text("Login", style: TextStyle(color: Colors.white),),)
       );
     }

    Widget constrainedBox(){
      return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth:40.0,
          maxHeight:30.0,         
        ),
        child: Padding(padding: const EdgeInsets.only(top:10.0),
        child:decorateBoxTest(),
        ),
      );
    }
  }
