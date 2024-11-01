import 'package:everything/Widgets/Widget.productCart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'Screens/HomeScreen.dart';

void main (){
  runApp(ProviderScope(child: Myapp()));
}


class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: Colors.grey
      ),

   home: WidgetProductCart(),
    );
  }


}