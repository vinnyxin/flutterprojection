import 'package:flutter/material.dart';
import 'package:eggtranslate/Main/User/share_screen.dart';
import 'package:eggtranslate/Main/main_screen.dart';

void _navigateToMainScreen(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()),
  );
}

class UserTranslateScreen extends StatefulWidget {
  const UserTranslateScreen({super.key});

  @override
  State<UserTranslateScreen> createState() => _UserTranslateScreenState();
}

class _UserTranslateScreenState extends State<UserTranslateScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isCrossIconVisible = false;
  bool _isPopupOpen = false;

  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.92,
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: ShareScreen(),
                    ),
                  ],
                ),

              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10, bottom: 20),
            icon: Image.asset('images/Homeback.png', width: 25, height: 25,),
            onPressed: () {
              _navigateToMainScreen(context);
            },
          ),
        ],
      ),


      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 1.5, color: Colors.orange),
              insets: EdgeInsets.only(left: -50, right: 40),
            ),
            tabs: [
              Container(
                  width: 80,
                  alignment: Alignment.centerLeft,
                  child: Tab(text: '번역',)),
              Container(
                  width: 80,
                  alignment: Alignment.centerLeft,
                  child: Tab(text: 'AI번역',)),
              Container(
                  width: 80,
                  alignment: Alignment.centerLeft,
                  child: Tab(text: '원본',)),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(
                  child: Text('Утро в Москве начинается рано. '
                      'Когда первые лучи солнца пробиваются сквозь городскую тишину, '
                      'столица России просыпается ото сна. \n Люди спешат на работу, дети идут в школу, '
                      'а уличные торговцы готовят свои ларьки к новому дню. Москва — город контрастов. '
                      'Здесь сочетаются древние кремлевские стены и современные стеклянные небоскрёбы.\n  Парки и скверы украшены зелёными насаждениями, '
                      'а узкие улочки центра полны кафе и ресторанов. Каждый уголок города окутан легендами и историями. Транспортная система Москвы — о'
                      'дна из самых развитых в мире.\n '
                      'Метро, украшенное мрамором, бронзой и мозаиками, стало не только способом передвижения, но и настоящим произведением искусства. '
                      'За годы своего существования московский метрополитен стал символом города.\n Культура Москвы богата и многогранна. Театры, '
                      'музеи, выставки и концерты проходят каждый день. Большой театр, Пушкинский музей, '
                      'Государственный исторический музей — это лишь малая часть того, что можно увидеть и почувствовать в этом городе.\n '
                      'Но самое важное в Москве — это люди. '
                      'Город живёт своей жизнью, полной радости, гордости и мечтаний. На улицах встречаются разные люди: бизнесмены и студенты, '
                      'туристы и жители. Они все вместе создают уникальную атмосферу этого города.Кухня Москвы также заслуживает особого внимания. Рестораны '
                      'предлагают блюда русской,\n'
                      ' французской, \n'
                      'итальянской и многих других кухонь. '
                      'Сибирская уха, бефстроганов, пельмени — это лишь несколько примеров того, '
                      'что можно попробовать в московских ресторанах.\n В заключение, Москва — это не просто город, это мир,'
                      ' полный возможностей и открытий. Каждый, кто приезжает сюда, оставляет часть своего сердца в '
                      'этом великолепном городе\n '),
                ),
                Center(
                  child: Text('Утро в Москве начинается рано. '
                      'Когда первые лучи солнца пробиваются сквозь городскую тишину, '
                      'столица России просыпается ото сна. \n Люди спешат на работу, дети идут в школу, '
                      'а уличные торговцы готовят свои ларьки к новому дню. Москва — город контрастов. '
                      'Здесь сочетаются древние кремлевские стены и современные стеклянные небоскрёбы.\n  Парки и скверы украшены зелёными насаждениями, '
                      'а узкие улочки центра полны кафе и ресторанов. Каждый уголок города окутан легендами и историями. Транспортная система Москвы — о'
                      'дна из самых развитых в мире.\n '
                      'Метро, украшенное мрамором, бронзой и мозаиками, стало не только способом передвижения, но и настоящим произведением искусства. '
                      'За годы своего существования московский метрополитен стал символом города.\n Культура Москвы богата и многогранна. Театры, '
                      'музеи, выставки и концерты проходят каждый день. Большой театр, Пушкинский музей, '
                      'Государственный исторический музей — это лишь малая часть того, что можно увидеть и почувствовать в этом городе.\n '
                      'Но самое важное в Москве — это люди. '
                      'Город живёт своей жизнью, полной радости, гордости и мечтаний. На улицах встречаются разные люди: бизнесмены и студенты, '
                      'туристы и жители. Они все вместе создают уникальную атмосферу этого города.Кухня Москвы также заслуживает особого внимания. Рестораны '
                      'предлагают блюда русской,\n'
                      ' французской, \n'
                      'итальянской и многих других кухонь. '
                      'Сибирская уха, бефстроганов, пельмени — это лишь несколько примеров того, '
                      'что можно попробовать в московских ресторанах.\n В заключение, Москва — это не просто город, это мир,'
                      ' полный возможностей и открытий. Каждый, кто приезжает сюда, оставляет часть своего сердца в '
                      'этом великолепном городе\n '),
                ),
                Center(
                  child: Text(
                      '서울의 아침은 늘 분주하게 시작된다. 도심의 높은 빌딩들 사이로 떠오르는 해와 함께, 도시는 그 활기를 더한다. '
                          '사람들은 일과 학교를 향해 길을 서둘러 가고, 길거리는 차와 버스의 소음으로 가득 차 있다. \n'
                          '서울은 대한민국의 수도이자 최대 도시다. 이곳은 전통과 현대가 공존하는 도시로, 한옥과 초고층 아파트가 공존한다.'
                          '한강을 따라 놓인 공원과 산책로, 그리고 명동이나 강남 같은 번화가는 서울의 다양한 면모를 보여준다. \n'
                          '교통은 서울의 큰 문제 중 하나이다. 하지만 이 도시의 교통 시스템은 지속적인 개선을 거듭해, 편리하게 이동할 수 있는 환경을 만들어 가고 있다. '
                          ' 또한, 서울 지하철은 세계적으로도 유명한 교통 수단으로, 다양한 역사적과 문화적 명소가 인접해 있다.\n'
                          '서울은 문화의 중심지로도 알려져 있다. '
                          '김치, 불고기, 냉면 등 전통적인 음식부터, 다국적 요리와 현대적인 카페, 음식 트럭까지 다양한 선택지가 있어 방문객들의 입맛을 사로잡는다.'
                          '결론적으로, 서울은 아시아의 하늘에 빛나는 보석과도 같은 도시이다. 그 고요함 속에도 활기찬 에너지가 넘치며, '
                          '방문객들에게 다양한 경험과 추억을 선사한다.\n'
                          '서울의 밤은 빛나는 불빛으로 가득하다. 대형 상업 건물의 LED 화면은 도시의 무드를 강조하며, 거리의 불빛은 교차로와 길거리를 환하게 밝혀준다. '
                          '이 시간에도 서울은 절대로 잠들지 않는다. '
                          '클럽, 바, 카페가 24시간 운영되며, 사람들은 밤늦게까지 활기찬 문화와 먹거리를 즐긴다.'
                          '서울의 산은 도시의 휴식처이다. 북한산, 인왕산, 남산과 같은 산들은 도시의 바쁜 생활에서 벗어나 평온한 시간을 보낼 수 있는 곳이다. '
                          '등산로, 전망대, 휴식 공간은 많은 서울 시민들이 주말에 즐기는 레저 활동 중 하나다.'
                          '서울의 학교와 대학교는 국제적으로도 유명하다. 서울대학교, 연세대학교, 고려대학교 등은 전 세계 학생들의 꿈과 목표이며, '
                          '그들은 이곳에서 다양한 학문과 연구를 통해 성장한다. '
                          '또한, 학교 주변에는 학생들을 위한 다양한 편의시설과 문화 공간이 있어 학생 생활이 풍요롭다.\n'
                          '마지막으로, 서울은 그 자체로 하나의 문화이자 아트스테이지이다. '
                          '도시의 거리, 건물, 공원, 인파들은 연출과 예술의 배경이 되며,\n'),
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: Stack(
    children: <Widget>[
    Positioned(
    bottom: 60,
    right: -1,
    child: FloatingActionButton(
        mini: true,
        child: Image.asset('images/share.png',width: 25, height: 25,),
        backgroundColor:Color(0xFF003AFF),
        onPressed: () {
          setState(() {
            _isCrossIconVisible = !_isCrossIconVisible;
          });
          if (_isCrossIconVisible) {
            _showModalBottomSheet();
            _isPopupOpen = true;
          } else {
            _isPopupOpen = false;
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      ),
      ]
      ),
    );
  }
}