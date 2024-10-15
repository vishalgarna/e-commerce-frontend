import 'package:everything/screens/Home_Screen.dart';
import 'package:everything/screens/Product_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {

runApp (
  ProviderScope(child: MyApp())
);

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner : false,
      title: 'Flutter Demo',

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),


      home:HomeScreen(),
    routes: <String , WidgetBuilder>{
        '/products' : (BuildContext  context) => const  ProductScreen(),
    },
    );
  }
}


