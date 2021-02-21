import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:camera/camera.dart';

class CameraProvider extends ChangeNotifier {
  List<CameraDescription> cameras = [];
  CameraController cameraController;
  bool isRear = true;

  void setCameraList(var camera) async {
    cameras = camera;
  }

  Future<CameraController> createCameraController() async {
    return cameraController = new CameraController(
        isRear ? cameras[0] : cameras[1], ResolutionPreset.medium);
  }

  void changeCamera() async {
    if (isRear)
      isRear = false;
    else
      isRear = true;
    cameraController = new CameraController(
        isRear ? cameras[0] : cameras[1], ResolutionPreset.low);
    cameraController.initialize().then((value) {
      notifyListeners();
    });
  }
}
