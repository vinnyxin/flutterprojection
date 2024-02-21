import 'package:flutter/material.dart';
import 'package:eggtranslate/Main/components/pre_setting.dart';
import 'package:eggtranslate/Main/main_screen.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool SwitchValue1 = true;
  bool SwitchValue2 = false;

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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10, bottom: 25),
            icon: Image.asset('images/more.png', width: 20, height: 20,),
            onPressed: _showModalBottomSheet,
          ),
        ],
      ),

      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 30,),
              Image.asset('images/bell.png',width: 30, height: 30,),
             SizedBox(width: 40,height: 70,),
             Column(
               children: [
                 Container(
                   width: 250,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('알림장',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                       FlutterSwitch(
                         width: 60.0,
                         height: 30.0,
                         value: SwitchValue1,
                         onToggle: (value) {
                           setState(() {
                             SwitchValue1 = value;
                           });
                         },
                         toggleColor: Color(0xFFFF6F00),
                         inactiveToggleColor: Color(0xFF9B9B9B),
                         activeColor: Color(0xFFF2F2F2),
                         inactiveColor: Color(0xFFF2F2F2),
                       ),
                     ],
                   ),
                 ),
                 SizedBox(height: 20,),
                 Container(
                   width: 250,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('번역',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                       FlutterSwitch(
                         width: 60.0,
                         height: 30.0,
                         value: SwitchValue2,
                         onToggle: (value) {
                           setState(() {
                             SwitchValue2 = value;
                           });
                         },
                         inactiveToggleColor: Color(0xFF9B9B9B),
                         toggleColor: Color(0xFFFF6F00),
                         activeColor: Color(0xFFF2F2F2),
                         inactiveColor: Color(0xFFF2F2F2),
                       ),
                     ],
                   ),
                 )
               ],
             ),
            ],
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: Color(0xFFD5D5D5),
            indent: 25,
            endIndent: 45,
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 30,),
              Image.asset('images/guide.png',width: 30, height: 30,),
              SizedBox(width: 40,),
              Text('사용자가이드',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
            ],
          ),
          SizedBox(height: 20,),
          Divider(
            height: 20,
            thickness: 1,
            color: Color(0xFFD5D5D5),
            indent: 25,
            endIndent: 45,
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 30,),
              Image.asset('images/help.png',width: 30, height: 30,),
              SizedBox(width: 40,),
              Text('도움말',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
            ],
          ),
          SizedBox(height: 20,),
          Divider(
            height: 20,
            thickness: 1,
            color: Color(0xFFD5D5D5),
            indent: 25,
            endIndent: 45,
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 30,),
              Image.asset('images/book.png',width: 30, height: 30,),
              SizedBox(width: 40,),
              Text('앱 정보',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
            ],
          ),
          SizedBox(height: 20,),
          Divider(
            height: 20,
            thickness: 1,
            color: Color(0xFFD5D5D5),
            indent: 25,
            endIndent: 45,
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 30,),
              Image.asset('images/update.png',width: 30, height: 30,),
              SizedBox(width: 40,),
              Text('최신 업데이트',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
            ],
          ),
        ],
      ),
    );
  }
}
