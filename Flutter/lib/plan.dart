import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pcle/component/d_day_text.dart';
import 'package:pcle/component/titled_container.dart';
import 'package:pcle/util.dart';
import 'package:table_calendar/table_calendar.dart';

class Plan extends StatelessWidget {
  const Plan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(46, 53, 35, 1.0),
                borderRadius: BorderRadius.circular(Util.radius),
              ),
              child: Column(
                children: <Widget>[
                  TitledContainer(
                    height: 380.0,
                    title: '월간 PLAN 관리',
                    contents: TableCalendar(
                      eventLoader: (day) {
                        int d = day.day;
                        if (day.year == 2022 && day.month == 11 && (d == 20 || d == 26)) {
                          return ['hi'];
                        }
                        return [];
                      },
                      firstDay: DateTime.utc(2021, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.utc(2022, 11, 18),
                      headerVisible: false,
                      calendarStyle: const CalendarStyle(
                        isTodayHighlighted: true,
                        defaultTextStyle: TextStyle(color: Colors.white),
                        weekendTextStyle: TextStyle(color: Colors.red),
                        outsideDaysVisible: false,
                        markerDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                            color: Color.fromRGBO(65, 203, 24, 1.0)),
                      ),
                      calendarBuilders: CalendarBuilders(
                        dowBuilder: (context, day) {
                          switch (day.weekday) {
                            case 1:
                              return const Center(
                                  child: Text('MON',
                                      style: TextStyle(color: Colors.white)));
                            case 2:
                              return const Center(
                                  child: Text('TUE',
                                      style: TextStyle(color: Colors.white)));
                            case 3:
                              return const Center(
                                  child: Text('WED',
                                      style: TextStyle(color: Colors.white)));
                            case 4:
                              return const Center(
                                  child: Text('THU',
                                      style: TextStyle(color: Colors.white)));
                            case 5:
                              return const Center(
                                  child: Text('FRI',
                                      style: TextStyle(color: Colors.white)));
                            case 6:
                              return const Center(
                                  child: Text('SAT',
                                      style: TextStyle(color: Colors.red)));
                            case 7:
                              return const Center(
                                  child: Text('SUN',
                                      style: TextStyle(color: Colors.red)));
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 10),
            Container(
              padding: const EdgeInsets.all(10.0),
              width: double.maxFinite,
              height: 170.0,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(46, 53, 35, 1.0),
                borderRadius: BorderRadius.circular(Util.radius),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('세부 PLAN 관리',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Material(
                        color: const Color.fromRGBO(46, 53, 35, 1.0),
                        child: IconButton(
                            onPressed: () async {
                              /*FilePickerResult? result = await FilePicker.platform.pickFiles();

                              if (result != null) {
                                File file = File(result.files.single.path);
                              } else {
                                // User canceled the picker
                              }*/
                            },
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints()),
                      ),
                    ],
                  ),
                  Container(height: 15.0),
                  Column(
                    children: <Widget>[
                      DDayText('2', 'PROJECT A 제안서 2차 수정'),
                      Container(height: 10.0),
                      DDayText('8', 'PROJECT B 아이디어 노트 작성'),
                      Container(height: 10.0),
                      DDayText('13', '개인 과제 A 마감 및 제출'),
                      Container(height: 10.0),
                      DDayText('21', 'PROJECT A 최종 제안서 제출'),
                    ],
                  ),
                ],
              ),
            ),
            Container(height: 10),
            TitledContainer(
                contents: Container(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset('images/recommend_plan_1.png',
                              height: 80.0),
                          Container(width: 15.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: const <Widget>[
                                  Text('문서 파일 비중 ',
                                      style: TextStyle(color: Colors.white)),
                                  Text(
                                    '80%',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(65, 203, 24, 1.0)),
                                  ),
                                ],
                              ),
                              Container(height: 10.0),
                              Row(
                                children: const <Widget>[
                                  Text('권장 일 평균 작업시간 ',
                                      style: TextStyle(color: Colors.white)),
                                  Text(
                                    '3시간',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(65, 203, 24, 1.0)),
                                  ),
                                ],
                              ),
                              Container(height: 10.0),
                              Row(
                                children: const <Widget>[
                                  Text('권장 주 평균 작업횟수 ',
                                      style: TextStyle(color: Colors.white)),
                                  Text(
                                    '4회',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(65, 203, 24, 1.0)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(height: 30.0),
                      Row(
                        children: <Widget>[
                          Image.asset('images/recommend_plan_2.png',
                              height: 80.0),
                          Container(width: 15.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: const <Widget>[
                                  Text('개인 업무 비중 ',
                                      style: TextStyle(color: Colors.white)),
                                  Text(
                                    '75%',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(65, 203, 24, 1.0)),
                                  ),
                                ],
                              ),
                              Container(height: 10.0),
                              Row(
                                children: const <Widget>[
                                  Text('협업 비중 ',
                                      style: TextStyle(color: Colors.white)),
                                  Text(
                                    '25%',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(65, 203, 24, 1.0)),
                                  ),
                                ],
                              ),
                              Container(height: 10.0),
                              Row(
                                children: const <Widget>[
                                  Text('전체 진행률 ',
                                      style: TextStyle(color: Colors.white)),
                                  Text(
                                    '60%',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(65, 203, 24, 1.0)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                title: '추천 PLAN',
                height: 250.0),
            Container(height: 10),
            TitledContainer(
                contents: Container(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: const <Widget>[
                          Text('일 평균 작업시간은 ',
                              style: TextStyle(color: Colors.white)),
                          Text('4시간',
                              style: TextStyle(
                                  color: Color.fromRGBO(65, 203, 24, 1.0))),
                          Text(' 이에요.', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Container(height: 5),
                      Row(
                        children: const <Widget>[
                          Text('매주 ', style: TextStyle(color: Colors.white)),
                          Text('4회',
                              style: TextStyle(
                                  color: Color.fromRGBO(65, 203, 24, 1.0))),
                          Text(' 문서 작업을 해요.',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Container(height: 5),
                      Row(
                        children: const <Widget>[
                          Text('매주 ', style: TextStyle(color: Colors.white)),
                          Text('2회',
                              style: TextStyle(
                                  color: Color.fromRGBO(65, 203, 24, 1.0))),
                          Text(' 제출해야 할 문서가 있어요.',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Container(height: 5),
                      Row(
                        children: const <Widget>[
                          Text('매달 ', style: TextStyle(color: Colors.white)),
                          Text('2회',
                              style: TextStyle(
                                  color: Color.fromRGBO(65, 203, 24, 1.0))),
                          Text(' 협업 프로젝트를 진행해요.',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Container(height: 5),
                      Row(
                        children: const <Widget>[
                          Text('대단해요! PCLE ',
                              style: TextStyle(color: Colors.white)),
                          Text('상위 5%',
                              style: TextStyle(
                                  color: Color.fromRGBO(65, 203, 24, 1.0))),
                          Text(' 열일러 :)',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),
                title: 'AI 패턴 분석',
                height: 160.0),
          ],
        ),
      ),
    );
  }
}
