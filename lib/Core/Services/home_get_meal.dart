
import 'package:flutterfavorapp/Core/Model/home_detail_model.dart';
import 'package:flutterfavorapp/Core/Services/Http_request.dart';

class get_home_meal_data{

  static Future<List<DetailModel>> get_meal () async{

   final reslt = await HttpRequest.request('meal');

//   print(reslt['meal']);
   List<DetailModel> models = [];

   final mealArray = reslt["meal"];

   for(var json in mealArray){

     models.add(DetailModel.fromJson(json));

   }

   return models;

  }

}