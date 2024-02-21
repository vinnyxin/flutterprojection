import "package:flutter/material.dart";
import 'package:eggtranslate/Main/Teacher/teacher_translate_screen.dart';
import 'package:eggtranslate/Main/Teacher/teacher_custom_list_tile.dart';



void _navigateToTranslateScreen(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherTranslateScreen()),
  );
}

class TeacherMainScreen extends StatefulWidget {
  const TeacherMainScreen({super.key});

  @override
  State<TeacherMainScreen> createState() => _TeacherMainScreenState();
}

class _TeacherMainScreenState extends State<TeacherMainScreen> {
  String mode ='teacher';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[

            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 15,),
                  Image.asset("images/people.png", width: 50, height: 50,),
                  const SizedBox(width: 10,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("김정근 선생님  (학생수 명)", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),),
                      Row(
                        children: [
                          Text("내동초동학교", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),),
                          SizedBox(width:40,),
                          Text("4학년 반", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),),
                          SizedBox(width:40,),
                          Text("미술", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context ,int index){
                  return GestureDetector(
                    onTap:() => _navigateToTranslateScreen(context),
                    child:Container(
                      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      //padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFEBEBEB),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: const TeacherCustomListTile(
                        title1: "2023-11-20 16 : 25",
                        title2: "내동초동학교 4-1",
                        title3: "번역가",
                        title4: "추승철",
                        title5: "05 : 25",
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
    );
  }
}

