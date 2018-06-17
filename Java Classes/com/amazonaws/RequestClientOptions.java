package com.amazonaws;

import java.util.EnumMap;
import java.util.Map;

public final class RequestClientOptions
{
  public final Map<Marker, String> amJ = new EnumMap(Marker.class);
  
  public static enum Marker
  {
    private Marker() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/RequestClientOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */