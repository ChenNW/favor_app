
import 'package:flutter/foundation.dart';

class NWFilter_viewModel extends ChangeNotifier{

   bool _isGlutenFree = false;//五谷蛋白
   bool _isVegan = false;//严格素食主义
   bool _isVegetarian = false;//素食主义
   bool _isLactoseFree = false;//不含乳糖

  bool get isGlutenFree => _isGlutenFree;

  set isGlutenFree(bool value) {
    _isGlutenFree = value;
    notifyListeners();
  }

  bool get isLactoseFree => _isLactoseFree;

  set isLactoseFree(bool value) {
    _isLactoseFree = value;
    notifyListeners();
  }

  bool get isVegetarian => _isVegetarian;

  set isVegetarian(bool value) {
    _isVegetarian = value;
    notifyListeners();
  }

  bool get isVegan => _isVegan;

  set isVegan(bool value) {
    _isVegan = value;
    notifyListeners();
  }





}