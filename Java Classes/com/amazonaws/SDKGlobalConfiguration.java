package com.amazonaws;

import java.util.concurrent.atomic.AtomicInteger;

public class SDKGlobalConfiguration
{
  private static final AtomicInteger amO = new AtomicInteger(0);
  
  public static void cm(int paramInt)
  {
    amO.set(paramInt);
  }
  
  public static int jv()
  {
    return amO.get();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/SDKGlobalConfiguration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */