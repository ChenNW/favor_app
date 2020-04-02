import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Router/providers.dart';
import 'package:flutterfavorapp/UI/Pages/main/NWMain.dart';
import 'package:flutterfavorapp/UI/Shared/theme_data.dart';

main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme_data.lightTheme,
      initialRoute: NWProviders.initialization_route,
      onUnknownRoute: NWProviders.NwUnkonwn_page,
    );
  }
}
