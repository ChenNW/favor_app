
import 'package:flutterfavorapp/UI/Pages/Unknown_page/unknown_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfavorapp/UI/Pages/main/NWMain.dart';

class NWProviders {

  static final initialization_route = NWMainPage.initialization_name;

  static final Map<String ,WidgetBuilder> routers = {//map类型
    initialization_route:(ctx) => NWMainPage()

  };


  //unkonwn_page

  static final RouteFactory NwUnkonwn_page =(setting){
    return MaterialPageRoute(builder: (ctx) => unKnown_page());
  };

}