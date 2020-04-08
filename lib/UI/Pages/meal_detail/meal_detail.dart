import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Model/home_detail_model.dart';
import 'package:flutterfavorapp/Core/ViewModel/favor_viewModel.dart';
import 'package:flutterfavorapp/UI/Pages/meal_detail/detail_content.dart';
import 'package:provider/provider.dart';

class meal_detail extends StatelessWidget {
  static const routNName = '/detail';

  @override
  Widget build(BuildContext context) {
    final _model = ModalRoute.of(context).settings.arguments as DetailModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(_model.title),
      ),
      body: detail_content(_model),
      floatingActionButton: Consumer<favorMealsViewModel>(
        builder: (context, favorVMm, child) {
          return FloatingActionButton(
            onPressed: () {
              favorVMm.handleMeal(_model);
            },
            child: Icon(favorVMm.isFavor(_model)?Icons.favorite:Icons.favorite_border,color:favorVMm.isFavor(_model)?Colors.red:Colors.black ,),
          );
        },
      ),
    );
  }
}
