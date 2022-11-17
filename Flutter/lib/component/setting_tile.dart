import 'package:flutter/material.dart';

ListTile settingTile(String title, String subtitle) {
  return ListTile(
    title: Text(title, style: const TextStyle(color: Colors.white)),
    subtitle: Text(subtitle,
        style: const TextStyle(color: Color.fromRGBO(65, 203, 24, 1.0))),
    onTap: () {},
  );
}