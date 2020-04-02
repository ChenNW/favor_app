import 'package:flutter/material.dart';

class home_category_model {
  String id;
  String title;
  String color;
  Color CCorlor;

  home_category_model({this.id, this.title, this.color});

  home_category_model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];

    //转16进制
   final ColorInt =  int.parse(color,radix: 16);
   CCorlor = Color(ColorInt|0xFF000000);

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    return data;
  }
}
