import 'package:flutter/material.dart';
import 'package:projectiongolf/common/calendar_screen.dart';
import 'package:projectiongolf/Main/caddie_time_screen1.dart';
import 'package:projectiongolf/common/date_screen.dart';
import 'package:projectiongolf/common/week_screen.dart';
import 'package:projectiongolf/Main/caddie_course_screen1.dart';

class CaddieScreen1 extends StatefulWidget {
  const CaddieScreen1({Key? key}) : super(key: key);

  @override
  State<CaddieScreen1> createState() => _CaddieScreen1State();
}

class _CaddieScreen1State extends State<CaddieScreen1> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed :() {
            },
            icon: Image.asset('images/more.png',width: 20, height: 20,),
          ),
        ],
      ),

      body: Column(
        children: [
          Row(
            children: [
              Image.asset('images/sign.png',width: 70, height: 70,),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('일라이트 CC',style: TextStyle(color: Colors.black, fontSize: 12,),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('H',style: TextStyle(color: Colors.black, fontSize: 12,),),
                      Text('70명',style: TextStyle(color: Colors.black, fontSize: 12,),),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 30,),
              Expanded(
                child: _tabBar(),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                _date(),
                _week(),
                _month(),
              ],
            ),
          ),
        ],
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CaddieTimeScreen1()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('캐디시간', style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold,),),
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CaddieCourseScreen1()),
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
                  child: Text('코스시간', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tabBar() {
    return TabBar(
      controller: tabController,
      labelColor: Colors.black,
      unselectedLabelColor: Color(0xFF828282),
      labelStyle: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold,),
      unselectedLabelStyle: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold,),
      indicatorColor: Color(0xFF1BAA00),
      indicatorWeight: 4,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: const [
        Tab(text: "일"),
        Tab(text: "주"),
        Tab(text: "월"),
      ],
    );
  }

  Widget _date(){
    return DateScreen();
  }
  Widget _week(){
    return WeekScreen();
  }
  Widget _month(){
    return CalendarScreen();
  }
  //

}
