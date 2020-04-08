import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Model/home_detail_model.dart';
import 'package:flutterfavorapp/UI/Pages/meal_detail/make_title.dart';
import 'package:flutterfavorapp/Extension/int_extension.dart';
import 'package:flutterfavorapp/UI/Pages/meal_detail/meal_detail_container.dart';

class detail_content extends StatelessWidget {
  final DetailModel _mealModel;

  detail_content(this._mealModel);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          top_image(),
          make_title('制作材料'),
          make_material(),
          make_title('制作过程'),
          make_process(),
        ],
      ),
    );
  }

  //top_image
  Widget top_image() {
    return Image.network(_mealModel.imageUrl);
  }

  //制作材料
  Widget make_material() {
    return detail_list_container(
      ListView.builder(
          padding: EdgeInsets.all(6.Pt),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: _mealModel.ingredients.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.amber,
              child: Padding(
                padding: EdgeInsets.all(6.Pt),
                child: Text(_mealModel.ingredients[index]),
              ),
            );
          }),
    );
  }

  //制作过程
  Widget make_process() {
    return detail_list_container(
      ListView.separated(
        padding: EdgeInsets.all(6.Pt),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: _mealModel.steps.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('#${index + 1}'),
            ),
            title: Text(_mealModel.steps[index]),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[200],
            height: 1,
          );
        },
      ),
    );
  }
}
