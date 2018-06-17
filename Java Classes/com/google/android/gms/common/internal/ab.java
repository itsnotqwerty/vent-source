package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ee;

public final class ab
{
  private static Object AT = new Object();
  private static boolean aHJ;
  private static String aHK;
  private static int aHL;
  
  public static String B(Context paramContext)
  {
    D(paramContext);
    return aHK;
  }
  
  public static int C(Context paramContext)
  {
    D(paramContext);
    return aHL;
  }
  
  private static void D(Context paramContext)
  {
    String str;
    synchronized (AT)
    {
      if (aHJ) {
        return;
      }
      aHJ = true;
      str = paramContext.getPackageName();
      paramContext = ee.ag(paramContext);
    }
    try
    {
      paramContext = paramContext.getApplicationInfo(str, 128).metaData;
      if (paramContext == null)
      {
        return;
        paramContext = finally;
        throw paramContext;
      }
      aHK = paramContext.getString("com.google.app.id");
      aHL = paramContext.getInt("com.google.android.gms.version");
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        Log.wtf("MetadataValueReader", "This should never happen.", paramContext);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */