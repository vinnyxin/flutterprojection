import 'package:flutter/material.dart';

class TimetableScreen extends StatefulWidget {
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  State<TimetableScreen> createState() => _TimetableScreenState();
}

class _TimetableScreenState extends State<TimetableScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          6,
              (rowIndex) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                    (colIndex) {
                  int baseHour = 7; // Base hour for buttons
                  int baseMinute = 50; // Base minute for buttons

                  int index = colIndex + rowIndex * 4;

                  String time;
                  Color color;

                  if (index == 19) { // Update only the 20th button
                    time = '07:57';
                    color = Color(0xFFE4E4E4);
                  } else {
                    if (index >= 20) {
                      time = '07:50';
                      color = Color(0xFF1BAA00);
                    } else {
                      if (index >= 10) {
                        time = '07:50';
                        color = Color(0xFFE4E4E4);
                      } else {
                        int hour = baseHour + (index * 7 + baseMinute) ~/ 60;
                        int minute = (index * 7 + baseMinute) % 60;

                        // Format time as HH:mm
                        time =
                        '${hour.toString().padLeft(2, '0')}:${minute.toString()
                            .padLeft(2, '0')}';
                        color = Color(0xFF1BAA00);
                      }
                    }
                  }

                    return buildButton(time, color);
                  }
              ),
            );
          },
        ),
      );
  }

  Widget buildButton(String label, Color color) {
    return InkWell(
      onTap: () {
        // Handle button press
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(color: Colors.black),
            ),
            // Add any other widgets or customization as needed
          ],
        ),
      ),
    );
  }
}
