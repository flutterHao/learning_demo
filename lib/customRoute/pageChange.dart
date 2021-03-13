import 'package:flutter/material.dart';
import 'custom_route.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title:Text('FirstPage')
      ),
      body: Center(
        child: MaterialButton(
          child: Icon( Icons.navigate_next,color: Colors.white,size: 60.0,),
          onPressed: (){
          Navigator.of(context).push(
            CustomRoute(SecondPage())
          );
        }),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
      appBar: AppBar(    
        title:Text('SecondPage')
        ,backgroundColor: Colors.purple,
        elevation:0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon( Icons.navigate_before,color: Colors.white,size:60.0),
          onPressed: (){
          Navigator.of(context).pop();
        }),
      ),
    );
  }
}