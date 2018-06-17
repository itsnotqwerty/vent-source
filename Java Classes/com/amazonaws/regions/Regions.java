package com.amazonaws.regions;

public enum Regions
{
  public static final Regions apn = apa;
  final String name;
  
  private Regions(String paramString)
  {
    this.name = paramString;
  }
  
  public static Regions U(String paramString)
  {
    Regions[] arrayOfRegions = values();
    int j = arrayOfRegions.length;
    int i = 0;
    while (i < j)
    {
      Regions localRegions = arrayOfRegions[i];
      if (paramString.equals(localRegions.name)) {
        return localRegions;
      }
      i += 1;
    }
    throw new IllegalArgumentException("Cannot create enum from " + paramString + " value!");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/regions/Regions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */