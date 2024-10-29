

import 'dart:convert';
import 'package:riverpod/riverpod.dart';
import 'package:two_o/Config/config.dart';
import 'package:two_o/Models/category.model/category.dart';
import 'package:http/http.dart' as http;

// ye class hum providder me pass kar
// rhae taaki dure provider iss listen aur acess kar sake

final apiservice = Provider((ref) => Apiservices());

class Apiservices {


  // create globsal client object ;
  var client = http.Client();
  // this fun is fetchAllCategories
  Future<List<CategoryModel>?> GetCategories ()async{


    Map<String , String> requestHeaders  = {
      'content-type' : 'application/json'
    };

   //var url = Uri.http(Config.baseurl+Config.categoryurl);

   var response = await http.get(Uri.parse('http://192.168.227.166:3000/categories') ,headers: requestHeaders);

   if(response.statusCode ==  200){
     print(response.body);
     var data = jsonDecode(response.body);
     return Categoryfromjson(data['data']);
   }
   else{
     print('error');
     return null;
   }

  }

}
