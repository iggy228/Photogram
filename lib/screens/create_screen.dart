import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  CameraController? controller;

  void initCamera() async {
    List<CameraDescription> cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {
      });
    });
  }

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: controller == null ? const Text('') : CameraPreview(
        controller!,
        child: Container(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(99.9),
              border: Border.all(color: Colors.grey)
            ),
            child: IconButton(
              iconSize: 42.0,
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.camera)
            ),
          ),
        ),
      )
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }
}
