Footballers footballer1;
String[] playernames;
String[] playername2;
String[] Nationality;
String[] clubs;
void setup()
{
  fullScreen();
  background(0);
  playernames= loadStrings("playernames_1.txt");
  playername2= loadStrings("playernames_2.txt");
  Nationality= loadStrings("countries.txt");
  clubs= loadStrings("clubs.txt");
  footballer1=  new Footballers(playernames[(int)random(playernames.length)],
  (playername2[(int)random(playername2.length)]), (Nationality[(int)random(Nationality.length)]), (clubs[(int)random(clubs.length)]));
}

void draw()
{
  background(0);
  footballer1.render();
  input();
}

void input()
{
  if(keyPressed)
  {
    if(key == ' ')
  {
    footballer1.namechange(playernames[(int)random(playernames.length)],
  (playername2[(int)random(playername2.length)]));
    footballer1.colchange();
    footballer1.numchange();
    footballer1.paychange();
    footballer1.statchange();
    footballer1.countrychange(Nationality[(int)random(Nationality.length)]);
    footballer1.clubchange((clubs[(int)random(clubs.length)]));
  }
 }
 }