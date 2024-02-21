import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:eggtranslate/Main/main_screen.dart';
import 'dart:io';



void _navigateToMainScreen(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()),
  );
}


class SelectImageScreen extends StatefulWidget {
  @override
  _SelectImageScreenState createState() => _SelectImageScreenState();
}

class _SelectImageScreenState extends State<SelectImageScreen> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> _imageFiles = [];

  Future<void> _pickMultipleImages() async {
    final List<XFile>?pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles != null) {
      setState(() {
        for (var file in pickedFiles) {
          if (_imageFiles.length < 9) {
            _imageFiles.add(file);
          }
        }
      });
    }
  }

  void _removeImage(int index) {
    setState(() {
      _imageFiles.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10, bottom: 20),
            icon: Image.asset('images/Homeback.png', width: 25, height: 25,),
            onPressed: () {
              _navigateToMainScreen(context);
            },
          ),
        ],
      ),

      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: 30,),
                  Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black)),
                child: Column(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: Image.asset(
                          'images/photo.png', width: 50, height: 50),
                      onPressed: _pickMultipleImages,
                    ),
                    Text(
                      '${_imageFiles.length}/9',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7E7E7E),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width:28,),
              for (var i = 0; i < _imageFiles.length && i < 2; i++)
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.file(
                        File(_imageFiles[i].path), width: 120, height: 120),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        icon: Icon(Icons.close, color: Colors.white, size: 25),
                        onPressed: () => _removeImage(i),
                      ),
                    ),
                  ],
                ),
            ],
          ),

          for (var j = 2; j < _imageFiles.length && j < 9; j += 3)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var i = j; i < _imageFiles.length && i < j + 3; i++)
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Image.file(
                            File(_imageFiles[i].path), width: 120, height: 120),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(Icons.close, color: Colors.white,
                                size: 25),
                            onPressed: () => _removeImage(i),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),


          Spacer(),
          Container(
            height: 58,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFF6F00),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '등록',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
}