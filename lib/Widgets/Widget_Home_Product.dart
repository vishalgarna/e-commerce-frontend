import 'package:everything/Components/product_home_components.dart';
import 'package:everything/Providers/CategoriesProvider.dart';
import 'package:everything/models/CategoryModel/category.dart';
import 'package:everything/models/CategoryModel/pagination.dart';
import 'package:everything/models/Prodcut_Model/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Widget_home_Product extends ConsumerWidget {

  List<Product> product = List<Product>.empty(growable: true);
   Widget_home_Product({super.key});


  @override
  Widget build(BuildContext context , WidgetRef ref) {
    final model = ref.watch(categoriesProvider(pagination(page: 1, pagesize: 1)));
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Top 10 Products List',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22,
            )),
          ),
        model.when(data: (list){
          return build_product(list!);
        }, error: (err,stacktrace){
          return  Center(
    child: Text(err.toString()),);},
    loading: () =>const Center(child: CircularProgressIndicator(),))
        ],
      ),
    );
  }


  Widget build_product(List<CategoryModel> model){

    return Container(
      height: 200,
      child: ListView.builder(

        itemCount:model.length ,
scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){

          var data = model[index];

          return GestureDetector(
            onTap: (){},
            child: Products_Components(),
          );

      }),
    );


  }
}
