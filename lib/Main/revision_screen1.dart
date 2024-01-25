import 'package:flutter/material.dart';
import 'package:golf/Main/add_picture.dart';
import 'package:golf/Main/revision_screen2.dart';
import 'package:golf/Main/breakfast_screen.dart';

class RevisionScreen1 extends StatefulWidget {
  const RevisionScreen1({Key? key}) : super(key: key);

  @override
  State<RevisionScreen1> createState() => _RevisionScreen1State();
}

class _RevisionScreen1State extends State<RevisionScreen1> with SingleTickerProviderStateMixin{
  late TabController tabController;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = true;
  bool isSelected4 = false;
  String selectedCategory = '';


  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 2,);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }


  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(20.0),
          // ),
          content: Container(
            decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20),
            ),
            height: 300,
            width: 325,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20, top: 10,),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 5, right: 5),
                          child: Image.asset('images/close.png',width: 30, height: 30,),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45, left: 10, right: 10),
                    child: Text(
                      '레스토랑의 설정의\n저장을 완료 하겠습니까 ?',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, height: 2.5,),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RevisionScreen2(),
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
                        child: Text(
                          '확 인',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
          icon: Image.asset('images/Back.png', width: 20, height: 20),
          onPressed: () {
          },
        ),
        actions: [
          IconButton(
            onPressed :() {
            },
            icon: Image.asset('images/Home.png',width: 25, height: 25,),
          ),
        ],
      ),

      body: Column(
        children: [
          _tabBar(),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Container(),
                Container(),
                _facility(),
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
                  _showConfirmationDialog();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('최종저장', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold,),),
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedCategory == '조식') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddPicture()),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1BAA00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('수 정', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),),
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
      unselectedLabelStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),
      indicatorColor: Color(0xFF4D9640),
      indicatorWeight: 1,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: const [
        Tab(text: "소개"),
        Tab(text: "오시는 길"),
        Tab(text: "시설"),
        Tab(text: "갤러리"),
      ],
    );
  }

  Widget _facility(){
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 30,height: 30,),
              Text('레스토랑', style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color:isSelected3 ?Colors.black :Color(0xFFC7C7C7),),),
            ],
          ),
          SizedBox(height: 5,),
          Image.asset('images/restaurant.png'),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric( horizontal: 20),
            child: Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: SizedBox(
                          height: 90,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Color(0xFF707070),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '조식',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Flexible(
                        child: SizedBox(
                          height: 90,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Color(0xFF707070),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '중/석식',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Flexible(
                        child: SizedBox(
                          height: 90,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Color(0xFF707070),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '4인식사',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Flexible(
                        child: SizedBox(
                          height: 90,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Color(0xFF707070),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('스타트하우스', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black,),),
                                  Text('메뉴', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black,),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Flexible(
                        child: SizedBox(
                          height: 90,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Color(0xFF707070),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '코스메뉴',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Flexible(
                        child: SizedBox(
                          height: 90,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Color(0xFF707070),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '주류 및 음료',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
