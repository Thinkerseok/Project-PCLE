import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util.dart';

class DDayText extends Container {
  DDayText(this.d_day, this.text, {super.key});

  final String d_day;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              width: 45.0,
              height: 20.0,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(65, 203, 24, 1.0),
                  borderRadius: BorderRadius.circular(6.0)),
              child: Text('D-$d_day',
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.center)),
          Container(width: 10.0),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
