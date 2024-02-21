import 'package:eggtranslate/Main/my_information_screen.dart';
import 'package:flutter/material.dart';
import 'package:eggtranslate/Main/main_screen.dart';
import 'package:eggtranslate/Main/components/menu_screen.dart';

class WordScreen extends StatefulWidget {
  const WordScreen({super.key});

  @override
  State<WordScreen> createState() => _WordScreenState();
}

class _WordScreenState extends State<WordScreen> {
  int _currentIndex = 3;
  final TextEditingController _Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
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

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      height: 40,
                      width: 380,
                      child: Row(
                        children: [
                          SizedBox(width: 25,),
                          Flexible(
                            child: TextFormField(
                              controller: _Controller,
                              cursorHeight: 30,
                              cursorWidth: 2,
                              decoration: InputDecoration(
                                hintText: '초등용어를 검색해주세요',
                                hintStyle: TextStyle(
                                  color: Color(0xFF8F9397),
                                  fontSize: 11,
                                  height:2,
                                ),
                                filled: true,
                                fillColor: Color(0xFFF5F6F8),
                                contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Image.asset('images/search.png',width: 8, height: 8,),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              SizedBox(height: 5,),
              Row(
                children: [
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('준비물',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,),),
                      SizedBox(height: 5,),
                      Text('*подготовить:',style: TextStyle(fontSize: 10, color: Color(0xFFF18235),),)
                    ],
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Color(0xFFE8E8E8),
                indent: 1,
                endIndent: 1,
              ),
              Row(
                children: [
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('준비물',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,),),
                      SizedBox(height: 5,),
                      Text('*подготовить:',style: TextStyle(fontSize: 10, color: Color(0xFFF18235),),)
                    ],
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Color(0xFFE8E8E8),
                indent: 1,
                endIndent: 1,
              ),
              Row(
                children: [
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('준비물',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,),),
                      SizedBox(height: 5,),
                      Text('*подготовить:',style: TextStyle(fontSize: 10, color: Color(0xFFF18235),),)
                    ],
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Color(0xFFE8E8E8),
                indent: 1,
                endIndent: 1,
              ),
              Row(
                children: [
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('준비물',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,),),
                      SizedBox(height: 5,),
                      Text('*подготовить:',style: TextStyle(fontSize: 10, color: Color(0xFFF18235),),)
                    ],
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Color(0xFFE8E8E8),
                indent: 1,
                endIndent: 1,
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                }else if (index == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyInformationScreen()),
                  );
                }
              });
            },
            items: [
              BottomNavigationBarItem(icon: Image.asset("images/Homegrey.png", width: 30, height: 30,),label: "홈"),
              BottomNavigationBarItem(icon: Image.asset("images/magnifyingglass.png", width: 23, height: 30,),label: "단어장"),
              BottomNavigationBarItem(icon: Image.asset("images/Talk.png", width: 30, height: 30,),label: "알림톡"),
              BottomNavigationBarItem(icon: Image.asset("images/Mine.png", width: 30, height: 30,),label: "내정보",),
            ]
        )
    );
  }
}
