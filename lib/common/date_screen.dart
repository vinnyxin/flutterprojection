import 'package:flutter/material.dart';
import 'package:projectiongolf/common/choose_button.dart';
import 'package:projectiongolf/common/timetable_screen.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({Key? key}) : super(key: key);

  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  String? dropdownValue1;
  String? dropdownValue2;
  String? dropdownValue3;
  List<bool> isSelected = [false, false, false];
  List<String> buttonTexts = ["1부", "2부", "3부"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            ChooseButton(
              labelText: '날짜',
              dropdownValue: dropdownValue1,
              items: ['2023. 09. 04', '2023. 09. 05'],
              width: 310,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue1 = newValue;
                });
              },
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                ChooseButton(
                  labelText: '구성',
                  dropdownValue: dropdownValue2,
                  items: ['없음'],
                  width: 130,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue2 = newValue;
                    });
                  },
                ),

            ChooseButton(
              labelText: '코스',
              dropdownValue: dropdownValue3,
              items: ['S코스'],
              width: 130,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue3 = newValue;
                });
              },
            ),
              ],
            ),
            SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                     Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    child: ToggleButtons(
                      children: [
                        Text('1부'),
                        Text('2부'),
                        Text('3부'),
                      ],
                      onPressed: (int index) {
                        setState(() {
                          for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
                            isSelected[buttonIndex] = (buttonIndex == index);
                          }
                        });
                      },
                      isSelected: isSelected,
                      selectedColor: Colors.white,
                      fillColor: Color(0xFF1BAA00),
                      borderColor: Colors.transparent,
                    ),
                  ),
                      Text('홀', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          height: 38,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Color(0xFFF8F8F8),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xFFE1E1E1),
                              width: 1.0,
                            ),
                          ),
                          child: Align(
                              alignment: Alignment(-1, 0),
                              child: Text('  9', style: TextStyle(color: Colors.black, fontSize: 14),)),
                        ),
                      ),
                    ],
              ),
            if (isSelected[0]) TimetableScreen(),
        ]
                ),
      ),
    );
  }
}