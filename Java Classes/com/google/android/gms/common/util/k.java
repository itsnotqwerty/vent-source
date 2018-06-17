package com.google.android.gms.common.util;

import java.io.Closeable;
import java.io.IOException;

public final class k
{
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/util/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */