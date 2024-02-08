import 'package:flutter/material.dart';

class CommonMainButton extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  const CommonMainButton({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.onPressed,
});

  @override
  State<CommonMainButton> createState() => _CommonMainButtonState();
}

class _CommonMainButtonState extends State<CommonMainButton> {

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: widget.onPressed,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 300,
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFF43721B)),
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
      ),
    );
  }
}
