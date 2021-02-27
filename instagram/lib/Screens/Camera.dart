import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram/Widget/CameraOptions.dart';
import 'package:instagram/Widget/ImagePreview.dart';

class CameraScreen extends StatefulWidget {
  var cameras;
  CameraScreen({this.cameras});

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController controller;
  XFile imageFile;
  bool isRear = true;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void changeCamera() async {
    if (isRear)
      isRear = false;
    else
      isRear = true;
    controller = new CameraController(
        isRear ? widget.cameras[0] : widget.cameras[1], ResolutionPreset.low);
    controller.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  Future<XFile> takePicture() async {
    if (!controller.value.isInitialized) {
      showInSnackBar('Error: select a camera first.');
      return null;
    }

    if (controller.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      XFile file = await controller.takePicture();

      return file;
    } on CameraException catch (e) {
      _showCameraException(e);
      return null;
    }
  }

  void onTakePictureButtonPressed() {
    takePicture().then((XFile file) {
      if (mounted) {
        print(file);
        setState(() {
          imageFile = file;
        });
        if (file != null) showInSnackBar('Picture saved to ${file.path}');
      }
    });
  }

  void _showCameraException(CameraException e) {
    logError(e.code, e.description);
    showInSnackBar('Error: ${e.code}\n${e.description}');
  }

  void logError(String code, String message) =>
      print('Error: $code\nError Message: $message');
  void showInSnackBar(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  void initState() {
    super.initState();
    controller = new CameraController(
        isRear ? widget.cameras[0] : widget.cameras[1], ResolutionPreset.low);
    controller.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Scaffold();
    }
    return Card(
      child: InkWell(
        onDoubleTap: () => changeCamera(),
        child: imageFile != null
            ? ImagePreview(
                file: imageFile,
                controller: controller,
              )
            : AspectRatio(
                aspectRatio: 19 / 9,
                child: CameraPreview(
                  controller,
                  child: Scaffold(
                    key: _scaffoldKey,
                    backgroundColor: Colors.transparent,
                    appBar: AppBar(
                      backgroundColor: Colors.transparent,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.settings),
                            iconSize: 35,
                            color: Colors.white,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.bolt),
                            onPressed: () => changeCamera(),
                            iconSize: 35,
                            color: Colors.white,
                          ),
                          IconButton(
                            icon: Icon(Icons.close),
                            color: Colors.white,
                            iconSize: 35,
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                            },
                          ),
                        ],
                      ),
                    ),
                    body: Container(
                      // height: MediaQuery.of(context).size.height,
                      padding: EdgeInsets.all(0),
                      margin: EdgeInsets.all(0),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 9,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 20),
                              color: Colors.transparent,
                              child: CameraOptions(),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.topCenter,
                              child: IconButton(
                                icon: Icon(Icons.camera),
                                iconSize: 70,
                                onPressed: () {
                                  onTakePictureButtonPressed();
                                },
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoRjImL2bACL16BFKr1yseggZ0-xHlKrQU5Q&usqp=CAU'),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 4,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Story',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      icon: Icon(Icons.flip_camera_android),
                                      onPressed: () {
                                        changeCamera();
                                      },
                                      iconSize: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
