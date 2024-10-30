import 'package:flutter/material.dart';

class  Productsscreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  Productsscreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
    appBar: AppBar(

    ),
  body: Container(
  child: Column(
  children: [


  ],
  ),
  ),
  ),
  );

  }

  Widget _SearchControllerAndFilter (){

    return Row(
       children: [
         TextField(
           controller: searchController,
           decoration: InputDecoration(
             label: Text('Search product '),
             prefixIcon: Icon(Icons.search),
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(20)
             )
           ),
         ),
         FilledButton(onPressed: (){

         }, child: Text('data'))
       ],
      );
  }
}
