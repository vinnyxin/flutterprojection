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
                  child: Text('코스시간설정', style: TextStyle(color: Colors.white,
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
}