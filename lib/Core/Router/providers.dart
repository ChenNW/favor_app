
import 'package:flutterfavorapp/UI/Pages/Unknown_page/unknown_page.dart';
import 'package:flutter/material.dart';
import 'package:flutterfavorapp/UI/Pages/main/NWMain.dart';
import 'package:flutterfavorapp/UI/Pages/meal/meal_screen.dart';
import 'package:flutterfavorapp/UI/Pages/meal_detail/meal_detail.dart';

class NWProviders {
  static final initialization_route = NWMainPage.initialization_name;
  static final Map<String ,WidgetBuilder> routers = {//map类型

    initialization_route:(context) => NWMainPage(),
    meal_scrren.routeName:(context) => meal_scrren(),
    meal_detail.routNName:(context) => meal_detail(),

  };


  //unkonwn_page

  static final RouteFactory NwUnkonwn_page =(setting){
    return MaterialPageRoute(builder: (ctx) => unKnown_page());
  };

}