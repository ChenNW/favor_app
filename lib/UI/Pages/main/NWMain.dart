
import 'package:flutter/material.dart';
import 'package:flutterfavorapp/UI/Pages/home/home_drawer.dart';
import 'package:flutterfavorapp/UI/Pages/main/initialize_page.dart';


class NWMainPage extends StatefulWidget {
  static final String initialization_name = "/";
  @override
  _NWMainPageState createState() => _NWMainPageState();
}

class _NWMainPageState extends State<NWMainPage> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentindex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
         items: items,
        unselectedFontSize: 14,
        currentIndex: _currentindex,
        onTap: (index){
           setState(() {
             _currentindex = index;
           });
        },
      ),
      drawer: home_drawer(),

    );
  }
}

