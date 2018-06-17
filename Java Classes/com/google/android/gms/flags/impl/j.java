package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.ei;

public final class j
{
  private static SharedPreferences aKM = null;
  
  public static SharedPreferences T(Context paramContext)
    throws Exception
  {
    try
    {
      if (aKM == null) {
        aKM = (SharedPreferences)ei.b(new k(paramContext));
      }
      paramContext = aKM;
      return paramContext;
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/flags/impl/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */