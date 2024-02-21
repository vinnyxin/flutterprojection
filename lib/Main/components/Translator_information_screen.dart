import 'package:eggtranslate/Main/components/expert_list.dart';
import 'package:flutter/material.dart';

class TranslatorInformationScreen extends StatefulWidget {
  const TranslatorInformationScreen({super.key});

  @override
  State<TranslatorInformationScreen> createState() => _TranslatorInformationScreenState();
}

class _TranslatorInformationScreenState extends State<TranslatorInformationScreen> {
  late Expert expert;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      expert = ModalRoute.of(context)!.settings.arguments as Expert;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (expert == null) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(25),
        child:  AppBar(
          actions:  [
            Image.asset('images/Homeback.png', width: 30, height: 30,),
          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: CircleAvatar(
                  backgroundImage: AssetImage("images/Expert.png"),
                  radius: 30,
                ),
                ),
                SizedBox(width: 25),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('추승철', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                      SizedBox(height: 10),
                      Text('010-3384-8944', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,),),
                      SizedBox(height: 10),
                      Text('fyuid9767@gmail.com', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,),),
                    ],
                  ),
                ),
                   SizedBox(width: 10),
                   Image.asset('images/Heart.png', width: 30, height: 30,),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Color(0xFFFF6F00))),
            ),
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(child: Text('언어', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),width: 180,),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('배트남어',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFF6F00)),),
                          SizedBox(height: 15,),
                          Text('중국어',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFF6F00)),),
                        ],
                      ),
                    ),
                  ],
                ),
                ),
              Divider(thickness: 1, color: Color(0xFFE6E6E6),indent: 10, endIndent: 10),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(child: Text('언어수준', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),width: 180),
                    Flexible(child: Text('상',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFF6F00)),)),
                  ],
                ),
              ),
              Divider(thickness: 1, color: Color(0xFFE6E6E6),indent: 10, endIndent: 10),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(child:Text('번역경력', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),width:180),
                    Text('4년',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFF6F00)),),
                  ],
                ),
              ),
              Divider(thickness: 1, color: Color(0xFFE6E6E6),indent: 10, endIndent: 10),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(child:Text('자격증', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),width:180),
                    Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('배트남어 6급',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFF6F00)),),
                            SizedBox(height: 15,),
                            Text('중국어 급',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFF6F00)),),
                          ],
                        ),
                    ),

                  ],
                ),
              ),
              Divider(thickness: 1, color: Color(0xFFE6E6E6),indent: 10, endIndent: 10),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(child:Text('전문분야', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),width:180),
                    Text('교육,문화',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFF6F00)),),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 58,
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
                  '선택',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
