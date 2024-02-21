import 'package:flutter/material.dart';
import 'package:eggtranslate/Main/components/pre_setting.dart';
import 'package:eggtranslate/Main/main_screen.dart';
import 'package:eggtranslate/Main/components/choose_screen.dart';
import 'package:eggtranslate/Main/components/word_screen.dart';


class MyInformationScreen extends StatefulWidget {
  const MyInformationScreen({super.key});

  @override
  State<MyInformationScreen> createState() => _MyInformationScreenState();
}

class _MyInformationScreenState extends State<MyInformationScreen> {
  int _currentIndex = 3;
  final TextEditingController _pnameController = TextEditingController();
  final TextEditingController _cnameController1 = TextEditingController();
  final TextEditingController _cnameController2 = TextEditingController();
  final TextEditingController _pcontactController = TextEditingController();
  final TextEditingController _ccontactController1 = TextEditingController();
  final TextEditingController _ccontactController2 = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _classController = TextEditingController();
  final TextEditingController _schoolController1 = TextEditingController();
  final TextEditingController _schoolController2 = TextEditingController();
  final TextEditingController _gradeController = TextEditingController();


  void _showModalBottomSheet(){
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.36,
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: PreSetting(),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 200,
                  top: 0,
                  left: 315,
                  right: 0,
                  child: Center(
                    child : InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      } ,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset('images/Close.png', width: 20, height: 20,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var inputWidget =Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 95),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
    );
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(padding: EdgeInsets.only(right: 10, bottom: 25),
              icon: Image.asset('images/more.png', width: 20, height: 20,),
              onPressed: _showModalBottomSheet,
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('images/Expert.png',width: 30, height: 30,),
                        SizedBox(width:40),
                        Text('Việt Nam', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChooseScreen()),
                        );
                      },
                      child: Image.asset('images/add.png', width: 35, height: 35,),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Color(0xFFD5D5D5),
                  indent: 1,
                  endIndent: 1,
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('images/woman.png', width: 30, height: 30,),
                        SizedBox(height: 5,),
                        Text('학부모', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,),),
                        SizedBox(height: 60,),
                      ],
                    ),
                    SizedBox(width: 30,),
                    Flexible(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('이름', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 45,),
                              Flexible(
                                child: SizedBox(
                                  height: 34,
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12,),
                                    controller: _pnameController,
                                    cursorWidth: 2,
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: '타오',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Color(0xFF999999), width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('연락처', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 25,),
                              Flexible(
                                child: SizedBox(
                                  height: 34,
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12,),
                                    controller: _pcontactController,
                                    cursorWidth: 2,
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: '010-2854-8548',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Colors.grey, width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('이메일', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 25,),
                              Flexible(
                                child: SizedBox(
                                  height: 34,
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12,),
                                    controller: _emailController,
                                    enabled: false,
                                    cursorWidth: 2,
                                    decoration: InputDecoration(
                                      hintText: '7845rfwe@gmail.com',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Color(0xFF999999), width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 25,
                  thickness: 1,
                  color: Color(0xFFD5D5D5),
                  indent: 1,
                  endIndent: 1,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('images/girl.png', width: 30, height: 30,),
                        SizedBox(height: 5,),
                        Text('자녀', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,),),
                        SizedBox(height: 200,),
                      ],
                    ),
                    SizedBox(width: 40,),
                    Flexible(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('이름', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 45,),
                              Flexible(
                                child: SizedBox(
                                  height: 34,
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12,),
                                    controller: _cnameController1,
                                    cursorWidth: 2,
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: '이반',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Color(0xFF999999), width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('연락처', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 25,),
                              Flexible(
                                child: SizedBox(
                                  height: 34,
                                  child: TextFormField(
                                    controller: _ccontactController1,
                                    style: TextStyle(fontSize: 12,),
                                    cursorWidth: 2,
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: '010-8485-7845',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Color(0xFF999999), width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('학교', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 45,),
                              Flexible(
                                child: SizedBox(
                                  height: 34,
                                  child: TextFormField(
                                    controller: _schoolController1,
                                    style: TextStyle(fontSize: 12,),
                                    cursorWidth: 2,
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: '내동초등학교',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Color(0xFF999999), width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('학년', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 45,),
                              Flexible(
                                child: SizedBox(
                                  height: 34,
                                  child: TextFormField(
                                    controller: _gradeController,
                                    style: TextStyle(fontSize: 12,),
                                    cursorWidth: 2,
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: '4학년',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Color(0xFF999999), width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('반', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 65,),
                              Flexible(
                                child: SizedBox(
                                  height: 34,
                                  child: TextFormField(
                                    controller: _classController,
                                    style: TextStyle(fontSize: 12,),
                                    cursorWidth: 2,
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: '1반',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Color(0xFF999999), width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('성별', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 45,),
                              Flexible(
                                child: SizedBox(
                                  height: 34,
                                  width: 85,
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12,),
                                    controller: _pnameController,
                                    cursorWidth: 2,
                                    textAlign: TextAlign.center,
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: '남',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 11,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Color(0xFF999999), width: 1),
                                      ),
                                ),
                              ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: Color(0xFFD5D5D5),
                  indent: 1,
                  endIndent: 1,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('images/girl.png', width: 30, height: 30,),
                        SizedBox(height: 5,),
                        Text('자녀', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,),),
                        SizedBox(height: 60,),
                      ],
                    ),
                    SizedBox(width: 40,),
                    Flexible(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('이름', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 50,),
                              Flexible(
                                child: SizedBox(
                                  height: 34,
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12,),
                                    controller: _cnameController2,
                                    cursorWidth: 2,
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: '마리아',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Color(0xFF999999), width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('연락처', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 30,),
                              Flexible(
                                child: SizedBox(
                                  height: 34,
                                  child: TextFormField(
                                    controller: _ccontactController2,
                                    style: TextStyle(fontSize: 12,),
                                    cursorWidth: 2,
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: '010-8485-7845',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Color(0xFF999999), width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('학교', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 50,),
                              Flexible(
                                child: SizedBox(
                                  height: 34,
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12,),
                                    controller: _schoolController2,
                                    cursorWidth: 2,
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: '미동초등학교',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Color(0xFF999999), width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
                }else if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WordScreen()),
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