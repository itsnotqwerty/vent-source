package com.amazonaws.services.s3.model;

import java.util.List;

public class CORSRule
{
  public List<AllowedMethods> aqP;
  public List<String> aqQ;
  public List<String> aqR;
  public List<String> aqS;
  public String id;
  public int maxAgeSeconds;
  
  public static enum AllowedMethods
  {
    private final String aqY;
    
    private AllowedMethods(String paramString)
    {
      this.aqY = paramString;
    }
    
    public static AllowedMethods af(String paramString)
      throws IllegalArgumentException
    {
      AllowedMethods[] arrayOfAllowedMethods = values();
      int j = arrayOfAllowedMethods.length;
      int i = 0;
      while (i < j)
      {
        AllowedMethods localAllowedMethods = arrayOfAllowedMethods[i];
        String str = localAllowedMethods.toString();
        if ((str == null) && (paramString == null)) {}
        while ((str != null) && (str.equals(paramString))) {
          return localAllowedMethods;
        }
        i += 1;
      }
      throw new IllegalArgumentException("Cannot create enum from " + paramString + " value!");
    }
    
    public final String toString()
    {
      return this.aqY;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/CORSRule.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */