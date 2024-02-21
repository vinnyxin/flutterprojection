import 'package:flutter/material.dart';
import 'package:projectiongolf/Main/caddie_time_screen2.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class CaddieTimeScreen1 extends StatefulWidget {
  const CaddieTimeScreen1({Key? key}) : super(key: key);

  @override
  State<CaddieTimeScreen1> createState() => _CaddieTimeScreen1State();
}

class _CaddieTimeScreen1State extends State<CaddieTimeScreen1> with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<Widget> caddieWidgets = [];
  String? dropdownValue;


  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 7,
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

      body: SafeArea(
        child: DefaultTabController(
          length: 7,
          child: Column(
            children: [
              ButtonsTabBar(
                backgroundColor: Color(0xFF1BAA00),
                contentPadding: EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                unselectedBackgroundColor: Color(0xFFF1F1F1),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
                unselectedLabelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
                height: 50,
                tabs: [
                  for (int i = 1; i <= 7; i++)
                    Tab(
                      text : "$i",
                    ),
                ],
              ),
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
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
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
                  print('drop ${dropdownValue}');
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
                  child: Text('조원추가', style: TextStyle(color: Colors.black,
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
                      builder: (context) => CaddieTimeScreen2(caddieWidgets: caddieWidgets,dropdownValue: dropdownValue,),
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



  void _addCaddieWidget() {
    TextEditingController newController1 = TextEditingController();
    TextEditingController newController2 = TextEditingController();


    setState(() {
      print('전송할 값 ${dropdownValue}');
      caddieWidgets.add(_caddile(controller1: newController1, controller2: newController2, dropdownValue: dropdownValue));
    });
  }

  Widget _caddile({required TextEditingController controller1, required TextEditingController controller2, required String? dropdownValue, bool showCloseButton = true}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Container(
                width: 360,
                height: 120,
                color: Color(0xFFF8F8F8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 38,
                                  width: 100,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Color(0xFFE1E1E1), width: 1),
                                    ),
                                    child: DropdownButtonFormField<String>(
                                      value: dropdownValue,
                                      icon: Icon(Icons.arrow_drop_down),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: TextStyle(color: Colors.black, fontSize: 12),
                                      onChanged: (value) {
                                        setState(() {
                                          print("바뀌어야대는 값 ${value}");
                                          dropdownValue = value;
                                          print("바뀐 값 ${dropdownValue}");
                                        });

                                      },
                                      items: <String>['조장','조원']
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      decoration: InputDecoration(
                                        hintText: '  조장',
                                        hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(color: Color(0xFFE1E1E1), width: 1),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(color: Color(0xFFE1E1E1), width: 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          SizedBox(
                            height: 38,
                            width: 160,
                            child: TextFormField(
                              style: TextStyle(fontSize: 12,),
                              controller: controller1,
                              cursorWidth: 2,
                              decoration: InputDecoration(
                                hintText: '  김유정',
                                hintStyle: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Color(0xFFE1E1E1), width: 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 38,
                        width: 280,
                        child: TextFormField(
                          style: TextStyle(fontSize: 12,),
                          controller: controller2,
                          cursorWidth: 2,
                          decoration: InputDecoration(
                            hintText: '  010-3384-8944',
                            hintStyle: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: -5, horizontal: 5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Color(0xFFE1E1E1), width: 1),
                            ),
                          ),
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