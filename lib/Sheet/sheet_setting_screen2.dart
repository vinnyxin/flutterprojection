import 'package:flutter/material.dart';
import 'package:caddycum/Common/calendar_screen.dart';

class SheetSettingScreen2 extends StatefulWidget {
  const SheetSettingScreen2({super.key});

  @override
  State<SheetSettingScreen2> createState() => _SheetSettingScreen2State();
}

class _SheetSettingScreen2State extends State<SheetSettingScreen2> {
  bool _isCrossIconVisible = false;
  bool _isPopupOpen = false;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: IconButton(
                onPressed :() {
                },
                icon: Image.asset('images/more.png',width: 20, height: 20,),
              ),
            ),
          ],
        ),

        floatingActionButton: Container(
          width: 50,
          height: 50,
          child: FloatingActionButton(
            child:Icon(Icons.add,color: Colors.white,size: 40,),
            backgroundColor:Color(0xFF1BAA00),
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
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            width: 360,
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                   Container(
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(30),
                     ),
                       child: Image.asset('images/sign.png',width: 60,height: 60,),
                   ),
                 Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 15,),
                      Text('일라이트 CC',style: TextStyle(color: Colors.black, fontSize: 11),),
                      Text('125,000',style: TextStyle(color: Colors.black, fontSize: 11),),
                    ],
                  ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 15,),
                    Text('캐디',style: TextStyle(color: Colors.black, fontSize: 11),),
                    Text('70',style: TextStyle(color: Colors.black, fontSize: 11),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Text('코스',style: TextStyle(color: Colors.black, fontSize: 11),),
                    Text('S코스 , G코스',style: TextStyle(color: Colors.black, fontSize: 11),),
                  ],
                ),
            ]
            ),
          ),
          Expanded(child: SingleChildScrollView(child: CustomCalendar())),
        ],
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Image.asset("images/green_home.png", width: 30, height: 30,),label: "홈"),
        BottomNavigationBarItem(icon: Image.asset("images/heart.png", width: 30, height: 30,),label: "보기"),
        BottomNavigationBarItem(icon: Image.asset("images/check.png", width: 30, height: 30,),label: "관리"),
        BottomNavigationBarItem(icon: Image.asset("images/flag.png", width: 30, height: 30,),label: "설정",),
      ],
      selectedItemColor: Color(0xFF1BAA00),
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
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('images/contact.png', width: 30, height: 30),
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
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('images/caddie.png', width: 30, height: 30),
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