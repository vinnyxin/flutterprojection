import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:caddycum/Common/information_screen.dart';
import 'package:caddycum/Caddie/caddie_setting_screen2.dart';

class CaddieSettingScreen1 extends StatefulWidget {
  const CaddieSettingScreen1({super.key});

  @override
  State<CaddieSettingScreen1> createState() => _CaddieSettingScreen1State();
}

class _CaddieSettingScreen1State extends State<CaddieSettingScreen1> {
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

      body: SafeArea(
        child: DefaultTabController(
            length: 7,
            child: Column(
              children: <Widget>[
                ButtonsTabBar(
                  backgroundColor: Color(0xFF1BAA00),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,),
                  unselectedBackgroundColor: Color(0xF8F8F8),
                  unselectedLabelStyle: TextStyle(fontSize: 12,color: Colors.black, fontWeight: FontWeight.bold),
                  labelStyle: TextStyle(fontSize: 12,color: Colors.white, fontWeight: FontWeight.bold),
                  height: 50,
                  tabs: [
                    Tab(text: "1",),
                    Tab(text: "2",),
                    Tab(text: "3",),
                    Tab(text: "4",),
                    Tab(text: "5",),
                    Tab(text: "6",),
                    Tab(text: "7",),
                  ],
                ),

                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      _revision(),
                      Center(child: Icon(Icons.directions_transit),),
                      Center(child: Icon(Icons.directions_bike),),
                      Center(child: Icon(Icons.directions_car),),
                      Center(child: Icon(Icons.directions_transit),),
                      Center(child: Icon(Icons.directions_bike),),
                      Center(child: Icon(Icons.directions_bike),),
                    ],
                  ),
                ),
              ],
            )
        ),
      ),

      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        child:
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CaddieSettingScreen2()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF1BAA00),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text('수 정', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,),),
              ),
            ),
      ),
    );
  }

  Widget _revision(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: Column(

          children: [
            Row(
              children: [
                SizedBox(width: 30,),
                Text('조장',style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
                SizedBox(width: 190,),
                Container(
                  width: 100,
                  child:Row(
                    children: [
                      Text('전체조장',style: TextStyle(color: Colors.black, fontSize: 11,),),
                      SizedBox(width: 30,),
                      Image.asset('images/go.png',width: 10,height: 10,),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            InformationScreen(name: '김유정', number: '010-3384-8944', image: 'images/more.png'),
            SizedBox(height: 35,),
            Row(
              children: [
                SizedBox(width: 30,),
                Text('조원',style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
                SizedBox(width: 190,),
                Container(
                  width: 100,
                  child:Row(
                    children: [
                      Text('전체조원 75',style: TextStyle(color: Colors.black, fontSize: 11,),),
                      SizedBox(width: 10,),
                      Image.asset('images/go.png',width: 10,height: 10,),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            InformationScreen(name: '김수일', number: '010-3384-8941', image: 'images/more.png'),
            InformationScreen(name: '김수이', number: '010-3384-8942', image: 'images/more.png'),
            InformationScreen(name: '김수삼', number: '010-3384-8943', image: 'images/more.png'),
            InformationScreen(name: '김수사', number: '010-3384-8948', image: 'images/more.png'),
            InformationScreen(name: '김수이', number: '010-3384-8942', image: 'images/more.png'),
            InformationScreen(name: '김수삼', number: '010-3384-8943', image: 'images/more.png'),
            InformationScreen(name: '김수사', number: '010-3384-8948', image: 'images/more.png'),
          ],
        ),
    );
  }
}
