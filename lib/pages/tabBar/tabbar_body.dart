import 'package:flutter/material.dart';

class BodyPage extends StatefulWidget {
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage>
// with AutomaticKeepAliveClientMixin
{
  int _count = 0;

  // @override
  // bool get wantKeepAlive => true;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text('test count the press times'), Text('$_count')],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCount,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
