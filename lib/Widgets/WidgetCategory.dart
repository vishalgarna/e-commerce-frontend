
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:two_o/Models/category.model/category.dart';
import 'package:two_o/Providers/CategoryProvider.dart';
import 'package:two_o/Widgets/Text.Widget.dart';

class CategoryWidget extends  ConsumerWidget{
  const CategoryWidget({super.key} );

  @override
  Widget build(BuildContext context ,WidgetRef ref) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child:  listCatgeory(ref),
      ),
    );
  }
  // this list widget handle  data
  Widget listCatgeory (WidgetRef ref){
    final model = ref.watch(CategoryProvider);

    return model.when(data: (data) => _buildCategory(data!),
        error: (err, stacktrace)=> Center(child: Text(err.toString()),),
        loading: ()=>LinearProgressIndicator());
  }

  // this widget is build ui of category
  Widget _buildCategory ( List<CategoryModel> model){

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Container(
          height:100 ,
          color: Colors.grey,
          child: ListView.builder(

              itemCount: model.length,
              physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context , index){
                  var data = model[index];
                  return Column(

                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Expanded(
                        child: Image(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          fit: BoxFit.fill,
                          image: NetworkImage(data.fullImagePath!),
                        ),
                      ),

                  InkWell(
                  onTap: (){


                  },
                    child: Row(

                         children: [
                           // use custome text widget
                           TextWidget(title: data.categoryName!, fontsize: 10),
                           Icon(Icons.arrow_forward_ios)
                         ],
                                                   ),
                  ),
                    ],
                  );
                }),
        ),

      )

    );
  }

}
