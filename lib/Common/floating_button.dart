import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  final String image;
  final String name;
  // final Widget destination;

  const FloatingButton({
    required this.image,
    required this.name,
    // required this.destination
});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => widget.destination),
      //   );
      // },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(widget.image, width: 30, height: 30),
          const SizedBox(width: 20),
          Text(
            widget.name,
            style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold,),
          ),
        ],
      ),
    );
  }
}
