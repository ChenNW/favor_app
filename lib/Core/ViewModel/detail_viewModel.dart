
import 'package:flutter/cupertino.dart';
import 'package:flutterfavorapp/Core/Model/home_detail_model.dart';
import 'package:flutterfavorapp/Core/Services/home_get_meal.dart';
class meal_viewModel extends ChangeNotifier{

  List<DetailModel> _meals = [];


  List<DetailModel> get meals => _meals;

  meal_viewModel(){
    get_home_meal_data.get_meal().then((res){
      _meals = res;

      notifyListeners();
    });

  }



}