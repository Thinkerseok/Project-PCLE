import 'package:flutter/material.dart';
import 'package:pcle/home.dart';
import 'package:pcle/my.dart';
import 'package:pcle/parking.dart';
import 'package:pcle/plan.dart';
import 'package:pcle/project.dart';
import 'package:pcle/setting.dart';
import 'package:pcle/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PCLE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Parking(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    const Plan(),
    const Project(),
    const Setting(),
    const My()
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(44, 37, 37, 1.0),
        elevation: 0.0,
        title: Container(
          height: 100,
          child: Image.asset(
            'images/pcle_logo.png',
            fit: BoxFit.cover,
          ),
        ),
        actions: <IconButton>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chat,
                color: Color.fromRGBO(65, 203, 24, 1.0),
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.doorbell,
                color: Color.fromRGBO(65, 203, 24, 1.0),
              )),
        ],
      ),
      backgroundColor: const Color.fromRGBO(44, 37, 37, 1.0),
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0))
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromRGBO(46, 53, 35, 1.0),
          selectedItemColor: const Color.fromRGBO(65, 203, 24, 1.0),
          unselectedItemColor: const Color.fromRGBO(255, 255, 255, 1.0),
          onTap: _onTap,
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromRGBO(65, 203, 24, 1.0),
                ),
                label: '홈'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                  color: Color.fromRGBO(65, 203, 24, 1.0),
                ),
                label: 'PLAN'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.note,
                  color: Color.fromRGBO(65, 203, 24, 1.0),
                ),
                label: 'PROJECT'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Color.fromRGBO(65, 203, 24, 1.0),
                ),
                label: '설정'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: Color.fromRGBO(65, 203, 24, 1.0),
                ),
                label: 'MY'),
          ],
        ),
      ),
    );
  }
}
