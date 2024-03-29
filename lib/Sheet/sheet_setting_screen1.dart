import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:caddycum/Sheet/sheet_setting_screen2.dart';
class SheetSettingScreen1 extends StatefulWidget {
  const SheetSettingScreen1({Key? key}) : super(key: key);

  @override
  State<SheetSettingScreen1> createState() => _SheetSettingScreen1State();
}
class _SheetSettingScreen1State extends State<SheetSettingScreen1> {
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();
  // TimeOfDay? _startTime;
  // TimeOfDay? _endTime;
  // bool _isSelected1 = true;
  // bool _isSelected2 = true;
  // String? dropdownValue;
  // List<Widget> dynamicWidgets = [];
  int dynamicWidgetCount = 1;
  List<bool> _isSelectedList = [true, true];
  List<TimeOfDay?> _startTimeList = [];
  List<TimeOfDay?> _endTimeList = [];
  List<String?> _dropdownValueList = [];



  Future<void> _showStartDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _startDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        _startDate = picked;
      });
    }
  }

  Future<void> _showEndDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _endDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        _endDate = picked;
      });
    }
  }

  Future<void> _showStartTimePicker(BuildContext context, int index) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _startTimeList[index] ?? TimeOfDay.now(),
    );
    if (pickedTime != null) {
      setState(() {
        _startTimeList[index] = pickedTime;
      });
    }
  }

  Future<void> _showEndTimePicker(BuildContext context, int index) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _endTimeList[index] ?? TimeOfDay.now(),
    );
    if (pickedTime != null) {
      setState(() {
        _endTimeList[index] = pickedTime;
      });
    }
  }

  void _toggleSelection1() {
    setState(() {
      _isSelectedList[0] = !_isSelectedList[0];
    });
  }

  void _toggleSelection2() {
    setState(() {
      _isSelectedList[1] = !_isSelectedList[1];
    });
  }

  @override
  void initState() {
    super.initState();
    _startDate = DateTime(2023, 9, 4);
    _endDate = DateTime(2024, 9, 3);
    _startTimeList = List.generate(1, (index) => null);
    _endTimeList = List.generate(1, (index) => null);
    _dropdownValueList = List.generate(1, (index) => null);
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

      body: SingleChildScrollView(
        child: Container(
          child:Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('예약시작날짜',style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
                    Container(
                      width: 230,
                      height: 38,
                      child: GestureDetector(
                        onTap: (){
                          _showStartDatePicker(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xFFE4E4E4), width: 1),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Text('${DateFormat('yyyy.MM.dd').format(_startDate)}',
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xFF000000),),
                              ),
                              SizedBox(width: 85,),
                              Image.asset('images/calendar.png', width: 40, height: 40),
                            ],
                          ),
                        ),
                      )
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('예약종료날짜',style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
                    Container(
                      width: 230,
                      height: 38,
                      child: GestureDetector(
                        onTap: (){
                          _showEndDatePicker(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xFFE4E4E4), width: 1),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Text('${DateFormat('yyyy.MM.dd').format(_endDate)}',
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xFF000000),),
                              ),
                              SizedBox(width: 85,),
                              Image.asset('images/calendar.png', width: 40, height: 40),
                            ],
                          ),
                        ),
                      )
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  children: [
                  GestureDetector(
                    onTap: _toggleSelection1,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                        decoration: BoxDecoration(
                          color: _isSelectedList[0] ? Color(0xFF1BAA00) : Color(0xFFC7C7C7),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Text('S코스',style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold,),),),
                  ),
                    SizedBox(width: 20,),
                    GestureDetector(
                      onTap: _toggleSelection2,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                          decoration: BoxDecoration(
                            color: _isSelectedList[1] ? Color(0xFF1BAA00) : Color(0xFFC7C7C7),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Text('G코스',style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold,),)),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                for (var i = 0; i < dynamicWidgetCount; i++)
                  _buildDynamicWidget(i),
              ],
            ),
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
                  _addDynamicWidget();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('추가', style: TextStyle(color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,),),
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SheetSettingScreen2()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1BAA00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('예약시트생성', style: TextStyle(color: Colors.white,
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


  void _addDynamicWidget() {
    setState(() {
      dynamicWidgetCount += 1;
      _startTimeList.add(null);
      _endTimeList.add(null);
      _dropdownValueList.add(null);
      _isSelectedList.add(true);
    });
  }




  Widget _buildDynamicWidget(int index){
    return Column(
        children: [
          Container(
            child: Row(
                children: [
                  Expanded(child: Text('${index + 1}부',style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),)),
                  SizedBox(width: 105,),
                  GestureDetector(
                    onTap: () {
                      _showStartTimePicker(context, index);
                    },
                    child: Container(
                      width: 105,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFFE1E1E1), width: 1),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              _startTimeList.length > index && _startTimeList[index] != null // 修改处
                                  ? '${_startTimeList[index]!.hour.toString().padLeft(2, '0')}:${_startTimeList[index]!.minute.toString().padLeft(2, '0')}'
                                  : '시작',
                              style: TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            _startTimeList.length > index && _startTimeList[index] != null ? SizedBox.shrink() : Image.asset('images/clock.png', width: 25, height: 25),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  GestureDetector(
                    onTap: () {
                      _showEndTimePicker(context, index);
                    },
                    child: Container(
                      width: 105,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFFE1E1E1), width: 1),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              _endTimeList.length > index && _endTimeList[index] != null // 修改处
                                  ? '${_endTimeList[index]!.hour.toString().padLeft(2, '0')}:${_endTimeList[index]!.minute.toString().padLeft(2, '0')}'
                                  : '종료',
                              style: TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            _endTimeList.length > index && _endTimeList[index] != null ? SizedBox.shrink() : Image.asset('images/clock.png', width: 25, height: 25),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
          ),
        SizedBox(height: 5,),
          Row(
            children: [
              Text('티오프간격',style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
              SizedBox(width: 50,),
              Container(
                child: Container(
                  height: 40,
                  width: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: DropdownButtonFormField<String>(
                    value: _dropdownValueList.length > index ? _dropdownValueList[index] : null, // 修改处
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    onChanged: (String? newValue) {
                      setState(() {
                        _dropdownValueList[index] = newValue;
                      });
                    },
                    items: <String>['7분', '7-10분', '10-14분', '14분이상']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      hintText: '7분',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF1BAA00)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFFE1E1E1)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
      ]
      );
  }
}

