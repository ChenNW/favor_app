import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Extension/int_extension.dart';

class detail_list_container extends StatelessWidget {

  final Widget child;
  detail_list_container(this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12.Pt,right: 12.Pt),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.Pt),
          border: Border.all(
              color: Colors.grey,
              width: 1.Pt
          )
      ),
      child: child
    );
  }
}
