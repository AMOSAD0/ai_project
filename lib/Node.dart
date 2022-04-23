import 'dart:collection';

import 'package:ai_project/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';

class Node{

  Map ?state;
 int depth=0;
 int pathcost=0;
 Node ?parent;
//root
 Node(){
   state={
     'stcR':'A',
     'stcB':'A',
     'stcY':'A',
   };
   depth=0;
   pathcost=0;
   parent=null;
 }
 //children
 Node.C(Node parent,){
    this.state=st(parent.state);
    this.parent=parent;
    this.depth=parent.depth+1;
    this.pathcost=parent.pathcost+1;

 }
 addChildren(Node ?Parent){
  return Node.C(Parent!);
 }
}




   bfs(Map GoalState){

    Queue<Node>?bfs_Queue=new Queue();
    Node initailState=Node();
    bfs_Queue.addFirst(initailState);
    
     while(bfs_Queue.isNotEmpty){   
       Node currentNode=bfs_Queue.first;
       print(bfs_Queue);
       bfs_Queue.removeFirst();
        print('object');
       
       if(mapEquals(currentNode.state, GoalState)){
         print('done');
          break;
          
       }
       else{
         
         bfs_Queue.addFirst(Node.C(currentNode));
         //add children
       }
     }
     
  }



st(map){
if(map['stcY']=='A'&&fBy==true){
  selectY=true;
  moveB();
  fAy=false;
  fBy=false;
  fCy=true;
  return map=stat;
  
}
else if(stat['stcY']=='B'&&fAy==true){
  selectY=true;
  moveA();
  fAy=false;
  fBy=false;
  fCy=true;
  return map=stat;
  }
else if(stat['stcY']=='B'&&fCy==true){
  selectY=true;
  moveC();
  
  fAy=true;
  fBy=false;
  fCy=false;
  return map=stat;
}


}