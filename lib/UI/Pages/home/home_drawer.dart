
import 'package:flutterfavorapp/Extension/int_extension.dart';
import 'package:flutter/material.dart';

class home_drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 245.Pt,
      child: Drawer(
        child: Column(
          children: <Widget>[
            topContainer(context),
            icon_button(Icon(Icons.restaurant), '进餐', context, (){
              Navigator.of(context).pop();
            }),

            icon_button(Icon(Icons.settings), '过滤', context, (){

            })


          ],
        ),
      ),
    );
  }
}

Widget topContainer(BuildContext context) {
  return Container(
    height: 145.Pt,
    width: double.infinity,
    color: Colors.amber,
    child: Text(
      '我是头部',
      style: Theme.of(context).textTheme.display4.copyWith(
        fontWeight: FontWeight.bold
      ),
    ),
    alignment: Alignment(0, 0.7),
    margin: EdgeInsets.only(bottom: 20.Pt),
  );
}

Widget icon_button (Widget icon,String title,BuildContext context,Function handle){

  return ListTile(
    leading:icon,
    title: Text(title,style: Theme.of(context).textTheme.display2,),
    onTap: handle,
  );

}