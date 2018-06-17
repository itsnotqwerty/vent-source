package io.intercom.android.sdk.utilities;

import java.io.Closeable;
import java.io.File;

public class IoUtils
{
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Exception paramCloseable) {}
  }
  
  public static void safelyDelete(File paramFile)
  {
    try
    {
      if (!paramFile.delete()) {
        paramFile.deleteOnExit();
      }
      return;
    }
    catch (Exception paramFile) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/IoUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */