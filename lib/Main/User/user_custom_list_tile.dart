import "package:flutter/material.dart";

class UserCustomListTile extends StatefulWidget {
  const UserCustomListTile({super.key, required this.title1, required this.title2,required this.title3, required this.title4,
    required this.title5,  required this.title6, required this.title7, required this.imageAsset});
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;
  final String title6;
  final String title7;
  final String? imageAsset;

  @override
  State<UserCustomListTile> createState() => _UserCustomListTileState();
}

class _UserCustomListTileState extends State<UserCustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("images/paper.png",width: 100,),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width:double.infinity,
                decoration: BoxDecoration(color: Color(0xFFF8F8F8),
                    border: Border(bottom: BorderSide(width: 1, color: Color(0xFFE5E5E5)))),

                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(widget.title1,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),),
                      const SizedBox(height:3,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.title2, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                          Text(widget.title3, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                          Text(widget.title4, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                        ],
                      ),
                      const SizedBox(height:15,),
                    ]
                ),
              ),

              Container(
                height: 35,
                color: Color(0xFFF8F8F8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                      Text(widget.title5, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold,),),
                      if (widget.title6.isNotEmpty && widget.title7.isNotEmpty)
                        Row(children: [
                          ClipOval(
                            child: Image.asset(widget.imageAsset ?? "images/people2.png", width: 20, height: 20,),
                          ),
                          SizedBox(width: 10,),
                          Text(widget.title6, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold,),),],),
                      if (widget.title6.isNotEmpty && widget.title7.isNotEmpty)
                        Text(widget.title7, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold,),),
                    ]
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
