import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Model/home_category_model.dart';
import 'package:flutterfavorapp/Core/Model/home_detail_model.dart';
import 'package:flutterfavorapp/Core/ViewModel/detail_viewModel.dart';
import 'package:flutterfavorapp/UI/Pages/meal/meal_detail_card.dart';
import 'package:provider/provider.dart';

class meal_content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryModel =
        ModalRoute.of(context).settings.arguments as home_category_model;

    return Selector<meal_viewModel, List<DetailModel>>(
      selector: (context, mealVM) => mealVM.meals
          .where((meal) => meal.categories.contains(categoryModel.id)).toList(),
      builder: (context, meal, child) {
        return ListView.builder(
            itemCount: meal.length,
            itemBuilder: (context, index) {
              return meal_detail_card(meal[index]);
            });
      },
    );
  }
}
