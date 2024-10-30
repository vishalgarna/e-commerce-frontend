

import 'dart:convert';
import 'package:everything/Config/config.dart';
import 'package:everything/Models/paginationmodel/pagination.dart';
import 'package:everything/Models/productModel/product.dart';
import 'package:riverpod/riverpod.dart';
import 'package:http/http.dart' as http;

import '../Models/category.model/category.dart';

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

  // this Function is get All Products frommnm,
  Future<List<ProductModel>?> GetProductsByCategory (PaginationModel pagination)async{

    Map<String ,String> requestheaders = {
      'content-type' :  'application/json'
    };

    // give queryString To Provide Page and Pagesize
    Map<String , String> queryString = {
      'page' : pagination.page.toString(),
      'pagesize' : pagination.pagesize.toString()
    };

    var response = await http.get(Uri.parse(Config.baseurl+Config.producturl),headers: requestheaders);
    if(response.statusCode == 200){

      var data = jsonDecode(response.body);
      // productfrojons this fun is take dynamic
      // data and convert json object into dart
      // objext  one by one

 return productfromjson(data['data']);
    }
    else{
      return null;
    }
  }
}
