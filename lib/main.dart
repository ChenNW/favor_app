import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Router/providers.dart';
import 'package:flutterfavorapp/UI/Shared/theme_data.dart';

main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '美食广场',
      theme: theme_data.lightTheme,
      initialRoute: NWProviders.initialization_route,
      routes: NWProviders.routers,
      onUnknownRoute: NWProviders.NwUnkonwn_page,
    );
  }
}
