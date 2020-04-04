
import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Model/home_category_model.dart';
import 'package:flutterfavorapp/Core/Services/get_data.dart';
import 'package:flutterfavorapp/UI/Pages/home/home_category_item.dart';
import 'package:flutterfavorapp/UI/Shared/size_fit.dart';
import 'package:flutterfavorapp/Extension/double_extension.dart';
import 'package:flutterfavorapp/Extension/int_extension.dart';

class NWHome_content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    size_fit.initialize();
    
    return FutureBuilder<List<home_category_model>>(

      future: jsonParse.get_category_data(),
      builder: (context,snapShot){
        if(!snapShot.hasData) return Center(child: CircularProgressIndicator(),);
        return  GridView.builder(
            padding: EdgeInsets.all(20.Pt),
            itemCount: snapShot.data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.Pt,
                mainAxisSpacing: 20.Pt,
                childAspectRatio: 1.5
            ),
            itemBuilder: (context ,index){
              final model = snapShot.data[index];
              return home_category_item(model);

            });
      },
    );
  }
}

