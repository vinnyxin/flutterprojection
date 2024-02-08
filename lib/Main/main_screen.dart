import 'package:flutter/material.dart';
import 'package:caddycum/Common/common_main_button.dart';
import 'package:caddycum/Caddie/caddie_setting_screen1.dart';
import 'package:caddycum/Sheet/sheet_setting_screen1.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Image.asset('images/back.png', width: 20, height: 20,),
            onPressed:(){},
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CommonMainButton(imagePath: 'images/hole.png', title: '구성', subtitle: '코스 및 홀구성', onPressed: (){}),
              CommonMainButton(imagePath: 'images/car.png', title: '캐디', subtitle: '캐디설정/ 시트생성', onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CaddieSettingScreen1()));
              }),
              CommonMainButton(imagePath: 'images/golf.png', title: '예약시트', subtitle: '시트생성 / 설정', onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SheetSettingScreen1()));
              }),
              CommonMainButton(imagePath: 'images/symbol.png', title: '개요 / 시설', subtitle: '골프장 각종시설물', onPressed: (){}),
              CommonMainButton(imagePath: 'images/setting.png', title: '기능설정', subtitle: '알림 및 사용자설정', onPressed: (){}),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Image.asset("images/home.png", width: 30, height: 30,),label: "홈"),
            BottomNavigationBarItem(icon: Image.asset("images/heart.png", width: 30, height: 30,),label: "보기"),
            BottomNavigationBarItem(icon: Image.asset("images/check.png", width: 30, height: 30,),label: "관리"),
            BottomNavigationBarItem(icon: Image.asset("images/flag.png", width: 30, height: 30,),label: "설정",),
          ],
          selectedItemColor: Colors.green,
        )
    );
  }
}
