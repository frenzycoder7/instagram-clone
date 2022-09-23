import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class ImagePreview extends StatefulWidget {
  XFile file;
  CameraController controller;
  ImagePreview({super.key, required this.file, required this.controller});

  @override
  _ImagePreviewState createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/camera');
              },
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
      ),
      // body: ImagePreview(
      //   file: widget.file,
      // ),
    );
  }
}
