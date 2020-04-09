
import 'package:flutter/cupertino.dart';
import 'package:flutterfavorapp/Core/Model/home_detail_model.dart';
import 'package:flutterfavorapp/Core/Services/home_get_meal.dart';
import 'package:flutterfavorapp/Core/ViewModel/filter_viewModel.dart';
class meal_viewModel extends ChangeNotifier{

  List<DetailModel> _meals = [];
  NWFilter_viewModel _filterVM;

  List<DetailModel> get meals {

    return _meals.where((meal){

      if(_filterVM.isVegetarian && !meal.isVegetarian) return false;
      if(_filterVM.isVegan && !meal.isVegan) return false;
      if(_filterVM.isGlutenFree && !meal.isGlutenFree) return false;
      if(_filterVM.isVegan && !meal.isVegan) return false;
      return true;
    }).toList();
  }

  void updateFilters (NWFilter_viewModel filterVM){

    _filterVM = filterVM;
  }

  meal_viewModel(){
    get_home_meal_data.get_meal().then((res){
      _meals = res;
      notifyListeners();
    });

  }



}