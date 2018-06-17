package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.analytics.c;

@Deprecated
public final class cv
{
  private static volatile c aOV = new cf();
  
  public static void bt(String paramString)
  {
    cw localcw = cw.qc();
    if (localcw != null) {
      localcw.bz(paramString);
    }
    for (;;)
    {
      paramString = aOV;
      return;
      if (cQ(2)) {
        Log.w((String)cm.aNP.aOE, paramString);
      }
    }
  }
  
  private static boolean cQ(int paramInt)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (aOV != null)
    {
      bool1 = bool2;
      if (aOV.getLogLevel() <= paramInt) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static void i(String paramString, Object paramObject)
  {
    Object localObject = cw.qc();
    if (localObject != null) {
      ((ba)localObject).h(paramString, paramObject);
    }
    for (;;)
    {
      paramString = aOV;
      return;
      if (cQ(3))
      {
        localObject = paramString;
        if (paramObject != null)
        {
          paramObject = String.valueOf(paramObject);
          localObject = String.valueOf(paramString).length() + 1 + String.valueOf(paramObject).length() + paramString + ":" + (String)paramObject;
        }
        Log.e((String)cm.aNP.aOE, (String)localObject);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */