import 'package:everything/Widgets/Text.Widget.dart';
import 'package:flutter/material.dart';

class Widgetcustombutton extends StatelessWidget {
 String title ;
VoidCallback ontap ;
 Widgetcustombutton({super.key , required this.ontap , required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        child: Center(child: TextWidget(title: title, fontsize: 15)),
        height: 50,
        width: 150,
        decoration:BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(24)
        ),
      ),
    );
  }
}
