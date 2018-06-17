package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.internal.ei;

public final class d
  extends a<Integer>
{
  public static Integer a(SharedPreferences paramSharedPreferences, String paramString, Integer paramInteger)
  {
    try
    {
      paramSharedPreferences = (Integer)ei.b(new e(paramSharedPreferences, paramString, paramInteger));
      return paramSharedPreferences;
    }
    catch (Exception paramSharedPreferences)
    {
      paramSharedPreferences = String.valueOf(paramSharedPreferences.getMessage());
      if (paramSharedPreferences.length() == 0) {}
    }
    for (paramSharedPreferences = "Flag value not available, returning default: ".concat(paramSharedPreferences);; paramSharedPreferences = new String("Flag value not available, returning default: "))
    {
      Log.w("FlagDataUtils", paramSharedPreferences);
      return paramInteger;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/flags/impl/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */