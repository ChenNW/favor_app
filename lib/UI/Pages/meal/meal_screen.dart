
import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Model/home_category_model.dart';
import 'package:flutterfavorapp/UI/Pages/meal/meal_content.dart';

class meal_scrren extends StatelessWidget {

  static const routeName = '/meal';

  @override
  Widget build(BuildContext context) {

    final category_model = ModalRoute.of(context).settings.arguments as home_category_model;

    return Scaffold(
      appBar: AppBar(
        title: Text(category_model.title),
      ),
      body: meal_content(),
    );
  }
}
