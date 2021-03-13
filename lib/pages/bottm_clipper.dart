import 'package:flutter/material.dart';

class BottomClipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(children: <Widget>[
          ClipPath(clipper: BottomClipTest(),
          child: Container(
            color:Colors.blue,
            height:200.0,
          ),
          ),
          Text('贝塞尔曲线',style:TextStyle(fontSize: 20.0)),
        ],)
      )
    );
  }
}

class BottomClipTest extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-50);
    var firstControlPoint=Offset(size.width/4, size.height);
    var firstEndPoint=Offset(size.width/2, size.height-50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    var secondControlPoint=Offset(size.width/4*3, size.height-100);
    var seocondEndPoint=Offset(size.width, size.height-60);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, seocondEndPoint.dx, seocondEndPoint.dy);
    
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
 
}