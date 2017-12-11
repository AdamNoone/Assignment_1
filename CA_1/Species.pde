class Species
{
  String Name ;
  String Discovered;
  String Population;
  float screenPosX;
  float screenPosY;
  
  
  

Species(String Name ,String Discovered,String Population,float screenPosX,float screenPosY)
  {
    // this refers to the field
    this.Name = Name;
    this.Discovered = Discovered;
    this.Population = Population;
    this.screenPosX = screenPosX;
    this.screenPosY = screenPosY;
    
    
  }
  
  Species(TableRow row)
  {
    Name = row.getString("Name");
    Discovered = row.getString("Discovered");
    Population = row.getString("Population");
    screenPosX = row.getFloat("screenPosX");
    screenPosY = row.getFloat("screenPosY");
    
    
}

 
    
}