import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import 'api.dart';
import 'users_model.dart';

// appel api, gére et analyse les données json
class ApiServices{
  Future<List<UserModel>?> getUsers() async {

    try{
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if(response.statusCode  == 200){
        List<dynamic> JsonResponse = json.decode(response.body);
        List<UserModel> userlist = JsonResponse
        .map((userJson) => UserModel.fromJson(userJson))
        .toList();
      return userlist;
      }
    } catch(e){
      log(e.toString());
    }
  }
}