import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'selectimage_screen.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late List<CameraDescription> _cameras;
  int _selectedCameraIndex = 0;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    _cameras = await availableCameras();
    _controller = CameraController(
      _cameras[_selectedCameraIndex],
      ResolutionPreset.medium,
    );
    return _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            if (!_controller.value.isInitialized) {
              return Container();
            }
            return _buildCameraPreview();
          }
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }


  @override
  Widget _buildCameraPreview() {

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: CameraPreview(_controller),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 1 / 6,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.circle_rounded,color: Color(0xFFE9E9E9),size: 50,),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectImageScreen(),
                        ),
                      );
                    },
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color((0xFFFF6F00),),
                    child: IconButton(
                      icon: Icon(Icons.circle_rounded,color: Color(0xFFFF6F00),),
                      onPressed: () async {
                        try {
                          final path = await _controller.takePicture();
                          Navigator.pop(context, path);
                        } catch (e) {
                          print(e);
                        }
                      },
                    ),
                  ),
                  IconButton(
                    icon: Image.asset('images/Reset.png',width: 30,height: 30,),
                    onPressed: () {
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
