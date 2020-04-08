import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Extension/int_extension.dart';
class make_title extends StatelessWidget {
  final String title;

  make_title(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.Pt),
        child: Text(
      title,
      style: Theme.of(context)
          .textTheme
          .display3
          .copyWith(fontWeight: FontWeight.bold),
    ));
  }
}
