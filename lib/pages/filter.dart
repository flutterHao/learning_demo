import 'dart:ui';

import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '图片过滤器',
      home: Scaffold(
        appBar: AppBar(title: Text('backdropFilter')),
        body: FilterTest(),
      ),
    );
  }
}

class FilterTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Image.asset(
            "lib/images/girl1.jpg",
          ),
        ),
        Center(
            child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Opacity(
              opacity: 0.5,
              child: Container(
                width: 500,
                height: 400,
                decoration: BoxDecoration(color: Colors.grey.shade100),
                child: Center(child: Text('FilterTest')),
              ),
            ),
          ),
        ))
      ]),
    );
  }
}
