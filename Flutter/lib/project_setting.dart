import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcle/component/setting_tile.dart';
import 'package:pcle/util.dart';

class ProjectSetting extends StatelessWidget {
  const ProjectSetting({super.key, required this.projectName});

  final String projectName;

  @override
  Widget build(BuildContext context) {
    // Future<void> _askedToLead() async {
    //   await showDialog<String>(
    //       context: context,
    //       builder: (BuildContext context)
    //   {
    //     return SimpleDialog(
    //       title: const Text('Select assignment'),
    //       children: <Widget>[
    //         SimpleDialogOption(
    //           onPressed: () {},
    //           child: const Text('Treasury department'),
    //         ),
    //         SimpleDialogOption(
    //           onPressed: () {},
    //           child: const Text('State department'),
    //         ),
    //       ],
    //     );
    //   }
    // };

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
                settingTile('MODE', '협업(팀 프로젝트)'),
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