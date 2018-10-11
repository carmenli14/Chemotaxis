 Bacteria[] bob;//declare bacteria variables here   
 void setup()   
 {  
 	size(500,500);
 	background(0);
  	bob = new Bacteria[100]; //length of array in brackets
  	for(int i = 0; i < bob.length; i++)
    	bob[i] = new Bacteria();  
 }   
 void draw()   
 {    
 	int bgColor = color ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),1);
   	fill(bgColor);
   	stroke(bgColor);
  	for(int i = 0; i < bob.length; i++){
    	bob[i].show();
    	bob[i].walk();
  	} 
 }  


 class Bacteria    
 {     
 	int myX, myY;
 	int myColor, myColor2, myColor3;
  	Bacteria(){
    	myX = myY = 250;
    	myColor = (int)(Math.random()*150);
    	myColor2 = (int)(Math.random()*20);
    	myColor3 = (int)(Math.random()*200); 
  	}
  	void walk(){
    	myX = myX + (int)(Math.random()*7)-3; //7 possible values from -3 to 3
    	myY = myY + (int)(Math.random()*7)-3;
  	}
  	void show(){
  		fill(myColor,myColor2,myColor3);
    	ellipse(myX,myY,5,5);
  	}   
 }

