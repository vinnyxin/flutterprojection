import 'package:flutter/material.dart';
import 'package:projectiongolf/common/common_course.dart';

class CaddieCourseScreen1 extends StatefulWidget {
  const CaddieCourseScreen1({super.key});

  @override
  State<CaddieCourseScreen1> createState() => _CaddieCourseScreen1State();
}

class _CaddieCourseScreen1State extends State<CaddieCourseScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('images/back.png', width: 20, height: 20,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        actions: [
          IconButton(
            onPressed :() {
            },
            icon: Image.asset('images/home.png',width: 50, height: 25,),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
                children: [
                  SizedBox(width: 20,),
                  Text('구성', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
                  SizedBox(width: 20,),
                  Container(
                    width: 280,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF2F2F2),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                        Text('없음', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                  ),
                ]
            ),
            CommonCourse(courseName: 'G코스', subCourseName: 'G코스 부', status: '설정 안되었습니다.', color: Color(0xFFF1F1F1),),
            CommonCourse(courseName: 'G코스', subCourseName: 'G코스 부', status: '설정 안되었습니다.', color: Color(0xFFF1F1F1),),
            CommonCourse(courseName: 'G코스', subCourseName: 'G코스 부', status: '설정 안되었습니다.', color: Color(0xFFF1F1F1),),

            Divider(
              height: 35,
              thickness: 1,
              color: Color(0xFF707070),
              indent: 5,
              endIndent: 5,
            ),

            Row(
                children: [
                  SizedBox(width: 20,),
                  Text('구성', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
                  SizedBox(width: 20,),
                  Container(
                    width: 280,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF2F2F2),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                        Text('없음', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                  ),
                ]
            ),

            CommonCourse(courseName: 'G코스', subCourseName: 'S코스 부', status: '설정 안되었습니다.', color: Color(0xFFF1F1F1),),
            CommonCourse(courseName: 'G코스', subCourseName: 'S코스 부', status: '설정 안되었습니다.', color: Color(0xFFF1F1F1),),
            CommonCourse(courseName: 'G코스', subCourseName: 'S코스 부', status: '설정 안되었습니다.', color: Color(0xFFF1F1F1),),

          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            Flexible(
              flex: 4,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('수 정', style: TextStyle(color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,),),
                ),
              ),
            ),

            Flexible(
              flex: 6,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1BAA00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('캐디시간설정홈', style: TextStyle(color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
