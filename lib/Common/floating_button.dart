import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  final String image;
  final String name;

  const FloatingButton({
    required this.image,
    required this.name,
});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('images/contact.png', width: 30, height: 30),
          const SizedBox(width: 20),
          Text(
            "사진",
            style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold,),
          ),
        ],
      ),
    );
  }
}
