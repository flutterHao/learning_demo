import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  List<Widget>imageList;

  void initState(){
    super.initState();
    imageList=List<Widget>()..add(buildAddButton())..add(buildRemoveButton());
  }

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title:Text('Wrap流式布局'),       
      ),
      body: Center(
          child: Opacity(opacity: 0.8,
          child:Container(
            height:height,
            width:width,
            color: Colors.grey[200],
            child:Wrap(
              spacing:20.0,
              children:imageList
            )
          )
          ),
      ),
    );
  }

  Widget buildAddButton(){
    return GestureDetector(
      onTap: (){
        if(imageList.length<16){
          setState(() {
          imageList.insert(imageList.length-1, buildImage());
        });
        }
      },
      child: Padding(padding: const EdgeInsets.all(10.0),
      child:Container(
        height:100.0,
        width:100.0,
        color:Colors.green,
        child: Icon(
          Icons.add,
          color:Colors.white
        ),
      )
      ),
    );
  }

   Widget buildRemoveButton(){
    return GestureDetector(
      onTap: (){
        if(imageList.length>2){
          setState(() {
          // imageList.insert(imageList.length-2, buildImage());
          // imageList.remove(buildImage());
          imageList.removeAt(imageList.length-2);
        });
        }
      },
      child: Padding(padding: const EdgeInsets.all(10.0),
      child:Container(
        height:100.0,
        width:100.0,
        color:Colors.red,
        child: Icon(
          Icons.remove,
          color:Colors.white
        ),
      )
      ),
    );
  }

  Widget buildImage(){
    return Padding(padding: const EdgeInsets.all(10.0),
    child: Container(
      height:100.0,
      width:100.0,
      // color: Colors.blue[500]
        child:Image.asset("lib/images/girl1.jpg",
        scale: 2.0,
        fit: BoxFit.cover,
        )    
    ),
    );
  }
}