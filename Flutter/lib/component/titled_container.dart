import 'package:flutter/material.dart';

import '../util.dart';

class TitledContainer extends Container {
  TitledContainer(
      {super.key,
      required this.contents,
      required this.title,
      required this.height});

  final Widget contents;
  final String title;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: double.maxFinite,
      height: height,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(46, 53, 35, 1.0),
        borderRadius: BorderRadius.circular(Util.radius),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(title,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
          Container(height: 15.0),
          contents
        ],
      ),
    );
  }
}
