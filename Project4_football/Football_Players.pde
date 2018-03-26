class Footballers
{
 float X;
 float Y;
 color eyeCol;
 color hairCol;
 int JerseyNo;
 String Pos;
 float ht;
 float wt;
 int Pace;
 int Tac;
 int Agg;
 int Skill;
 int Ref;
 int one;
 int dive;
 int Drbl;
 int Phy;
 int Shot;
 int Pass;
 int Def;
 String club;
 color SkinCol;
 int Salary;
 int Age;
 boolean isRetired;
 String Nationality;
 String PlayingStyle;
 int OVR;
 String playername;
 String playername2;
 String team;
 
 Footballers()
 {
   hairCol= color(random(255),random(255),random(255));
   JerseyNo= (int)random(1,99);
   ht= random(150,215);
   wt= random(50,300);
   //String[] Pos= loadStrings("positions.txt");
   Pace= (int)random(100);
   Skill= (int)random(5);
   Agg= (int)random(100);
   Tac= (int)random(100);
   one= (int)random(100);
   Ref= (int)random(100);
   dive= (int)random(100);
   Drbl= (int)random(100);
   Phy= (int)random(100);
   Shot= (int)random(100);
   Pass= (int)random(100);
   Def= (int)random(100);
   SkinCol= color(random(255),random(255),random(255));
   eyeCol= color(random(255),random(255),random(255));
   Salary= (int)random(5,10000000);
   Age= (int)random(50);
   isRetired=  (random(1) > 0.5);
   Nationality= "Germany";
   Pos= "Striker";
   PlayingStyle= "Poacher";
   //String[] Nationality= loadStrings("countries.txt");
   //String[] PlayingStyle= loadStrings("playingstyles.txt");
   OVR= (int)(Pace+Drbl+Phy+Shot+Pass+Def)/6;
   playername= "Yash";
   
   //String[] team= loadStrings("clubs.txt");
}

Footballers(String _Name, String _Name2, String _nationality, String _clubs)
{
  
   hairCol= color(random(255),random(255),random(255));
   JerseyNo= (int)random(1,99);
   ht= random(150,215);
   wt= random(50,300);
   //String[] Pos= loadStrings("positions.txt");
   Pace= (int)random(100);
   Drbl= (int)random(100);
   Phy= (int)random(100);
   Shot= (int)random(100);
   Pass= (int)random(100);
   Def= (int)random(100);
   SkinCol= color(random(255),random(255),random(255));
   eyeCol= color(random(255),random(255),random(255));
   Salary= (int)random(5,10000000);
   Age= (int)random(16,50);
   isRetired=  (random(1) > 0.5);
   Nationality= "Germany";
   Pos= "Striker";
   PlayingStyle= "Poacher";
   //String[] Nationality= loadStrings("countries.txt");
   //String[] PlayingStyle= loadStrings("playingstyles.txt");
   OVR= (int)(Pace+Drbl+Phy+Shot+Pass+Def+one+Tac+Agg+Ref+dive)/11;
   playername= _Name;
   playername2= _Name2;
   Nationality= _nationality;
   club= _clubs;
   
   
   //String[] playernames2= loadStrings("playernames_2.txt");
   //String[] team= loadStrings("clubs.txt");
}

void render()
{
  X= width/2;
  Y= height/2;
  
  fill(SkinCol);
  rect(X,Y,50,150);
  
  fill(hairCol);
  rect(X,Y-10,50,30);
  
  fill(eyeCol);
  ellipse(X+10,Y+26,10,10);
  ellipse(X+40,Y+26,10,10);
  
  fill(255);
  textSize(30);
  text(playername+' '+playername2, X-100, Y-40);
  //text(playername2, X, Y-40);
  
  textSize(40);
  text(JerseyNo, X, Y+75);
  
  text("salary="+Salary+"/week", 100, 100);
  
  text("Pace="+Pace, width-500,140);
  text("Passing="+Pass, width-500,210);
  text("Shooting="+Shot,width-500,280);
  text("Dribbling="+Drbl, width-500, 350);
  text("Aggression="+Agg, width-500,420);
  text("Tackling="+Tac, width-500,490);
  text(Age+" years old", width/2-100, 70);
  text("Defense="+Def, width-500,560);
  text("One on One="+one, width-500,630);
  text("Reflexes="+Ref, width-500, 700);
  text("Diving="+dive, width-500,770);
  text("Skill Moves="+Skill, width-500,840);
  text("Overall="+OVR, width/2-100,400);
  text("From"+' '+Nationality,width/2,910);
  text("Club:"+' '+club, width/2, 980);
}

void namechange(String _Name, String _Name2)
{
  playername= _Name;
  playername2= _Name2;
}

void colchange()
{
  eyeCol= color(random(255),random(255),random(255));
  SkinCol= color(random(255),random(255),random(255));
  hairCol= color(random(255),random(255),random(255));
}

void numchange()
{
  JerseyNo=(int)random(1,99);
}

void paychange()
{
  Salary=(int)random(1,100000);
}

void statchange()
{
   Pace= (int)random(1,100);
   Skill= (int)random(1,5);
   Agg= (int)random(1,100);
   Tac= (int)random(1,100);
   one= (int)random(1,100);
   Ref= (int)random(1,100);
   dive= (int)random(1,100);
   Drbl= (int)random(1,100);
   Phy= (int)random(1,100);
   Shot= (int)random(1,100);
   Pass= (int)random(1,100);
   Def= (int)random(1,100);
   Age= (int)random(16,50);
   OVR= (int)(Pace+Drbl+Phy+Shot+Pass+Def+one+Tac+Agg+Ref+dive)/8;
}

void countrychange(String _nationality)
{
  Nationality= _nationality;
}

void clubchange(String _clubs)
{
  club=_clubs;
}

}