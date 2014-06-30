import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class SelectionPr extends PApplet {


int N = 100;
String[] a = new String[N];

public void setup(){
  size(640,360);
  clear();
  background(255, 255, 255);

  for(int i = 0 ; i < N ; i++)  
  {
     a[i] = ("0"+PApplet.parseInt((random(N))));
  }
  
  noLoop();
}

public void draw()
{
  //drawAll();
  Selection.sort(a);
  drawAll();

}

public void drawAll()
{
  clear();
  background(255, 255, 255);
  for(int i = 0 ; i < a.length; i++)
  {
    drawLine(PApplet.parseFloat(a[i]),i);
    println(PApplet.parseFloat(a[i]),i);
  }
  

}

public void drawLine(float lh, int i)
{
  float pos = 1.0f*i / N * width;
  //println(""+pos+","+0+","+pos+","+map(lh, 0,N,0,height));
  line(pos,height,pos,height - map(lh, 0,N,0,height));

}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "SelectionPr" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
