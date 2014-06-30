
int N = 100;
String[] a = new String[N];

void setup(){
  size(640,360);
  clear();
  background(255, 255, 255);

  for(int i = 0 ; i < N ; i++)  
  {
     a[i] = ("0"+int((random(N))));
  }
  
  noLoop();
}

void draw()
{
  //drawAll();
  Selection.sort(a);
  drawAll();

}

void drawAll()
{
  clear();
  background(255, 255, 255);
  for(int i = 0 ; i < a.length; i++)
  {
    drawLine(float(a[i]),i);
    println(float(a[i]),i);
  }
  

}

void drawLine(float lh, int i)
{
  float pos = 1.0*i / N * width;
  //println(""+pos+","+0+","+pos+","+map(lh, 0,N,0,height));
  line(pos,height,pos,height - map(lh, 0,N,0,height));

}
