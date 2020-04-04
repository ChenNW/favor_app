
import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Model/home_detail_model.dart';

class meal_detail extends StatelessWidget {

  static const routNName = '/detail';

  @override
  Widget build(BuildContext context) {

    final _model = ModalRoute.of(context).settings.arguments as DetailModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(_model.title),
      ),
    );
  }
}
