import 'package:path_provider/path_provider.dart';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:serb/model/PhotoPathModel.dart';

class TakePhoto extends StatefulWidget {
  final CameraDescription camera;

  TakePhoto({@required this.camera});

  @override
  _TakePhotoState createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {
  CameraController _cameraController;
  Future<void> _initializeCamerController;

  @override
  void initState() {
    // TODO: implement initState
    _cameraController =
        CameraController(widget.camera, ResolutionPreset.medium);
    _initializeCamerController = _cameraController.initialize();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
        future: _initializeCamerController,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_cameraController);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await _initializeCamerController;
            var tempPath = join(
                (await getTemporaryDirectory()).path, '${DateTime.now()}.png');
            await _cameraController.takePicture(tempPath);
            Provider.of<PhotoPathModel>(context, listen: false).path = tempPath;
          } catch (e) {
            print(e);
          }
          Navigator.pop(context);
        },
      ),
    );
  }
}
