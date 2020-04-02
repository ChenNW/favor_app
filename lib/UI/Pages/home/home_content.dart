
import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Model/home_category_model.dart';
import 'package:flutterfavorapp/Core/Services/get_data.dart';
import 'package:flutterfavorapp/UI/Shared/size_fit.dart';
import 'package:flutterfavorapp/Extension/double_extension.dart';
import 'package:flutterfavorapp/Extension/int_extension.dart';
import 'dart:ui';
class NWHome_content extends StatefulWidget {
  @override
  _NWHome_contentState createState() => _NWHome_contentState();
}

class _NWHome_contentState extends State<NWHome_content> {
  List<home_category_model> _models = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    jsonParse.get_category_data().then((res) {
      setState(() {
        _models = res;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    size_fit.initialize();

    return GridView.builder(
      padding: EdgeInsets.all(20.Pt),
      itemCount: _models.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.Pt,
            mainAxisSpacing: 20.Pt,
          childAspectRatio: 1.5
        ),
        itemBuilder: (context ,index){
          final model = _models[index];
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
              borderRadius: BorderRadius.circular(12),

            ),
          );

        });
  }
}
