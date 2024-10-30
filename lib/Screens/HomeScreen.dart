import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Services/ApiServices.dart';
import '../Widgets/Text.Widget.dart';
import '../Widgets/WidgetCategory.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {
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
