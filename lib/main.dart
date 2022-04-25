import 'package:ai_project/blocObserver.dart';
import 'package:ai_project/cubit.dart';
import 'package:ai_project/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:bloc/bloc.dart';

void main() {
  BlocOverrides.runZoned(
         (){
    runApp(Tower_of_Hanoi());
  },
 blocObserver: MyBlocObserver());
  //runApp(Tower_of_Hanoi());
}

class Tower_of_Hanoi extends StatelessWidget {
  const Tower_of_Hanoi({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context) => MoveCubit()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
           return MaterialApp(
          home: HomePag(),
        );
        },
       
      ),
    );
  }
}