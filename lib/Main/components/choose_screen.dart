import 'package:eggtranslate/Main/my_information_screen.dart';
import 'package:flutter/material.dart';

class ChooseScreen extends StatefulWidget {
  ChooseScreen({Key? key}) : super(key: key);

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  bool isSelected6 = false;


    @override
  Widget build(BuildContext context) {
      bool isButtonEnabled = isSelected1 || isSelected2 || isSelected3 || isSelected4 || isSelected5 || isSelected6;

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
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Text('추가 언어를 선택해주세요',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                  ),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  setState(() {
                    isSelected1 = !isSelected1;
                  });
                },
                child: Ink(
                  decoration: BoxDecoration(
                    color: isSelected1 ? Color.fromRGBO(0, 0, 0, 0.10) : Theme.of(context).backgroundColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 50, 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/china.png',width: 74, height: 74,),
                         SizedBox(width: 40,),
                         Text('Việt Nam',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFD5D5D5),
                indent: 25,
                endIndent: 30,
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    isSelected2 = !isSelected2;
                  });
                },
                child: Ink(
                  decoration: BoxDecoration(
                    color: isSelected2 ? Color.fromRGBO(0, 0, 0, 0.10) : Theme.of(context).backgroundColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 56, 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/china.png',width: 74, height: 74,),
                        SizedBox(width: 46,),
                        Text('Россия',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFD5D5D5),
                indent: 25,
                endIndent: 30,
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    isSelected3 = !isSelected3;
                  });
                },
                child: Ink(
                  decoration: BoxDecoration(
                    color: isSelected3 ? Color.fromRGBO(0, 0, 0, 0.10) : Theme.of(context).backgroundColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 70, 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/china.png',width: 74, height: 74,),
                        SizedBox(width: 55,),
                        Text('中国',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFD5D5D5),
                indent: 25,
                endIndent: 30,
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    isSelected4 = !isSelected4;
                  });
                },
                child: Ink(

                  decoration: BoxDecoration(
                    color: isSelected4 ? Color.fromRGBO(0, 0, 0, 0.10) : Theme.of(context).backgroundColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 55, 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/china.png',width: 74, height: 74,),
                        SizedBox(width: 41,),
                        Text('English',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFD5D5D5),
                indent: 25,
                endIndent: 30,
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    isSelected5 = !isSelected5;
                  });
                },
                child: Ink(
                  decoration: BoxDecoration(
                    color: isSelected5 ? Color.fromRGBO(0, 0, 0, 0.10) : Theme.of(context).backgroundColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 45, 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/china.png',width: 74, height: 74,),
                        SizedBox(width: 38,),
                        Text('Français',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFD5D5D5),
                indent: 25,
                endIndent: 30,
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    isSelected6 = !isSelected6;
                  });
                },
                child: Ink(
                  decoration: BoxDecoration(
                    color: isSelected6 ? Color.fromRGBO(0, 0, 0, 0.10) : Theme.of(context).backgroundColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 55, 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/china.png',width: 74, height: 74,),
                        SizedBox(width: 47,),
                        Text('한국어',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                  ),
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
          onPressed: isButtonEnabled
              ? () {
          }
              : null,
          style: ElevatedButton.styleFrom(
            primary: isButtonEnabled ? Color(0xFFFF6F00) : Colors.grey,
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
