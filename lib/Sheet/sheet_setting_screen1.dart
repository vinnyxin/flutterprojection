import 'package:flutter/material.dart';

class SheetSettingScreen1 extends StatefulWidget {
  const SheetSettingScreen1({super.key});

  @override
  State<SheetSettingScreen1> createState() => _SheetSettingScreen1State();
}

class _SheetSettingScreen1State extends State<SheetSettingScreen1> {
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
      ),

      body: Container(
        color: Color(0xFFF2F2F2),
        child:Column(
          children: [

          ],
        ),
      ),


      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        child:
        Flexible(
          child: ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => CaddieSettingScreen2()),
              // );
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF1BAA00),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text('예약시트 생성', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,),),
            ),
          ),
        ),
      ),
    );
  }
}
