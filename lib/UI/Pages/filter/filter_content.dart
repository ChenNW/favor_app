import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/ViewModel/filter_viewModel.dart';

import 'package:flutterfavorapp/Extension/int_extension.dart';
import 'package:provider/provider.dart';

class filter_content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[topTitle(context), list_view()],
    );
  }
}

//头部
Widget topTitle(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(12.Pt),
    child: Text(
      '展示你的选择',
      style: Theme.of(context).textTheme.display3,
    ),
  );
}

//列表
Widget list_view() {
  return Expanded(
    child: Consumer<NWFilter_viewModel>(
      builder: (context, filterVM, child) {
        return ListView(
          children: <Widget>[
            list_tile('五谷蛋白', '展示五谷蛋白食物',filterVM.isGlutenFree ,(value) {
              filterVM.isGlutenFree = value;
            }),
            list_tile('不含乳糖', '展示不含乳糖食物',filterVM.isLactoseFree , (value) {
              filterVM.isLactoseFree = value;
            }),
            list_tile('普通素食者', '展示普通素食相关食物', filterVM.isVegetarian ,(value) {
              filterVM.isVegetarian = value;
            }),
            list_tile('严格素食者', '展示严格素食相关食物',filterVM.isVegan , (value) {
              filterVM.isVegan = value;
            }),
          ],
        );
      },
    ),
  );
}

Widget list_tile(String title, String subTitle,bool value ,Function switchFunc) {
  return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Switch(value: value, onChanged: switchFunc));
}
