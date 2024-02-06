import 'package:flutter/material.dart';
import 'package:projectiongolf/Main/caddie_course_screen1.dart';

class CaddieTimeScreen2 extends StatefulWidget {
  final List<Widget> caddieWidgets;
  final String? dropdownValue;
  CaddieTimeScreen2({Key? key, required this.caddieWidgets, this.dropdownValue}) : super(key: key);

  @override
  State<CaddieTimeScreen2> createState() => _CaddieTimeScreen2State();
}

class _CaddieTimeScreen2State extends State<CaddieTimeScreen2> {
  List<Widget> caddieWidgets = [];
  final TextEditingController _Controller1 = TextEditingController();
  final TextEditingController _Controller2 = TextEditingController();
  String? dropdownValue;


  @override
  void initState() {
    super.initState();
    dropdownValue = widget.dropdownValue;
  }


  @override
  Widget build(BuildContext context) {
    print("드롭다운 값 ${widget.dropdownValue}");
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
          children: widget.caddieWidgets,
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


  Widget _caddile({required TextEditingController controller1, required TextEditingController controller2, bool showCloseButton = true}) {
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
                                      value: widget.dropdownValue,
                                      icon: Icon(Icons.arrow_drop_down),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: TextStyle(color: Colors.black, fontSize: 12),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          // widget.dropdownValue = newValue;
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