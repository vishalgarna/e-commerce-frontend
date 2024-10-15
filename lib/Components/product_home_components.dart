import 'package:everything/Providers/CategoriesProvider.dart';
import 'package:everything/models/CategoryModel/pagination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class Products_Components extends ConsumerWidget {
// final CategoryModel model;
  Products_Components( {super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {

    final model = ref.watch(categoriesProvider(pagination(page: 1, pagesize: 10)));
    var percent = 13;
    return Container(
      width: 150,
      child: Stack(
        children: [
          Visibility(
              visible:  percent > 0,

              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding:  EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Colors.green
                  ),
                  child: Text('13% off'
                    , style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold ),),
                ),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset('images/1.jpg'),
                height: 100,
                width:  MediaQuery.of(context).size.width,
              ),

              Text('Colgate' , overflow: TextOverflow.ellipsis,style:
              TextStyle(fontWeight: FontWeight.w700,fontSize: 13),),

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Text('#58',style: TextStyle(
                      color: percent > 0 ? Colors.red: Colors.black,
                      decoration: percent > 0 ? TextDecoration.lineThrough : null
                  ),),
                  Text('#18',style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 12,
                    color: Colors.black,

                  ),),

                  GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.favorite_outline),
                  )
                ],)

            ],
          ),
        ],
      ),
    );
  }
}
