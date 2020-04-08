import 'package:flutter/material.dart';
import 'package:flutterfavorapp/UI/Pages/favorite/favor_content.dart';

class NWfavorite_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('我的收藏'),
      ),

      body: favor_content(),
    );
  }
}
