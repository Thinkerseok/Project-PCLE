import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Parking extends StatefulWidget {
  const Parking({super.key});

  @override
  Splash createState() => Splash();
}

class Splash extends State<Parking> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Timer(
        const Duration(seconds: 3),
            () =>
            Navigator?.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const MyHomePage())));

    return Scaffold(
      backgroundColor: const Color.fromRGBO(44, 37, 37, 1.0),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
                child: SizedBox(
                    width: 200, child: Image.asset('images/pcle_logo.png'))),
            const Text(
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
                '효율적인 일정 관리, 체계적인 업무 수행을 도와주는\nPCLE만의 서비스를 경험해보세요!'),
            Container(height: 10)
          ],
        ),
      ),
    );
  }
}
