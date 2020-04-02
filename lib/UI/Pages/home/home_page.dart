
import 'package:flutter/material.dart';
import 'package:flutterfavorapp/UI/Pages/home/home_content.dart';

class NWHome_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('美食广场'),
      ),
      body: NWHome_content(),
    );
  }
}
