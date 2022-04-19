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
    //===========================================
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