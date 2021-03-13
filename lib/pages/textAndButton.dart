import 'package:flutter/material.dart';
// import 'myIcons.dart';

class DemoT extends StatelessWidget {
  final textStyle = const TextStyle(
    fontSize: 20.0,
    fontFamily: 'Schyler',
  );
  final textStyle1 = const TextStyle(
    fontSize: 20.0,
    fontFamily: 'Trajan Pro',
  );
  void _onPressed() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('textT'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[    
              test(),     
              buttonRow(),
              imageRow(),
              iconsRow(),
            ],
          ),
        ));
  }

  Widget test(){
    return Padding(
      padding: const EdgeInsets.all(0.0),
    child: Column(
      children:<Widget>[
        Text("哈哈哈哈哈哈哈哈哈", style: textStyle),
              Text("哈哈哈哈哈哈哈哈哈", style: textStyle1),
              IconButton(
                icon: Icon(Icons.ac_unit),
                onPressed: () {},
              ),
      ]
    ),
    );
  }

  Widget buttonRow() {//按钮
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton.icon(
          color: Colors.green,
          textColor: Colors.white,
          icon: Icon(Icons.send),
          label: Text("发送"),
          onPressed: _onPressed,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text("添加"),
          color: Colors.red,
          textColor: Colors.white,
          onPressed: _onPressed,
        ),
        FlatButton.icon(
          color: Colors.blue,
          textColor: Colors.white,
          icon: Icon(Icons.info),
          label: Text("详情"),
          onPressed: _onPressed,
          splashColor: Colors.deepPurple,
          colorBrightness: Brightness.dark,
        ),
        RaisedButton(
            color: Colors.blue,
            // textColor: Colors.white,
            child: Text("Submit"),
            // icon: Icon(Icons.info),
            onPressed: _onPressed,
            splashColor: Colors.deepPurple,
            colorBrightness: Brightness.dark,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )),
      ],
    );
  }

  Widget imageRow() {//图片
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'lib/images/cat.png',
          width: 100.0,
          height: 100.0,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'lib/images/girl.jpg',
           width: 100.0,
          height: 100.0,
          fit: BoxFit.cover,
        )
      ],
    );
  }

  Widget iconsRow(){//图标
    return Padding(padding: const EdgeInsets.all(10.0),
      child: Wrap(
        // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

            Icon(Icons.accessible,color: Colors.black,size:50),
            Icon(Icons.error,color: Colors.red,size:50),
            Icon(Icons.fingerprint,color: Colors.grey,size:50),
            Icon(Icons.search,color: Colors.blue,size:50),
            Icon(Icons.arrow_downward,color: Colors.green,size:50),
            Icon(Icons.sentiment_dissatisfied,color: Colors.yellow[700],size:50),
            Icon(Icons.star,color: Colors.yellow[500],size:50),      
      ],
    ),
    );
  }
}


class MyIcons{
  MyIcons._();
  // book 图标
  static const IconData book = const IconData(
      0xe635, 
      fontFamily: 'myIcon', 
      matchTextDirection: true
  );
  // 微信图标
  static const IconData wechat = const IconData(
      0xe63c,  
      fontFamily: 'myIcon', 
      matchTextDirection: true
  );
  static const IconData wechat1 = const IconData(
      0xe641,  
      fontFamily: 'myIcon', 
      matchTextDirection: true
  );
}