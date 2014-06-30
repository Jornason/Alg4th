
int N = 100;
String[] a = new String[N];
Table table;
int counter = 0;

void setup(){
  size(640,360);
  clear();
  background(255, 255, 255);
  table = new Table();

  
  for(int i = 0 ; i < N ; i++)  
  {
   a[i] = str(int((random(N+1000,N+2000))));
   table.addColumn(""+i);
  }
  

  Selection.setApp(this);
  Selection.sort(a);
  println("table.getRowCount() "+table.getRowCount());
  println("table.getColumnCount() "+table.getColumnCount());
  saveTable(table, "data/new.csv");
  
  
}

void addRow(Object[] b)
{
  TableRow newRow = table.addRow();
  for(int i = 0 ; i < N ; i++)
  {
    newRow.setString(""+i, (String)b[i]);
  }
}

void draw()
{
  ///*
  clear();
  background(255, 255, 255);
  counter = constrain(counter,0,table.getRowCount()-1);
  TableRow row = table.getRow(counter);
  for(int i = 0 ; i < table.getColumnCount(); i++)
  {
    drawLine(float(row.getString(""+i)),i);
  }
  
  counter++;
}



void drawLine(float lh, int i)
{
  float pos = 1.0*i / N * width;
  line(pos,height,pos,height - map(lh, N+1000,N+2000,0,height));

}
