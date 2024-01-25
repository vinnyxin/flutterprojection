import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:golf/Main/revision_screen1.dart';

class AddPicture extends StatefulWidget {
  const AddPicture({super.key});

  @override
  State<AddPicture> createState() => _AddPictureState();
}

class _AddPictureState extends State<AddPicture> {
  TextEditingController _nameController = TextEditingController();
  List<TextEditingController> controllers = [];
  bool initialInputAdded = false;

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


  void initState() {
    super.initState();
    if (!initialInputAdded) {
      controllers.add(TextEditingController());
      initialInputAdded = true;
    }
  }

  void _removeTextField(int index) {
    setState(() {
      controllers.removeAt(index);
    });
  }

  void _removeImage(int index) {
    setState(() {
      _imageFiles.removeAt(index);
    });
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('images/Back.png', width: 20, height: 20),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed :() {
            },
            icon: Image.asset('images/Home.png',width: 25, height: 25,),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Text('레스토랑', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
          SizedBox(width: 45,),
          Flexible(
            child: SizedBox(
              height: 38,
              width: 250,
              child: TextFormField(
                style: TextStyle(fontSize: 12,),
                controller: _nameController,
                cursorWidth: 2,
                decoration: InputDecoration(
                  hintText: ' 조식',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xFF1BAA00), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xFFE1E1E1), width: 1),
                  ),
                ),
              ),
            ),
          ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Color(0xFF707070))),
                    child: Column(
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          icon: Image.asset(
                              'images/camera.png', width: 30, height: 30),
                          onPressed: _pickMultipleImages,
                        ),
                        Text(
                          '${_imageFiles.length}/3',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
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
                            File(_imageFiles[i].path), width: 115, height: 130),
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
                                File(_imageFiles[i].path), width: 115, height: 130),
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
              SizedBox(height: 30,),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: controllers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.topRight,
                         children :[
                         Container(
                          height: 50,
                          width: 350,
                          child: TextFormField(
                            controller: controllers[index],
                            cursorWidth: 2,
                            decoration: InputDecoration(
                              hintText: '  내용을 입력해주세요',
                              hintStyle: TextStyle(
                                color: Color(0xFF9A9A9A),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Color(0xFF1BAA00), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Color(0xFFE1E1E1), width: 1),
                              ),
                            ),
                          ),
                        ),
                           Positioned(
                             top: -8,
                             right: -8,
                             child: Container(
                               width: 25,
                               height: 25,
                               decoration: BoxDecoration(
                                 color: Colors.black,
                                 borderRadius: BorderRadius.circular(25),
                               ),
                               child: IconButton(
                                 padding: EdgeInsets.zero,
                                 constraints: BoxConstraints(),
                                 icon: Icon(Icons.close, color: Colors.white, size: 20),
                                 onPressed: () => _removeTextField(index),
                               ),
                             ),
                           ),
                        ]
                      ),
                    );
                  },
                ),

              SizedBox(height: 20),
              SizedBox(
                height: 40,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controllers.add(TextEditingController());
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Color(0xFF1BAA00),),
                    ),
                  ),
                  child: Text('내용추가',style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold,),),
                ),
              ),

            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RevisionScreen1(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF1BAA00),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              '저장',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),

    );
  }
}
