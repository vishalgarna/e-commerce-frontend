import 'package:everything/Config/config.dart';
import 'package:everything/Models/category.model/category.dart';
import 'package:everything/Models/productModel/product.dart';
import 'package:everything/Widgets/WidgetCustomButton.dart';
import 'package:flutter/material.dart';

class WidgetProductCart extends StatelessWidget {

  const WidgetProductCart({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryModel categoryModel = CategoryModel(id: 20.toString(), categoryName: 'Fruits', categoryImage: '');
    var model = ProductModel(
        ProductName: 'Apple',
        ProductCategory: categoryModel,
        ProductImage: '',
        ProductSku: 'APPLE1234',
        ProductStatus: 'In',
        ProductDescribtion: 'Greatest Product ',
        ProductPrice: 123);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              _buildProductCart(model)
            ],
          ),
        ),
      ),
    );

  }

  Widget _buildProductCart (ProductModel model){

    return Container(
      color: Colors.white,
        child:  Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Stack(
            alignment: AlignmentDirectional.topStart,
             children: [
               Text('15% off '+' ' , style: TextStyle(
                 backgroundColor: Colors.green,
                 color: Colors.white
               ),)
             ],
           ),
            Image(
              height: 150,
              width: 200,
              fit: BoxFit.cover,
              image: Image.asset('images/1.jpg').image,
            ) ,

          Column(
                  children: [ Text(model.ProductName!, style: TextStyle(
                      fontSize :15 ,fontWeight: FontWeight.bold  ),

                  ),
                    SizedBox(height: 10,),
                  Text('${Config.currencySign} ${model.ProductPrice}', style: TextStyle(

                      fontSize :15 ,fontWeight: FontWeight.bold  ),

                  )
                  ],
                ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Widgetcustombutton(ontap: (){
                  print('hello apple ');
                }, title: 'Add To Cart'),
              )




            ],
          ),
        ),
      );

  }
}
