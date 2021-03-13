import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RightBackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      child: Center(
        child:Container(
          width:500.0,
          height: 1500.0,
          color: Colors.black87,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[            
            Container(
                height:400.0,
                width:300.0,             
                child: Tooltip(
          message: '长按复制图片',
          child: Image.asset("lib/images/bg.png",
            scale: 2.0,
            fit: BoxFit.cover,
            ),
        ),       
          ),
           CupertinoButton(child: Icon(CupertinoIcons.add,color: CupertinoColors.white,),
          onPressed: (){
            Navigator.of(context).push(CupertinoPageRoute(builder:(BuildContext context){
              return RightBackDemo();
            } ));
          },
          ),     
            ],
          )
        )
      )
    );
  }
}