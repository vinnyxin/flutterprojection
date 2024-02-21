import 'package:flutter/material.dart';

class DeleteScreen extends StatefulWidget {
  const DeleteScreen({super.key});

  @override
  State<DeleteScreen> createState() => _DeleteScreenState();
}

class _DeleteScreenState extends State<DeleteScreen> {

  void _showThankinformation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          content: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            height: 250,
            width: 600,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20, top: 10,),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, right: 10),
                          child: Image.asset(
                            'images/Close.png',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    child: Text(
                      '지금까지 알번역을 이용해주셔서 감사합니다.\n앞으로 더욱 발전하는 서비스가 되도록\n'
                          '노력하겠습니다.\n감사합니다.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        height: 2.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }


  void _showDeleteConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          content: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            height: 280,
            width: 800,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20,),
                    child: Text('정말로 계정을 삭제하시겠습니까?\n이 작업은 되돌릴 수 없으며, 모든 개인 정보와\n'
                        '데이터가 영구히 삭제되며, 이용하셨던 모든\n서비스를 더 이상하실 수 없게 됩니다.\n'
                        '여전히 계속 진행하시려면 ‘삭제’ 버튼을\n탭 해주세요.', textAlign: TextAlign.start,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,
                      height: 2.0,),),
                  ),
                  Spacer(),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color(0xFFD5D5D5),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 4,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            _showThankinformation();
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  width: 1,
                                  color: Color(0xFFD5D5D5),
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '삭제',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: InkWell(
                          onTap: () {
                            print('Cancel clicked');
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                '취소',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 250,),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: Text(
                '계정 삭제',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,),
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
              color: Color(0xFFD5D5D5),
              indent: 45,
              endIndent: 80,
            ),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: Text(
                '삭제된 계정은 복구할 수 없으며, 저장된\n정보는 완전히 삭제됩니다.\n\n그래도 계정을 삭제하시려면\n“삭제”를 탭하세요.',
                style: TextStyle(fontSize: 16,),
              ),
            ),
            Spacer(),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xFFD5D5D5),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            flex: 4,
            child: InkWell(
              onTap: _showDeleteConfirmationDialog,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 1, color: Color(0xFFD5D5D5)),
                  ),
                ),
                child: Center(
                  child: FittedBox(
                    child: Text(
                      "삭제",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 30,
                child: Center(
                  child: FittedBox(
                    child: Text(
                      "취소",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}