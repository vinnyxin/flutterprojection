import 'package:flutter/material.dart';
import 'package:eggtranslate/Main/User/user_translate_screen.dart';
import 'package:eggtranslate/Main/User/user_custom_list_tile.dart';

void _navigateToUserTranslateScreen(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (context) => const UserTranslateScreen()),
  );
}

class UserMainScreen extends StatefulWidget {
  const UserMainScreen({super.key});

  @override
  State<UserMainScreen> createState() => _UserMainScreenState();
}

class _UserMainScreenState extends State<UserMainScreen> with SingleTickerProviderStateMixin{
  String mode ='user';
  late TabController _tabController;


  final Map<String, List<Map<String, String>>> nameToData = {
    '전체': [
      {"title1": "  2023-11-20 16 : 25",
        "title2": "  이반",
        "title3":"내동초동학교 4-1",
        "title4":"남",
        "title5": "번역가",
        "title6": "추승철",
        "title7": "05 : 25",
      },
      {
        "title1": "  2023-11-20 16 : 25",
        "title2": "   마리아",
        "title3": "미동초동학교 1-3",
        "title4": "여",
        "title5": "번역가",
        "title6": "추승철",
        "title7": "05 : 25",
        "image": "images/Expert.png",
      },
      {
        "title1": "  2023-11-20 16 : 25",
        "title2": "   이반",
        "title3": "내동초동학교 4-1",
        "title4": "남",
        "title5": "",
        "title6": "",
        "title7": "",
      },
      {
        "title1": "  2023-11-20 16 : 25",
        "title2": "   마리아",
        "title3": "내동초동학교 4-1",
        "title4": "남",
        "title5": "",
        "title6": "",
        "title7": "",
      },
      {
        "title1": "  2023-11-20 16 : 25",
        "title2": "   이반",
        "title3": "내동초동학교 1-3",
        "title4": "남",
        "title5": "",
        "title6": "",
        "title7": "",
      },

    ],
    '이반': [
      {"title1": "  2023-11-20 16 : 25",
        "title2": "   이반",
        "title3": "내동초동학교 4-1",
        "title4": "남",
        "title5": "번역가",
        "title6": "추승철",
        "title7": "05 : 25",
      },
      {
        "title1": "  2023-11-20 16 : 25",
        "title2": "   이반",
        "title3": "내동초동학교 4-1",
        "title4": "남",
        "title5": "",
        "title6": "",
        "title7": "",
      },
      {
        "title1": "  2023-11-20 16 : 25",
        "title2": "   이반",
        "title3": "내동초동학교 1-3",
        "title4": "남",
        "title5": "",
        "title6": "",
        "title7": "",
      },
    ],
    '마리아': [
      {
        "title1": "  2023-11-20 16 : 25",
        "title2": "   마리아",
        "title3": "미동초동학교 1-3",
        "title4": "여",
        "title5": "번역가",
        "title6": "추승철",
        "title7": "05 : 25",
        "image": "images/Expert.png",
      },
      {
        "title1": "  2023-11-20 16 : 25",
        "title2": "   마리아",
        "title3": "내동초동학교 4-1",
        "title4": "남",
        "title5": "",
        "title6": "",
        "title7": "",
      },
    ],
  };


  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 15,),
                      Image.asset('images/woman.png', width: 40, height: 40, ),
                      SizedBox(width: 5,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("타오",style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                          SizedBox(height: 5,),
                          Text("1남1녀",style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 35,),
                Container(
                  child: Row(
                    children: [
                      Image.asset('images/girl.png',width: 40, height: 40,),
                      SizedBox(width: 20,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("이반", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 40,),
                              Text("내동초4-1", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 40,),
                              Text("남", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("마리아", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 26,),
                              Text("내동초1-3" ,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                              SizedBox(width: 39,),
                              Text("여" ,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
                    ),
                 TabBar(
                   controller: _tabController,
                   onTap: (index) {
                     setState(() {});
                   },
                   isScrollable: true,
                   labelColor: Colors.black,
                   unselectedLabelColor: Colors.grey,
                   labelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),
                   indicatorSize: TabBarIndicatorSize.tab,
                   indicator: UnderlineTabIndicator(
                     borderSide: BorderSide(width: 1.5,color: Colors.orange),
                     insets: EdgeInsets.symmetric(horizontal: 10),
                   ),
                   tabs: [
                     Container(
                       margin: EdgeInsets.only(right: 8),
                       padding: EdgeInsets.symmetric(horizontal: 1),
                       child: Tab(text: '전체'),
                     ),
                     Container(
                       margin: EdgeInsets.only(right: 8),
                       padding: EdgeInsets.symmetric(horizontal: 1),
                       child: Tab(text: '이반'),
                     ),
                     Container(
                       padding: EdgeInsets.symmetric(horizontal: 1),
                       child: Tab(text: '마리아'),
                     ),
                   ],
                 ),


        Expanded(
          child: ListView.builder(
            itemCount: nameToData.values.elementAt(_tabController.index).length,
            itemBuilder: (BuildContext context ,int index){
              List<Map<String, String>> data = nameToData.values.elementAt(_tabController.index);
              return GestureDetector(
                onTap:() => _navigateToUserTranslateScreen(context),
                child:Container(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  //padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFEBEBEB),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: UserCustomListTile(
                    title1: data[index]["title1"]!,
                    title2: data[index]["title2"]!,
                    title3: data[index]["title3"]!,
                    title4: data[index]["title4"]!,
                    title5: data[index]["title5"]!,
                    title6: data[index]["title6"]!,
                    title7: data[index]["title7"]!,
                    imageAsset: data[index]["image"],
                  ),
                ),
              );
            },
          ),
        ),
          ],
        ),
    );
  }
}
