import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Model/home_detail_model.dart';
import 'package:flutterfavorapp/Core/ViewModel/favor_viewModel.dart';
import 'package:flutterfavorapp/Extension/int_extension.dart';
import 'package:flutterfavorapp/UI/Pages/meal_detail/meal_detail.dart';
import 'package:flutterfavorapp/UI/Widgets/meal_operation_small.dart';
import 'package:provider/provider.dart';

final cardRadius = 12.Pt;

class meal_detail_card extends StatelessWidget {
  final DetailModel model;

  meal_detail_card(this.model);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10.Pt),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(cardRadius))),
        child: Column(
          children: <Widget>[topInfo(context), bottomInfo()],
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .pushNamed(meal_detail.routNName, arguments: model);
      },
    );
  }

  Widget topInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          child: Image.network(
            model.imageUrl,
            height: 250.Pt,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(cardRadius),
              topRight: Radius.circular(cardRadius)),
        ),
        Positioned(
          right: 20.Pt,
          bottom: 10.Pt,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(8.Pt)),
            padding: EdgeInsets.symmetric(horizontal: 10.Pt, vertical: 5.Pt),
            width: 250.Pt,
            child: Text(model.title,
                style: Theme.of(context)
                    .textTheme
                    .display3
                    .copyWith(color: Colors.white)),
          ),
        )
      ],
    );
  }

  Widget bottomInfo() {
    return Padding(
      padding: EdgeInsets.all(8.Pt),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          operation_samll(Icon(Icons.schedule), Text('${model.duration} 分钟')),
          operation_samll(
              Icon(Icons.restaurant), Text('${model.operationStatus}')),
          collect_widget(model)
        ],
      ),
    );
  }

  //收藏按钮
  Widget collect_widget(DetailModel model) {
    return Consumer<favorMealsViewModel>(
      builder: (context, mealVM, child) {
        bool isFavor = mealVM.isFavor(model);
        return GestureDetector(
          child: operation_samll(
            Icon(
              isFavor ? Icons.favorite : Icons.favorite_border,
              color: isFavor ? Colors.red : Colors.black,
            ),
            Text(
              isFavor ? '已收藏' : '未收藏',
            ),
            model: model,
          ),
          onTap: () {
            mealVM.handleMeal(model);
          },
        );
      },
    );
  }
}
