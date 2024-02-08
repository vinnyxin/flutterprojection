import 'package:flutter/material.dart';

class InformationScreen extends StatefulWidget {
  final String name;
  final String number;
  final String image;

  const InformationScreen({
    required this.name,
    required this.number,
    required this.image,

});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Container(
          height: 40,
          width: 310,
          color: Color(0xFFF8F8F8),
          child: Row(
            children: [
              SizedBox(width: 30,),
              Text(widget.name,style: TextStyle(color: Colors.black, fontSize: 14,),),
              SizedBox(width: 50,),
              Text(widget.number,style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
            ],
          ),
        ),
        SizedBox(width: 10,),
        Image.asset(widget.image,width: 20,height: 20,),
      ],
    );
  }
}
