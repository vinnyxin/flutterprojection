import 'package:flutter/material.dart';

class CaddieTimeScreen2 extends StatefulWidget {
  final List<Widget> caddieWidgets;
  const CaddieTimeScreen2({Key? key, required this.caddieWidgets}) : super(key: key);

  @override
  State<CaddieTimeScreen2> createState() => _CaddieTimeScreen2State();
}

class _CaddieTimeScreen2State extends State<CaddieTimeScreen2> {
  List<Widget> caddieWidgets = [];

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
      body: SingleChildScrollView(
        child: Column(
          children: widget.caddieWidgets.map((widget) => _caddile(showCloseButton: false)).toList(),        ),
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
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('수 정', style: TextStyle(color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,),),
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1BAA00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('캐디코스설정홈', style: TextStyle(color: Colors.white,
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