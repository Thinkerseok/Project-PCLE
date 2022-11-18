import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcle/component/setting_tile.dart';
import 'package:pcle/util.dart';

class ProjectSetting extends StatelessWidget {
  ProjectSetting({super.key, required this.projectName});

  final String projectName;

  final List<String> modeList = ['개인', '협업(팀 프로젝트)'];

  String text = '협업(팀 프로젝트)';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(44, 37, 37, 1.0),
        elevation: 0.0,
        title: const Text('PROJECT 설정'),
      ),
      body: Container(
        color: const Color.fromRGBO(44, 37, 37, 1.0),
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(46, 53, 35, 1.0),
            borderRadius: BorderRadius.circular(Util.radius),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                settingTile('NAME', projectName),
                Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                    width: double.maxFinite,
                    height: 1.0,
                    color: const Color.fromRGBO(66, 76, 50, 1.0)),
                ListTile(
                  title:
                      const Text('MODE', style: TextStyle(color: Colors.white)),
                  subtitle: const Text('협업(팀 프로젝트)',
                      style:
                          TextStyle(color: Color.fromRGBO(65, 203, 24, 1.0))),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("MODE"),

                        content: Container(
                          height: 200.0,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: const Text('개인'),
                                leading: Radio(
                                  value: '개인',
                                  groupValue: text,
                                  onChanged: (value) {
                                    text = '개인';
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              ListTile(
                                title: const Text('협업(팀 프로젝트)'),
                                leading: Radio(
                                  value: '협업(팀 프로젝트)',
                                  groupValue: text,
                                  onChanged: (value) {
                                    text = '협업(팀 프로젝트)';
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                    width: double.maxFinite,
                    height: 1.0,
                    color: const Color.fromRGBO(66, 76, 50, 1.0)),
                settingTile('FILE', '문서'),
                Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                    width: double.maxFinite,
                    height: 1.0,
                    color: const Color.fromRGBO(66, 76, 50, 1.0)),
                settingTile('DEAD LINE', '2022년 12월 20일 (화)'),
                Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                    width: double.maxFinite,
                    height: 1.0,
                    color: const Color.fromRGBO(66, 76, 50, 1.0)),
                settingTile('MEMBER', 'USER 02, USER 05'),
                Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                    width: double.maxFinite,
                    height: 1.0,
                    color: const Color.fromRGBO(66, 76, 50, 1.0)),
                settingTile('LABELING', '날짜_팀원명_ver'),
                Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                    width: double.maxFinite,
                    height: 1.0,
                    color: const Color.fromRGBO(66, 76, 50, 1.0)),
                settingTile('MANAGEMENT', '켜짐'),
                Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                    width: double.maxFinite,
                    height: 1.0,
                    color: const Color.fromRGBO(66, 76, 50, 1.0)),
                settingTile('중요도', '보통'),
                Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                    width: double.maxFinite,
                    height: 1.0,
                    color: const Color.fromRGBO(66, 76, 50, 1.0)),
                settingTile('난이도', '높음'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
