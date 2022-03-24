
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePag extends StatefulWidget {
  const HomePag({ Key? key }) : super(key: key);

  @override
  State<HomePag> createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  @override
  String stcR='A';
  String stcB='A';
  String stcY='A';
   bool selectR=false;
   bool selectB=false;
   bool selectY=false;
    double dircRx =-1;
    double dircRy=0.28;
    double dircBx =-0.95;
    double dircBy=0.22;
    double dircYx =-0.9;
    double dircYy=0.16;
   moveB(){
    if(selectY==true){
      if(stcB=='B'&& stcR=='B'){
      dircYy=0.16;
      dircYx=0;
      stcY='B';
      selectY=false;
      }
      else if(stcB=='B'|| stcR=='B'){
        dircYy=0.22;
        dircYx=0;
        stcY='B';
      selectY=false;
      }
      else{
      dircYy=0.28;
      dircYx=0;
      stcY='B';
      selectY=false;
      }
     // dircYx=0;
      //selectY=false;
    }
    else if(selectB==true){
      if(stcY!='B'&&stcR=='B'&&stcY!=stcB){
        dircBx=0;
        dircBy=0.22;
        stcB='B';
      selectB=false;
      }
      else if(stcY!='B'&&stcY!=stcB){
         dircBx=0;
        dircBy=0.28;
        stcB='B';
      selectB=false;
      }
      
    }
    else if(selectR==true){
      if((stcY!=stcR&&stcB!=stcR)&&stcY!='B'&&stcB!='B'){
        dircRx=0;
        stcR='B';
      selectR=false;
      }
      
    }
    
  }
  //------------CCCCC//
  moveC(){
    if(selectY==true){
      if(stcB=='C'&& stcR=='C' && stcY=='B'){
      dircYy=0.16;
      dircYx=0.9;
      stcY='C';
      selectY=false;
      }
      else if(stcB=='C'|| stcR=='C'&& stcY=='B'){
        dircYy=0.22;
        dircYx=0.9;
        stcY='C';
      selectY=false;
      }
      else if(stcY=='B'){
      dircYy=0.28;
      dircYx=0.9;
      stcY='C';
      selectY=false;
      }
    }
    else if(selectB==true){
      if(stcY!='C'&&stcR=='C'&&stcY!=stcB&& stcB=='B'){
        dircBx=0.95;
        dircBy=0.22;
        stcB='C';
      selectB=false;
      }
      else if(stcY!='C'&&stcY!=stcB&& stcB=='B'){
         dircBx=0.95;
        dircBy=0.28;
        stcB='C';
      selectB=false;
      }
      
    }
    else if(selectR==true){
      if(stcY!=stcR&&stcB!=stcR&&stcY!='C'&&stcB!='C'&& stcR=='B'){
        dircRx=1;
        stcR='C';
      selectR=false;
      }
      
    }
    
  }
  //=====================AAAAAA============//
   moveA(){
    if(selectY==true){
      if(stcB=='A'&& stcR=='A' && stcY=='B'){
      dircYy=0.16;
      dircYx=-0.9;
      stcY='A';
      selectY=false;
      }
      else if(stcB=='A'|| stcR=='A'&& stcY=='B'){
        dircYy=0.22;
        dircYx=-0.9;
        stcY='A';
      selectY=false;
      }
      else if(stcY=='B'){
      dircYy=0.28;
      dircYx=-0.9;
      stcY='A';
      selectY=false;
      }
    }
    else if(selectB==true){
      if(stcY!='A'&&stcR=='A'&&stcY!=stcB&& stcB=='B'){
        dircBx=-0.95;
        dircBy=0.22;
        stcB='A';
      selectB=false;
      }
      else if(stcY!='A'&&stcY!=stcB&& stcB=='B'){
         dircBx=-0.95;
        dircBy=0.28;
        stcB='A';
      selectB=false;
      }
      
    }
    else if(selectR==true){
      if(stcY!=stcR&&stcB!=stcR&&stcY!='A'&&stcB!='A'&& stcR=='B'){
        dircRx=-1;
        stcR='A';
      selectR=false;
      }
      
    }
    
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
         


          //-------------------
        Positioned(
          top: 35.h,
          left: 5.w,
          child: Column(
      children: [
        //---------------A--------------------//
        Container(
          height: 30.h,
          width: 80.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    moveA();
                  });
                },
                child: Container(
                  height: 30.h,
                  width: 4.w,
                  color: Colors.yellow[300],
                ),
              ),
              //-------------B----------------//
              InkWell(
                onTap: () {
                 setState((){
                   moveB();
                   
                   
                   });
                },
                child: Container(
                  height: 30.h,
                  width: 4.w,
                  color: Colors.yellow[300],
                ),
              ),
              //-------------------C--------------//
              InkWell(
                onTap: () {
                  setState(() {
                    moveC();
                  });
                },
                child: Container(
                  height: 30.h,
                  width: 4.w,
                  color: Colors.yellow[300],
                ),
              ),
            ],
          ),
        ),
        //-------------------------------------//
        Container(
          color: Colors.yellow[500],
          height: 3.h,
          width: 90.w,
        ),
        //-----------------------------------//
        Container(
          color: Colors.amber,
          height: 8.h,
          width: 90.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //------------------------//
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('A',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              //---------------------//
                 Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('B',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              //----------------------------//
                 Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('C',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              //--------------------------//\
              

            ],
          ),
        ),

      ],
    )),
//------------------------------------//
           AnimatedContainer(
            alignment: Alignment(dircRx,dircRy),
             duration: Duration(milliseconds: 300),
           //  color: Colors.red,
             child:InkWell(
               onTap: () {
                 selectR=true;
                 selectB=false;
                 selectY=false;
                 print(selectR);
               },
               child: Container(
                 height: 3.h,
                 width: 25.w,
                 color: Colors.red,
               ),
             ) ,
          ),
          //==========================//
            AnimatedContainer(
            alignment: Alignment(dircBx,dircBy),
             duration: Duration(milliseconds: 300),
           //  color: Colors.red,
             child:InkWell(
               onTap: () {
                 selectB=true;
                 selectR=false;
                 selectY=false;
                 print(selectB);
               },
               child: Container(
                 height: 3.h,
                 width: 20.w,
                 color: Colors.blue,
               ),
             ) ,
          ),
          //=============================//
          AnimatedContainer(
            alignment: Alignment(dircYx,dircYy),
             duration: Duration(milliseconds: 300),
           //  color: Colors.red,
             child:InkWell(
               onTap: () {
                 selectY=true;
                 selectB=false;
                 selectR=false;
                 print(selectY);
               },
               child: Container(
                 height: 3.h,
                 width: 15.w,
                 color: Colors.yellow,
               ),
             ) ,
          ),
        ],
      ),
    );
  }
}


