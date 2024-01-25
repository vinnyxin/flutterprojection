import 'package:flutter/material.dart';

class BreakfastScreen extends StatefulWidget {
  const BreakfastScreen({super.key});

  @override
  State<BreakfastScreen> createState() => _BreakfastScreenState();
}

class _BreakfastScreenState extends State<BreakfastScreen> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('images/Back.png', width: 20, height: 20),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed :() {
            },
            icon: Image.asset('images/more.png',width: 20, height: 20,),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 35,),
                Text('레스토랑', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
                SizedBox(width: 45,),
                Flexible(
                  child: Container(
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 38,
                          width: 250,
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
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                });
                              },
                              items: <String>['조식', '중/석식', '4인식사', '스타트하우스 메뉴', '코스메뉴', '주류 및 음료']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              decoration: InputDecoration(
                                hintText: ' 조식',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Color(0xFF1BAA00), width: 1),
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
                ),
              ],
            ),
            SizedBox(height: 40,),
            Image.asset('images/menu.png'),
          ],
        ),
      ),

    );
  }
}
