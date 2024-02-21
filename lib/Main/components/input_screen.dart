import 'package:flutter/material.dart';
import 'package:eggtranslate/Main/components/choose_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _contractController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _schoolController = TextEditingController();
  TextEditingController _gradeController = TextEditingController();
  TextEditingController _classController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _moreaddressController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                        Image.asset('images/china.png',width: 65, height: 65,),
                        SizedBox(width: 15,),
                        Text('한국어', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
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
                SizedBox(height: 5,),
                Divider(
                  height: 20,
                  thickness: 1,
                  color: Color(0xFFD5D5D5),
                  indent: 1,
                  endIndent: 1,
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Container(
                      height: 380,
                      width: 60,
                      child: Stack(
                        children: [
                          Image.asset('images/people.png', width: 55, height: 55,),
                        ],
                      ),
                    ),
                      SizedBox(width: 25,),
                      Flexible(
                        child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Transform.scale(
                                        alignment: Alignment.topLeft,
                                      scale: 0.7,
                                      child: Badge(backgroundColor: Colors.orange),
                                    ),
                                    Text('이름', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                                  ],
                                ),
                                SizedBox(width: 30,),
                                Flexible(
                                  child: SizedBox(
                                    height: 38,
                                    child: TextFormField(
                                      style: TextStyle(fontSize: 12,),
                                      controller: _nameController,
                                      cursorWidth: 2,
                                      decoration: InputDecoration(
                                        hintText: '이름을 입력해주세요',
                                        hintStyle: TextStyle(
                                          color: Color(0xFFB8B8B8),
                                          fontSize: 12,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: BorderSide(color: Color(0xFF000000), width: 1),
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
                                Stack(
                                    children: [
                                      Transform.scale(
                                        alignment: Alignment.topLeft,
                                        scale: 0.7,
                                        child: Badge(backgroundColor: Colors.orange),
                                      ),
                                      Text('연락처', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                                    ]
                                ),
                                SizedBox(width: 11,),
                                Flexible(
                                  child: SizedBox(
                                    height: 38,
                                    child: TextFormField(
                                      style: TextStyle(fontSize: 12,),
                                      controller: _contractController,
                                      cursorWidth: 2,
                                      decoration: InputDecoration(
                                        hintText: '연락처를 입력해주세요',
                                        hintStyle: TextStyle(
                                          color: Color(0xFFB8B8B8),
                                          fontSize: 12,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: BorderSide(color: Color(0xFF000000), width: 1),
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
                                SizedBox(width: 11,),
                                Flexible(
                                  child: SizedBox(
                                    height: 38,
                                    child: TextFormField(
                                      style: TextStyle(fontSize: 12,),
                                      controller: _emailController,
                                      cursorWidth: 2,
                                      decoration: InputDecoration(
                                        hintText: '이메일을 입력해주세요',
                                        hintStyle: TextStyle(
                                          color: Color(0xFFB8B8B8),
                                          fontSize: 12,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: BorderSide(color: Color(0xFF000000), width: 1),
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
                                Stack(
                                  children: [
                                    Transform.scale(
                                      alignment: Alignment.topLeft,
                                      scale: 0.7,
                                      child: Badge(backgroundColor: Colors.orange),
                                    ),
                                    Text('학교', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                                  ],
                                ),
                                SizedBox(width: 30,),
                                Flexible(
                                  child: SizedBox(
                                    height: 38,
                                    child: TextFormField(
                                      style: TextStyle(fontSize: 12,),
                                      controller: _schoolController,
                                      cursorWidth: 2,
                                      decoration: InputDecoration(
                                        hintText: '학교을 입력해주세요',
                                        hintStyle: TextStyle(
                                          color: Color(0xFFB8B8B8),
                                          fontSize: 11,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: BorderSide(color: Color(0xFF000000), width: 1),
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
                                Stack(
                                  children: [
                                    Transform.scale(
                                      alignment: Alignment.topLeft,
                                      scale: 0.7,
                                      child: Badge(backgroundColor: Colors.orange),
                                    ),
                                    Text('학년', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                                  ],
                                ),
                                SizedBox(width: 30,),
                                Flexible(
                                  child: SizedBox(
                                    height: 38,
                                    child: TextFormField(
                                      style: TextStyle(fontSize: 12,),
                                      controller: _gradeController,
                                      cursorWidth: 2,
                                      decoration: InputDecoration(
                                        hintText: '학년을 입력해주세요',
                                        hintStyle: TextStyle(
                                          color: Color(0xFFB8B8B8),
                                          fontSize: 12,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: BorderSide(color: Color(0xFF000000), width: 1),
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
                                Stack(
                                  children: [
                                    Transform.scale(
                                      alignment: Alignment.topLeft,
                                      scale: 0.7,
                                      child: Badge(backgroundColor: Colors.orange),
                                    ),
                                    Text('반', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                                  ],
                                ),
                                SizedBox(width: 49),
                                Flexible(
                                  child: SizedBox(
                                    height: 38,
                                    child: TextFormField(
                                      style: TextStyle(fontSize: 12,),
                                      controller: _classController,
                                      cursorWidth: 2,
                                      decoration: InputDecoration(
                                        hintText: '학반을 입력해주세요',
                                        hintStyle: TextStyle(
                                          color: Color(0xFFB8B8B8),
                                          fontSize: 12,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: BorderSide(color: Color(0xFF000000), width: 1),
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
                                Text('과목', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                                SizedBox(width: 30,),
                                Flexible(
                                  child: SizedBox(
                                    height: 38,
                                    child: TextFormField(
                                      controller: _subjectController,
                                      cursorWidth: 2,
                                      decoration: InputDecoration(
                                        hintText: '담당과목을 입력해주세요',
                                        hintStyle: TextStyle(
                                          color: Color(0xFFB8B8B8),
                                          fontSize: 12,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: BorderSide(color: Color(0xFF000000), width: 1),
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
                                Text('소재지', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                                SizedBox(width: 11,),
                                Flexible(
                                  child: SizedBox(
                                    height: 38,
                                    width: 380,
                                    child: ElevatedButton(
                                      onPressed: () {
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary:    Colors.white,
                                        onPrimary:  Color(0xFFFF6F00),
                                        backgroundColor: null,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          side: BorderSide(color: Color(0xFFFF6F00), width: 1),
                                        ),
                                      ),
                                      child: Text(
                                        '검색',
                                        style: TextStyle(
                                          fontSize: 12,
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
                SizedBox(height: 10,),
                SizedBox(
                  height: 38,
                  width: 360,
                  child: TextFormField(
                    style: TextStyle(fontSize: 12,),
                    controller: _addressController,
                    cursorWidth: 2,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFF000000), width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 38,
                  width: 360,
                  child: TextFormField(
                    style: TextStyle(fontSize: 12,),
                    controller: _moreaddressController,
                    cursorWidth: 2,
                    decoration: InputDecoration(
                      hintText: '나머지주소를 입력해주세요',
                      hintStyle: TextStyle(
                        color: Color(0xFFB8B8B8),
                        fontSize: 12,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 45,),
                Row(
                  children: [
                    SizedBox(width: 100,),
                    Image.asset('images/point.png',width: 3,height: 3,),
                    SizedBox(width: 4,),
                    Text('항목은 필수입력 사항입니다.',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Color(0xFFB8B8B8)),),
                  ],
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
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFFF6F00),
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
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}