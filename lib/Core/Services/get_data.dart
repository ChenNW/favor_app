

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutterfavorapp/Core/Model/home_category_model.dart';

class jsonParse {

   static Future<List<home_category_model>> get_category_data () async{

     //1.得到的是字符串
     final jsonString = await rootBundle.loadString('assets/json/category.json');

     //2.将字符串转成Map/List
     final result = json.decode(jsonString);

     //数组
     List<home_category_model> categories = [];
     for(var json in result['category']){
       categories.add(home_category_model.fromJson(json));
     }
     return categories;

   }

}