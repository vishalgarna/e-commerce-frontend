import 'dart:convert';

import 'package:everything/Providers/CategoriesProvider.dart';
import 'package:everything/models/CategoryModel/category.dart';
import 'package:everything/Components/config.dart';
import 'package:everything/models/CategoryModel/pagination.dart';
import 'package:everything/models/Prodcut_Model/ProductFilter.dart';
import 'package:everything/models/Prodcut_Model/ProductModel.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

final apiservice = Provider((ref)=> CategoriesServices());

class CategoriesServices {

  var client = http.Client();


  Future<List<CategoryModel>?> GetAllCategories (page , pageszie) async {
    Map<String, String>request_headers = {
      'content-type': 'application/json'
    };
    Map<String, String> querystring = {
      'page': page.toString(),
      'pagesize': pageszie.toString()
    };

    // if(productfilterModel.sortby != null){
    //   querystring ['sort'] =  productfilterModel.sortby!;
    //
    // }

    var response =  await http.get(Uri.parse(config.api_url));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data['data']);
      return categoriesFromjson(data['data']);
    }
    else {
      return null;
    }
  }




/// product ko get karn  walefunction 
/// 
//Future<Product?> getProduct (ProductfilterModel productfiltermodel ) async{
  Future<Product?> getProduct () async{
  Map<String,String> requestHeaders = {'Content-Type': 'application/json'};
  
  // Map<String , String> query_String = {
  //   'page' : productfiltermodel.paginationmodel!.page.toString(),
  //   'pagesize': productfiltermodel.paginationmodel!.pagesize.toString()
  // };
  
  // if(productfiltermodel.categoryid !=null){
  //   query_String['Categoryid'] = productfiltermodel.categoryid!;
  // }
  
var response = await http.get(Uri.parse('https://192.168.142.166:3000'));
  
  if(response.statusCode == 200){
    var data = jsonDecode(response.body);
    print(data);
    return Product.fromJson(data);
  }
  else{
    return null;
  }
}

}