import 'package:flutter/material.dart';

class theme_data {
  static const double _primary_font_size = 20;

  static const double body_text_font = 14;
  static const double normal_text_font = 16;
  static const double middle_text_font = 18;
  static const double large_text_font = 20;

  //亮色模式
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.pink,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    canvasColor: Color.fromRGBO(255, 254, 222, 1), //背景色
    primaryTextTheme: TextTheme(
        title: TextStyle(fontSize: _primary_font_size, color: Colors.white)),
    textTheme: TextTheme(
        body1: TextStyle(fontSize: body_text_font, color: Colors.black54),
        display1: TextStyle(fontSize: normal_text_font),
        display2: TextStyle(fontSize: middle_text_font),
        display3: TextStyle(fontSize: large_text_font)),
  );

  //暗黑模式
  static final ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.blueGrey,
      primaryTextTheme: TextTheme(
          title:
              TextStyle(color: Colors.white70, fontSize: _primary_font_size)),
      textTheme: TextTheme(
          body1: TextStyle(fontSize: body_text_font, color: Colors.white70)));
}
