import 'package:flutter/material.dart';
import 'package:pcle/component/d_day_text.dart';
import 'package:pcle/main.dart';
import 'package:pcle/project_setting.dart';
import 'package:pcle/util.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<String> projectEntries = <String>[];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(65, 203, 24, 1.0),
              borderRadius: BorderRadius.circular(Util.radius),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text(
                  '11/18(FRI)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  '반가워요 User01 님 :)\n오늘은 어떤 업무를 진행해볼까요?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            height: Util.gap,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(46, 53, 35, 1.0),
                borderRadius: BorderRadius.circular(Util.radius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  extensionTitle('PLAN 관리', 1),
                  DDayText('2', 'PROJECT A 제안서 2차 수정'),
                  Container(height: 15.0),
                  DDayText('8', 'PROJECT B 아이디어 노트 작성'),
                  Container(height: 15.0),
                  DDayText('13', '개인 과제 A 마감 및 제출'),
                  Container(height: 15.0),
                  DDayText('21', 'PROJECT A 최종 제안서 제출'),
                ],
              ),
            ),
          ),
          Container(height: Util.gap),
          Container(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            width: double.maxFinite,
            height: 195,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(46, 53, 35, 1.0),
              borderRadius: BorderRadius.circular(Util.radius),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                extensionTitle('PROJECT 관리', 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.note,
                            color: Color.fromRGBO(65, 203, 24, 1.0)),
                        label: const Text('PROJECT A 제안서_20221004_팀원A_ver2'),
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white)),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.note,
                            color: Color.fromRGBO(65, 203, 24, 1.0)),
                        label: const Text('개인 과제 A_20221005_ver4'),
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white)),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.note,
                            color: Color.fromRGBO(65, 203, 24, 1.0)),
                        label: const Text('PROJECT B 과제 정의서_20221026'),
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
          Container(height: Util.gap),
          Container(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            width: double.maxFinite,
            height: 100.0,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(46, 53, 35, 1.0),
                borderRadius: BorderRadius.circular(Util.radius)),
            child: Column(
              children: <Widget>[
                extensionTitle('Neighbor 관리', 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.man,
                            color: Color.fromRGBO(65, 203, 24, 1.0)),
                        label: const Text('User 02',
                            style: TextStyle(color: Colors.white))),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.man,
                            color: Color.fromRGBO(65, 203, 24, 1.0)),
                        label: const Text('User 05',
                            style: TextStyle(color: Colors.white))),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.group,
                            color: Color.fromRGBO(65, 203, 24, 1.0)),
                        label: const Text('TEAM A',
                            style: TextStyle(color: Colors.white))),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Row extensionTitle(String title, int index) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold)),
      Material(
          color: const Color.fromRGBO(46, 53, 35, 1.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_right, color: Colors.white),
          ))
    ],
  );
}
