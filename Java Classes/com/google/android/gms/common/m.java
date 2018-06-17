package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.util.g;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ee;

public class m
{
  public static final int aCp = y.aCp;
  private static final m aJL = new m();
  
  public static int K(Context paramContext)
  {
    int j = y.K(paramContext);
    int i = j;
    if (y.t(paramContext, j)) {
      i = 18;
    }
    return i;
  }
  
  public static void L(Context paramContext)
  {
    y.L(paramContext);
  }
  
  public static int M(Context paramContext)
  {
    return y.M(paramContext);
  }
  
  public static PendingIntent a(Context paramContext, int paramInt1, int paramInt2, String paramString)
  {
    paramString = b(paramContext, paramInt1, paramString);
    if (paramString == null) {
      return null;
    }
    return PendingIntent.getActivity(paramContext, paramInt2, paramString, 268435456);
  }
  
  public static Intent b(Context paramContext, int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
    case 2: 
      if ((paramContext != null) && (g.H(paramContext))) {
        return l.od();
      }
      return l.p("com.google.android.gms", h(paramContext, paramString));
    }
    return l.be("com.google.android.gms");
  }
  
  @Deprecated
  public static Intent cN(int paramInt)
  {
    return b(null, paramInt, null);
  }
  
  private static String h(Context paramContext, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("gcore_");
    localStringBuilder.append(aCp);
    localStringBuilder.append("-");
    if (!TextUtils.isEmpty(paramString)) {
      localStringBuilder.append(paramString);
    }
    localStringBuilder.append("-");
    if (paramContext != null) {
      localStringBuilder.append(paramContext.getPackageName());
    }
    localStringBuilder.append("-");
    if (paramContext != null) {}
    try
    {
      localStringBuilder.append(ee.ag(paramContext).getPackageInfo(paramContext.getPackageName(), 0).versionCode);
      return localStringBuilder.toString();
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;) {}
    }
  }
  
  public static m oN()
  {
    return aJL;
  }
  
  public static boolean t(Context paramContext, int paramInt)
  {
    return y.t(paramContext, paramInt);
  }
  
  public PendingIntent b(Context paramContext, int paramInt1, int paramInt2)
  {
    return a(paramContext, paramInt1, paramInt2, null);
  }
  
  public boolean cC(int paramInt)
  {
    return y.cO(paramInt);
  }
  
  public String cD(int paramInt)
  {
    return y.cD(paramInt);
  }
  
  public int w(Context paramContext)
  {
    return K(paramContext);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */