import 'package:flutter/material.dart';
import 'package:projectiongolf/common/choose_button.dart';
import 'package:projectiongolf/common/timetable_screen.dart';



class CaddieCourseScreen2 extends StatefulWidget {
  const CaddieCourseScreen2({Key? key}) : super(key: key);

  @override
  State<CaddieCourseScreen2> createState() => _CaddieCourseScreen2State();
}

class _CaddieCourseScreen2State extends State<CaddieCourseScreen2> {
  String? dropdownValue1;
  String? dropdownValue2;
  String? dropdownValue3;
  List<bool> isSelected = [false, false, false];
  List<bool> isSelected2 = [false, false, false];
  List<String> buttonTexts = ["1부", "2부", "3부"];
  bool isTimetableVisible = false;

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

        actions: [
          IconButton(
            onPressed :() {
            },
            icon: Image.asset('images/home.png',width: 50, height: 25,),
          ),
        ],
      ),

      body: Container(
        color: Color(0xFFF2F2F2),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
              children: [
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
                    SizedBox(width: 10,),
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
                    SizedBox(width: 27,),
                    ChooseButton(
                      labelText: '타임',
                      dropdownValue: dropdownValue1,
                      items: ['7~8분'],
                      width: 130,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue1 = newValue;
                        });
                      },
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('배정교체타입', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
                    ToggleButtons(
                      children: [
                        Text('일'),
                        Text('주'),
                        Text('달'),
                      ],
                      onPressed: (int index) {
                        setState(() {
                          for (int buttonIndex = 0; buttonIndex < isSelected2.length; buttonIndex++) {
                            isSelected2[buttonIndex] = (buttonIndex == index);
                          }
                        });
                      },
                      isSelected: isSelected2,
                      selectedColor: Colors.white,
                      fillColor: Color(0xFF1BAA00),
                      borderColor: Colors.transparent,
                    ),
                  ],
                ),

                Row(
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
                    SizedBox(width: 40,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          isTimetableVisible = !isTimetableVisible;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xFF1BAA00),),
                            color: Colors.white),
                        child: Center(child: Text('시간생성',style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),)),
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: isTimetableVisible,
                  child: TimetableScreen(),
                ),
              ]
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
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('초기화', style: TextStyle(color: Colors.black,
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
}
