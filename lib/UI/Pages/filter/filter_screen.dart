import 'package:flutter/material.dart';
import 'package:flutterfavorapp/UI/Pages/filter/filter_content.dart';

class NWFilter_screen extends StatelessWidget {

  static const String routeName = '/filter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('过滤'),
      ),
      body: filter_content(),
    );
  }
}
