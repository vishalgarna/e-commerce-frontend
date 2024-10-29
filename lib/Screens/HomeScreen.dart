import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:two_o/Services/ApiServices.dart';
import 'package:two_o/Widgets/Text.Widget.dart';
import 'package:two_o/Widgets/WidgetCategory.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {
     var data = Apiservices();
    bool visible = false;
    return SafeArea(child:
    Scaffold(
      appBar: AppBar(
          title: TextWidget(title: 'Grocery Items', fontsize: 20)
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CategoryWidget()
            ],
          ),
        ),
      ) ,
    ));
  }
}
