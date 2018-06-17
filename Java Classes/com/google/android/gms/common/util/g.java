package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;

public final class g
{
  private static Boolean aJv;
  private static Boolean aJw;
  public static Boolean aJx;
  
  @TargetApi(24)
  public static boolean H(Context paramContext)
  {
    int i;
    if (Build.VERSION.SDK_INT >= 24)
    {
      i = 1;
      if (i != 0)
      {
        if (aJw == null)
        {
          if ((!l.oJ()) || (!paramContext.getPackageManager().hasSystemFeature("cn.google"))) {
            break label105;
          }
          bool = true;
          label40:
          aJw = Boolean.valueOf(bool);
        }
        if (!aJw.booleanValue()) {
          break label115;
        }
      }
      if (aJv == null) {
        if ((!l.oI()) || (!paramContext.getPackageManager().hasSystemFeature("android.hardware.type.watch"))) {
          break label110;
        }
      }
    }
    label105:
    label110:
    for (boolean bool = true;; bool = false)
    {
      aJv = Boolean.valueOf(bool);
      if (!aJv.booleanValue()) {
        break label115;
      }
      return true;
      i = 0;
      break;
      bool = false;
      break label40;
    }
    label115:
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/util/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */