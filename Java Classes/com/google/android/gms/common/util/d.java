package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ee;

public final class d
{
  public static boolean g(Context paramContext, String paramString)
  {
    boolean bool = false;
    "com.google.android.gms".equals(paramString);
    try
    {
      int i = ee.ag(paramContext).getApplicationInfo(paramString, 0).flags;
      if ((i & 0x200000) != 0) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/util/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */