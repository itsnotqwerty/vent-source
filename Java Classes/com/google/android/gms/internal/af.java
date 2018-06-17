package com.google.android.gms.internal;

import android.util.Log;

public final class af
{
  public static void b(String paramString, Throwable paramThrowable)
  {
    if (cQ(3)) {
      Log.d("Ads", paramString, paramThrowable);
    }
  }
  
  public static void br(String paramString)
  {
    if (cQ(3)) {
      Log.d("Ads", paramString);
    }
  }
  
  public static void bs(String paramString)
  {
    if (cQ(4)) {
      Log.i("Ads", paramString);
    }
  }
  
  public static void bt(String paramString)
  {
    if (cQ(5)) {
      Log.w("Ads", paramString);
    }
  }
  
  public static void c(String paramString, Throwable paramThrowable)
  {
    if (cQ(6)) {
      Log.e("Ads", paramString, paramThrowable);
    }
  }
  
  private static boolean cQ(int paramInt)
  {
    return (paramInt >= 5) || (Log.isLoggable("Ads", paramInt));
  }
  
  public static void d(String paramString, Throwable paramThrowable)
  {
    if (cQ(5)) {
      Log.w("Ads", paramString, paramThrowable);
    }
  }
  
  public static void e(String paramString)
  {
    if (cQ(6)) {
      Log.e("Ads", paramString);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */