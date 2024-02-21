import 'package:eggtranslate/Main/components/Translator_information_screen.dart';
import 'package:flutter/material.dart';

void navigateToTranslatortInformationScreen(BuildContext context){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const TranslatorInformationScreen()),
  );
}


class Expert{
  final String name;
  final String information;
  final String image;
  final String heart;
  Expert({required this.name, required this.information, required this.image, required this.heart});
}

class ExpertList extends StatefulWidget {
  const ExpertList({super.key});

  @override
  State<ExpertList> createState() => _ExpertListState();
}

class _ExpertListState extends State<ExpertList> {
  List<Expert> experts = [
    Expert(name: '추승철', information: '상                             05:25      3년', image: 'images/Expert.png', heart: 'images/Heart.png'),
    Expert(name: '김정근', information: '상                             05:25      3년', image: 'images/Expert.png', heart: 'images/Heart.png'),
    Expert(name: '박미정', information: '상                             05:25      3년', image: 'images/people2.png', heart: 'images/Heart.png'),
    Expert(name: '김만기', information: '상                             05:25      3년', image: 'images/Expert.png', heart: 'images/Whiteheart.png'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:50,left:20,right:20),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 15),
          itemCount: experts.length,
          itemBuilder: (context, index) {

            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TranslatorInformationScreen(),
                  settings: RouteSettings(arguments: experts[index]),
                    ),
                  );
                },

            child: Column(
              //padding: EdgeInsets.all(7),
              children:<Widget> [
            ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(experts[index].image, ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[
                Text(experts[index].name, style: TextStyle(fontWeight: FontWeight.bold,),),
                Image.asset(experts[index].heart, width: 30, height: 30,),
                ],
                ),

              subtitle: Container(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        experts[index].information,
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ],
                ),
              ),
              ),

                if (index != experts.length - 1)
            Container(
            width: double.infinity,
            decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1, color: Color(0xFFD5D5D5))),
            ),
            ),
],
            ),
            );
          },
        ),
      ),

    );
  }
}
