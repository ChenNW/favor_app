
import 'package:flutter/material.dart';


class NWMainPage extends StatefulWidget {
  static final String initialization_name = "/";
  @override
  _NWMainPageState createState() => _NWMainPageState();
}

class _NWMainPageState extends State<NWMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('首页')),
        BottomNavigationBarItem(icon: Icon(Icons.star),title: Text('收藏'))
      ]),

    );
  }
}

