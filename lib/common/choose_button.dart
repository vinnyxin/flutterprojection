import 'package:flutter/material.dart';

class ChooseButton extends StatefulWidget {
  final String labelText;
  final String? dropdownValue;
  final List<String> items;
  final double width;
  final ValueChanged<String?> onChanged;

  const ChooseButton({
    Key? key,
    required this.labelText,
    required this.dropdownValue,
    required this.items,
    required this.width,
    required this.onChanged,
  }) : super(key: key);

  @override
  _ChooseButtonState createState() => _ChooseButtonState();
}

class _ChooseButtonState extends State<ChooseButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.labelText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 15),
        Container(
          child: SizedBox(
            height: 38,
            width: widget.width,
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
                onChanged: widget.onChanged,
                items: widget.items
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  hintText: ' ${widget.items.first}',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
        ),
      ],
    );
  }
}
