import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _IDController = TextEditingController();
  final TextEditingController _PWController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 60),
          child: Column(
              children: [
                SizedBox(height: 100,),
                Text('로그인',  style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold,),),
                SizedBox(height: 40,),
                ElevatedButton(
                  onPressed: (){
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFEE500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fixedSize: Size(260, 60),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Image.asset('images/kakao.png',width: 30, height: 30,),
                        SizedBox(width: 20,),
                        Text('카카오 로그인', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Flexible(
                      child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            controller: _IDController,
                            style: TextStyle(fontSize: 12,),
                            cursorWidth: 2,
                            decoration: InputDecoration(
                              hintText: 'ID :',
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
                SizedBox(height: 20,),
                Row(
                  children: [
                    Flexible(
                      child: SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: _PWController,
                          style: TextStyle(fontSize: 12,),
                          cursorWidth: 2,
                          decoration: InputDecoration(
                            hintText: 'PW :',
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
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFF6F00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fixedSize: Size(170, 40),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('로그인', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),),
                  ),
                ),
              ],
            ),
        ),
      ),

    );
  }
}
