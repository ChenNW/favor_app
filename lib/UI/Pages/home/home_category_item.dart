
import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Model/home_category_model.dart';
import 'package:flutterfavorapp/Extension/int_extension.dart';
class home_category_item extends StatelessWidget {

  final home_category_model model;
  home_category_item(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(model.title,style: Theme.of(context).textTheme.display2.copyWith(
          fontWeight: FontWeight.bold
      ),),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: model.CCorlor,
        gradient: LinearGradient(colors: [
          model.CCorlor.withOpacity(0.5),
          model.CCorlor
        ]),
        borderRadius: BorderRadius.circular(12.Pt),

      ),
    );;
  }
}
