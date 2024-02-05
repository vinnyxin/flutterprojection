import 'package:flutter/material.dart';
import 'package:projectiongolf/Main/caddie_course_screen2.dart';

class CommonCourse extends StatelessWidget {
  final String courseName;
  final String subCourseName;
  final String status;
  final Color color;

  const CommonCourse({
    required this.courseName,
    required this.subCourseName,
    required this.status,
    required this.color,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => CaddieCourseScreen2()));
              },
              child: Row(
                children: [
                  SizedBox(width: 25,),
                  Container(
                    width: 80,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                    ),
                    child: Center(
                        child: Text(courseName, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),)),
                  ),
                  SizedBox(width: 40,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(subCourseName, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,)),
                      SizedBox(height: 5,),
                      Text(status, style: TextStyle(color: Colors.black, fontSize: 12,)),
                    ],
                  ),
                ],
              ),
            ),
      ],
    );
  }
}
