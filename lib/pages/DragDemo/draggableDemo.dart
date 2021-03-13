import 'package:flutter/material.dart';
import 'draggable_widget.dart';

class DraggableDemo extends StatefulWidget {
  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color _draggableColor = Colors.deepPurple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('拖拽控件')),
      body: Stack(
        children: <Widget>[
          DraggableWidget(
            offset: Offset(100.0, 80.0),
            widgetColor: Colors.blue,
          ),
          DraggableWidget(
            offset: Offset(220.0, 80.0),
            widgetColor: Colors.deepOrange,
          ),
          Center(
            child: DragTarget(
              onAccept: (Color color) {
                _draggableColor = color;
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  height: 220.0,
                  width: 220.0,
                  color: _draggableColor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
