package com.google.android.gms.ads.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.common.y;

public final class c
{
  private SharedPreferences azW;
  
  public c(Context paramContext)
  {
    try
    {
      paramContext = y.P(paramContext);
      if (paramContext == null) {}
      for (paramContext = null;; paramContext = paramContext.getSharedPreferences("google_ads_flags", 0))
      {
        this.azW = paramContext;
        return;
      }
      return;
    }
    catch (Throwable paramContext)
    {
      Log.w("GmscoreFlag", "Error while getting SharedPreferences ", paramContext);
      this.azW = null;
    }
  }
  
  public final boolean aT(String paramString)
  {
    try
    {
      if (this.azW == null) {
        return false;
      }
      boolean bool = this.azW.getBoolean(paramString, false);
      return bool;
    }
    catch (Throwable paramString)
    {
      Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", paramString);
    }
    return false;
  }
  
  final float aU(String paramString)
  {
    try
    {
      if (this.azW == null) {
        return 0.0F;
      }
      float f = this.azW.getFloat(paramString, 0.0F);
      return f;
    }
    catch (Throwable paramString)
    {
      Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", paramString);
    }
    return 0.0F;
  }
  
  final String getString(String paramString1, String paramString2)
  {
    try
    {
      if (this.azW == null) {
        return paramString2;
      }
      paramString1 = this.azW.getString(paramString1, paramString2);
      return paramString1;
    }
    catch (Throwable paramString1)
    {
      Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", paramString1);
    }
    return paramString2;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/c/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */