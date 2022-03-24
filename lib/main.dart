import 'package:ai_project/home.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(Tower_of_Hanoi());
}

class Tower_of_Hanoi extends StatelessWidget {
  const Tower_of_Hanoi({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Sizer(
      builder: (context, orientation, deviceType) {
         return MaterialApp(
        home: HomePag(),
      );
      },
     
    );
  }
}