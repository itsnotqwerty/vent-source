package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import java.io.InputStream;

public abstract class SdkInputStream
  extends InputStream
{
  protected static void jH()
  {
    if (Thread.interrupted()) {
      throw new AbortedException();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/internal/SdkInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */