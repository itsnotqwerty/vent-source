package com.google.android.gms.internal;

import java.io.IOException;

public abstract class nd
{
  protected volatile int aZY = -1;
  
  public static <T extends nd> T a(T paramT, byte[] paramArrayOfByte, int paramInt)
    throws nc
  {
    try
    {
      paramArrayOfByte = mu.a(paramArrayOfByte, paramInt);
      paramT.a(paramArrayOfByte);
      paramArrayOfByte.cT(0);
      return paramT;
    }
    catch (nc paramT)
    {
      throw paramT;
    }
    catch (IOException paramT)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", paramT);
    }
  }
  
  public abstract nd a(mu parammu)
    throws IOException;
  
  public void a(mv parammv)
    throws IOException
  {}
  
  public nd sS()
    throws CloneNotSupportedException
  {
    return (nd)super.clone();
  }
  
  public final int sY()
  {
    if (this.aZY < 0) {
      sZ();
    }
    return this.aZY;
  }
  
  public final int sZ()
  {
    int i = st();
    this.aZY = i;
    return i;
  }
  
  protected int st()
  {
    return 0;
  }
  
  public String toString()
  {
    return ne.c(this);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/nd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */