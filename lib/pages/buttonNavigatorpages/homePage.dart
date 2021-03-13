import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Container(
        color: Colors.grey[100],
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 6,
            crossAxisSpacing: 6,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            return _item(context);
          },
          itemCount: 12,
        ),
      ),
    );
  }

  Widget _item(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage();
          }));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.access_time,
                  color: Colors.blue,
                  size: 50,
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "加班申请",
                      style: TextStyle(fontSize: 15),
                    )),
              ]),
        ));
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('detail')),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
                childAspectRatio: 0.9,
            ),
            itemCount: 12,
            itemBuilder: (context, index) {
              return _item();
            }),
      ),
    );
  }

  Widget _item() {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.check,
              color: Colors.blue,
              size: 40,
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "加班申请",
                  style: TextStyle(fontSize: 15),
                )),
          ]),
    );
  }
}
