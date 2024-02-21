import "package:flutter/material.dart";
import "package:eggtranslate/Main/components/camera_screen.dart";
import "package:eggtranslate/Main/components/selectimage_screen.dart";
import 'package:eggtranslate/Main/Teacher/teacher_main_screen.dart';
import 'package:eggtranslate/Main/User/user_main_screen.dart';
import 'package:eggtranslate/Main/my_information_screen.dart';
import 'package:eggtranslate/Main/components/menu_screen.dart';
import 'package:eggtranslate/Main/components/input_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _isCrossIconVisible = false;
  bool _isPopupOpen = false;
  String mode = 'user';
  int _currentIndex = 0;

  void _updateBottomNavigationBar() {
    if (_currentIndex == 3) {
      _currentIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title:  Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child:Row(children: [Image.asset('images/people.png',width: 30,), SizedBox(width: 10,),Text("알번역", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
            ),],)
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenuScreen(),
                          ),
                        );
                      },
                      child: Image.asset('images/1.png', width: 20, height: 10,),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenuScreen(),
                          ),
                        );
                      },
                      child: Image.asset('images/2.png', width: 40, height: 10,),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenuScreen(),
                          ),
                        );
                      },
                      child: Image.asset('images/3.png', width: 40, height: 10,),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          mini: true,
          child:Text(
            "번역",
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          backgroundColor:Color(0xFF003AFF),
          onPressed: () {
            setState(() {
              _isCrossIconVisible = !_isCrossIconVisible;
            });
            if (_isCrossIconVisible) {
              _showTranslatePopup(context);
              _isPopupOpen = true;
            } else {
              _isPopupOpen = false;
            }
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),

body: (mode == 'teacher') ? TeacherMainScreen() : UserMainScreen(),

        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: (_currentIndex == 0) ? Colors.orange : Colors.grey,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                _updateBottomNavigationBar();
                if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputScreen()),
                  ).then((value) {
                    _currentIndex = 0;
                    _updateBottomNavigationBar();
                  });
                } else if(index == 3){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyInformationScreen()),
                  ).then((value)
                  {
                    _currentIndex = 0;
                    _updateBottomNavigationBar();
                  });
                }
              });
            },
            items: [
              BottomNavigationBarItem(icon: Image.asset("images/Home.png", width: 30, height: 30,),label: "홈"),
              BottomNavigationBarItem(icon: Image.asset("images/Check.png", width: 30, height: 30,),label: "리스트"),
              BottomNavigationBarItem(icon: Image.asset("images/Talk.png", width: 30, height: 30,),label: "알림톡"),
              BottomNavigationBarItem(icon: Image.asset("images/Mine.png", width: 30, height: 30,),label: "내정보"),

            ]
        )
    );
  }

  void _showTranslatePopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
            children: [
            Positioned(
            bottom:130,
            right: 20,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(10),
            width: 150,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(); // Close the dialog
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CameraScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('images/camera.png', width: 30, height: 30),
                      const SizedBox(width: 20),
                      Text(
                        "사진",
                        style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(); // Close the dialog
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectImageScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('images/photo.png', width: 30, height: 30),
                      const SizedBox(width: 20),
                      Text(
                        "이미지",
                        style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
              ]
            ),
            ),
              Positioned(bottom:80,right:16,
                  child: FloatingActionButton.small(onPressed: (){
                    setState(() {
                _isCrossIconVisible = !_isCrossIconVisible;
                Navigator.pop(context);
              });
                  },
                  backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.close_outlined),
                  ))
            ],

        );
      },
    );
  }

}

