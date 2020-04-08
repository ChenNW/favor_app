import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Model/home_detail_model.dart';
import 'package:flutterfavorapp/Extension/int_extension.dart';
class operation_samll extends StatelessWidget {

 final Widget _icon;
 final Text _title;
 final DetailModel model;
 operation_samll(this._icon,this._title,{this.model});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        _icon,
        SizedBox(width: 3.Pt,),
        _title
      ],

    );
  }
}
