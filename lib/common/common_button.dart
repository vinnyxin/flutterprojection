import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  const CommonButton({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Color(0xFF43721B),),
        ),
        fixedSize: Size(280, 110),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.imagePath, width: 45, height: 45,),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.title,style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold,),),
              Text(widget.subtitle,style: TextStyle(color: Colors.black, fontSize: 12,),),
            ],
          ),
        ],
      ),
    );
  }
}
