
import 'package:everything/Providers/CategoriesProvider.dart';
import 'package:everything/models/CategoryModel/category.dart';
import 'package:everything/models/CategoryModel/pagination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Widget_home_Categories extends ConsumerWidget {
  const Widget_home_Categories({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
       padding: const EdgeInsets.all(8.0),
       child: SingleChildScrollView(
         child: Column(
           children: [
             Center(child:
             Text('All Categories', style:
             TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
             Container(
               child: _CategoriesList(ref),
             ),
           ],
         ),
       ),
     );

  }


  }

  // This Widget Creating For Errors handel in api aur building
  Widget  _CategoriesList (WidgetRef ref){
    final categories  = ref.watch(categoriesProvider(pagination(page: 1, pagesize: 10)));

    return categories.when(
        data:(list){
          print(List);
      return _buildCategoriesList(list!);

    },
        error: (error , stackTracs ) {
          print(error);
          return  Center(
            child: Text(error.toString()),);},
        loading: () =>const Center(child: CircularProgressIndicator(),));
  }

  // This Widget is Create For  How The ui see in app
  Widget _buildCategoriesList (List<CategoryModel> categories){

    return Container(
     height:100 ,
     alignment: Alignment.centerLeft, 
      child: ListView.builder(
      physics:const ClampingScrollPhysics() ,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context , index){
          var data = categories[index];
          return GestureDetector(
            onTap: (){

          Navigator.of(context).pushNamed('/products',arguments: {

           'id' : data.id.toString(),
            'name' : data.first_name
          });
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  width: 50,
                  height: 50,
                  color: Colors.grey,
                  alignment: Alignment.center,
                  child: Image.network(data.avatar,height: 50,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  InkWell(
                    onTap: (){
                      print(data.first_name);
                    },
                      child: Text(data.first_name, style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold ),)),
                    const Icon(Icons.keyboard_arrow_right,size: 13,)
                ],)
              ],
            ),
          );
          
      }),
    );
    
  }

