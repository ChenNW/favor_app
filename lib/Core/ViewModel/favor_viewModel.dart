
import 'package:flutter/material.dart';
import 'package:flutterfavorapp/Core/Model/home_detail_model.dart';

class favorMealsViewModel extends ChangeNotifier{

  List<DetailModel> _favorMeals = [];

  //get方法
  List<DetailModel> get favorMeals{
    return _favorMeals;
  }

  //添加
  void addMeal (DetailModel model){
    _favorMeals.add(model);
    notifyListeners();
  }

  //删除
  void removeMeal (DetailModel model){
    _favorMeals.remove(model);
    notifyListeners();
  }

  //操作(没有则添加,有则删除)
  void handleMeal (DetailModel model){

    if(_favorMeals.contains(model)){
      removeMeal(model);
    }else{
      addMeal(model);
    }

  }

  //是否收藏
  bool isFavor (DetailModel model){

    return _favorMeals.contains(model);
  }




}