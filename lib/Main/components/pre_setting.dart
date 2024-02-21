import 'package:flutter/material.dart';
import 'package:eggtranslate/Main/components/delete_screen.dart';
import 'package:eggtranslate/Main/components/revision_screen.dart';

class PreSetting extends StatefulWidget {
  const PreSetting({super.key});

  @override
  State<PreSetting> createState() => _PreSettingState();
}

class _PreSettingState extends State<PreSetting> {

  void _showModalBottomSheet(){
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.92,
             padding: EdgeInsets.only(top:20),
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
                      child: DeleteScreen(),
                    ),
                  ],
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
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60,),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RevisionScreen()),
          );
        },
        child: Row(
           children: [
             SizedBox(width: 25,),
             Image.asset('images/write.png', width: 30, height: 30,),
             SizedBox(width: 20,),
             Text('정보 수정', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,),),
           ],
         ),
      ),
          Divider(
            height: 70,
            thickness: 1,
            color: Color(0xFFD5D5D5),
            indent: 25,
            endIndent: 25,
          ),

          Row(
            children: [
              SizedBox(width: 25,),
              Image.asset('images/trash.png', width: 30, height: 30,),
              SizedBox(width: 20,),
              GestureDetector(
                onTap: () {
                  _showModalBottomSheet();
                },
              child: Text('계정 삭제', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,),),
              ),
            ],
          ),
        ],
      ),





    );
  }
}
