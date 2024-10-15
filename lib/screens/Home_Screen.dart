import 'package:everything/Services/Api_Services.dart';
import 'package:everything/Widgets/Widget_Home_Product.dart';
import 'package:everything/Widgets/widget_home_Categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var apiservice = new  CategoriesServices();

    return Scaffold(
        appBar: AppBar(
          title: Text('Categories'),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //
            const Widget_home_Categories()
            //
          ],
        ),
      )

      );

  }
}
