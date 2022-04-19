import 'dart:async';
import 'package:ai_project/const.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePag extends StatefulWidget {
  const HomePag({ Key? key }) : super(key: key);

  @override
  State<HomePag> createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
            children:const [
              //------------------------//
              // ignore: prefer_const_constructors
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
              //--------------------------//
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


