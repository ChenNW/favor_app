

import 'package:flutter/material.dart';
import 'package:flutterfavorapp/UI/Pages/favorite/Favorite.dart';
import 'package:flutterfavorapp/UI/Pages/home/home_page.dart';

final List<Widget> pages = [
  NWHome_page(),
  NWfavorite_page()
];


final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('首页',),),
  BottomNavigationBarItem(icon: Icon(Icons.star),title: Text('收藏'))
];