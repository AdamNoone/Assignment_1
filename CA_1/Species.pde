//craete Species class
class Species
{
  String Name ;//name of the planet 
  String Discovered;//when was planet discovered
  String Population;//how many of a  (spicies) live there
  float screenPosX;// X postion on radar
  float screenPosY;// Y postion on radar
  
  
  
//Species constructor
Species(String Name ,String Discovered,String Population,float screenPosX,float screenPosY)
  {
    // this refers to the field
     //gets the values passed from draw () ,put them in each local vars
    this.Name = Name;
    this.Discovered = Discovered;
    this.Population = Population;
    this.screenPosX = screenPosX;
    this.screenPosY = screenPosY;
    
    
  }
  
  Species(TableRow row)//gets each row froom my CSV file 
  {
    Name = row.getString("Name");//gets name 
    Discovered = row.getString("Discovered");//gets discovered
    Population = row.getString("Population");//gets population
    screenPosX = row.getFloat("screenPosX");//gets Posx
    screenPosY = row.getFloat("screenPosY");//gets Posy
    
    
}

 
    
}