package com.amazonaws.regions;

import java.util.HashMap;
import java.util.Map;

public final class Region
{
  public final Map<String, String> aoS = new HashMap();
  final Map<String, Boolean> aoT = new HashMap();
  final Map<String, Boolean> aoU = new HashMap();
  public final String domain;
  public final String name;
  
  Region(String paramString1, String paramString2)
  {
    this.name = paramString1;
    if ((paramString2 == null) || (paramString2.isEmpty()))
    {
      this.domain = "amazonaws.com";
      return;
    }
    this.domain = paramString2;
  }
  
  public static Region a(Regions paramRegions)
  {
    return RegionUtils.T(paramRegions.name);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Region)) {
      return false;
    }
    paramObject = (Region)paramObject;
    return this.name.equals(((Region)paramObject).name);
  }
  
  public final int hashCode()
  {
    return this.name.hashCode();
  }
  
  public final String toString()
  {
    return this.name;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/regions/Region.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */