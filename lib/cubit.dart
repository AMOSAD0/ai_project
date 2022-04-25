import 'dart:async';

import 'package:ai_project/const.dart';
import 'package:ai_project/state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoveCubit extends Cubit<productStats>{
  MoveCubit() : super(loading());

      moveB(){
emit(loading());
    if(selectY==true){
      if( stat['stcB']=='B'&& stat['stcR']=='B'){
      dircYy=0.16;
      dircYx=0;
       stat['stcY']='B';
      selectY=false;
      Y=Colors.yellow;
      emit(loading());
      
      }
      else if( stat['stcB']=='B'||  stat['stcR']=='B'){
        dircYy=0.22;
        dircYx=0;
        stat['stcY']='B';
      selectY=false;
      Y=Colors.yellow;
      emit(loading());
      }
      else{
      dircYy=0.28;
      dircYx=0;
      stat['stcY']='B';
      selectY=false;
      Y=Colors.yellow;
      emit(loading());
      }
     // dircYx=0;
      //selectY=false;
    }
    else if(selectB==true){
      if(stat['stcY']!='B'&& stat['stcR']=='B'&&stat['stcY']!= stat['stcB']){
        dircBx=0;
        dircBy=0.22;
         stat['stcB']='B';
      selectB=false;
      B=Colors.blue;
      }
      else if(stat['stcY']!='B'&&stat['stcY']!= stat['stcB']){
         dircBx=0;
        dircBy=0.28;
         stat['stcB']='B';
      selectB=false;
       B=Colors.blue;
      }
      
    }
    else if(selectR==true){
      if((stat['stcY']!= stat['stcR']&& stat['stcB']!= stat['stcR'])&&stat['stcY']!='B'&& stat['stcB']!='B'){
        dircRx=0;
         stat['stcR']='B';
      selectR=false;
      R=Colors.red;
      }
      
    }
    
  }



}