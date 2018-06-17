package com.b.a.a.a;

import java.io.IOException;
import java.lang.reflect.Method;

public final class o
  extends Exception
{
  static final Method bID;
  public IOException bJA;
  
  static
  {
    try
    {
      Method localMethod = Throwable.class.getDeclaredMethod("addSuppressed", new Class[] { Throwable.class });
      bID = localMethod;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject = null;
      }
    }
  }
  
  public o(IOException paramIOException)
  {
    super(paramIOException);
    this.bJA = paramIOException;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */