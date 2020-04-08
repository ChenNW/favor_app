import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/ViewModel/favor_viewModel.dart';
import 'package:flutterfavorapp/UI/Pages/meal/meal_detail_card.dart';
import 'package:provider/provider.dart';

class favor_content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<favorMealsViewModel>(
      builder: (ctx,favorVM,child){

        return ListView.builder(
          itemCount: favorVM.favorMeals.length,
          itemBuilder: (ctx, index) {
            return meal_detail_card(favorVM.favorMeals[index]);
          },
        );

      },

    );
  }
}
