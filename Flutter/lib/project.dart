import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcle/component/titled_container.dart';
import 'package:pcle/project_setting.dart';
import 'package:pcle/util.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ProjectState();
}

class ProjectState extends State<Project> {
  List<String> entries = <String>[
    'PROJECT A 제안서_20221004_팀원A_ver2',
    '개인 과제 A_20221005_ver4',
    'PROJECT B 과제 정의서_20221003',
    '개인 과제 B_20221001_ver2',
    '포트폴리오_직무반영_20221005_ver14',
    'PROJECT C 설계 계획서_20221005_팀원C_ver2',
    'PROJECT A 기획 발표안_20221003_팀원B_ver7',
    '아이디어 공모전 공고문(안) A_20220928'
  ];

  List<IconData> iconDataEntries = <IconData>[
    Icons.file_copy_outlined,
    Icons.file_present,
    Icons.file_copy,
    Icons.file_copy,
    Icons.screenshot_monitor,
    Icons.file_copy,
    Icons.screenshot_monitor,
    Icons.picture_as_pdf,
  ];

  int cnt = 2;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: TitledContainer(
                    title: 'PROJECT 관리',
                    contents: Expanded(
                      child: ListView.builder(
                        itemCount: entries.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              TextButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProjectSetting(
                                                    projectName:
                                                        entries[index])));
                                  },
                                  icon: Icon(iconDataEntries[index],
                                      color: const Color.fromRGBO(
                                          65, 203, 24, 1.0)),
                                  label: Text(entries[index],
                                      style: const TextStyle(
                                          color: Colors.white))),
                            ],
                          );
                        },
                      ),
                    ),
                    height: 300.0,
                  ),
                ),
                Container(height: 10),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(46, 53, 35, 1.0),
                    borderRadius: BorderRadius.circular(Util.radius),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(65, 203, 24, 1.0))),
                          child: const Icon(Icons.remove)),
                      ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(65, 203, 24, 1.0))),
                          child: const Icon(Icons.share)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              cnt++;
                              entries.insert(0, '개인 과제 B_20221118_ver$cnt');
                              iconDataEntries.insert(0, Icons.file_copy);
                            });
                          },
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(65, 203, 24, 1.0))),
                          child: const Icon(Icons.add)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
