import 'package:flutter/material.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';

class ScannerTackPhote extends StatefulWidget {
  @override
  _ScannerTackPhoteState createState() => _ScannerTackPhoteState();
}

class _ScannerTackPhoteState extends State<ScannerTackPhote> {
  @override
  void initState() {
    super.initState();
    FlutterMobileVision.start().then((previewSizes) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    List<Face> faces = [];
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('test')),
        body: Container(
          child: FlatButton(
              onPressed: () async {
                try {
                  faces = await FlutterMobileVision.face(
                    flash: true,
                    autoFocus: true,
                    multiple: true,
                    showText: true,
                    preview: Size(100, 100),
                    camera: 1,
                    fps: 15.0,
                  );
                } on Exception {
                  faces.add(new Face(-1));
                }
              },
              child: Text('ttt')),
        ),
      ),
    );
  }
}
