import 'package:flutter/material.dart';
import 'package:projectiongolf/Main/caddie_time_screen2.dart';

class CaddieTimeScreen1 extends StatefulWidget {
  const CaddieTimeScreen1({Key? key}) : super(key: key);

  @override
  State<CaddieTimeScreen1> createState() => _CaddieTimeScreen1State();
}

class _CaddieTimeScreen1State extends State<CaddieTimeScreen1> with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool isSelected1 = true;
  bool isSelected2 = true;
  bool isSelected3 = true;
  List<Widget> caddieWidgets = [];

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
        leading: IconButton(
          icon: Image.asset('images/back.png', width: 20, height: 20,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Column(
        children: [
          _tabBar(),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ...caddieWidgets,
                    ],
                  ),
                ),
                Container(),
                Container(),
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
                  _addCaddieWidget();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('캐디시간추가', style: TextStyle(color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,),),
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CaddieTimeScreen2(caddieWidgets: caddieWidgets),
                    ),
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
                  child: Text('저 장 ', style: TextStyle(color: Colors.white,
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

  Widget _tabBar() {
    return TabBar(
      controller: tabController,
      labelColor: Colors.black,
      unselectedLabelColor: Color(0xFF828282),
      labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),
      unselectedLabelStyle: const TextStyle(
        fontSize: 14, fontWeight: FontWeight.bold,),
      indicatorColor: Color(0xFF4D9640),
      indicatorWeight: 1,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: const [
        Tab(text: "1부"),
        Tab(text: "2부"),
        Tab(text: "3부"),
      ],
    );
  }

  void _addCaddieWidget() {
    setState(() {
      caddieWidgets.add(_caddile());
    });
  }

  Widget _caddile({bool showCloseButton = true}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Container(
                width: 360,
                height: 100,
                color: Color(0xFFF8F8F8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '시작',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                  ),
                                ),
                                Image.asset(
                                  'images/clock.png',
                                  width: 15,
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '종료',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                  ),
                                ),
                                Image.asset(
                                  'images/clock.png',
                                  width: 15,
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(
                        width: 300,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Row(
                          children: [
                            SizedBox(width: 15,),
                            Text(
                              '하우스캐디 (주중 / 주말)',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          if (showCloseButton)
              Positioned(
                top: -20,
                right: -20,
                child: IconButton(
                  icon: Image.asset('images/close.png',width: 30, height: 30,),
                  onPressed: () {
                    setState(() {
                      caddieWidgets.removeLast();
                    });
                  },
                ),
              ),
        ],
      ),
    );
  }
}
