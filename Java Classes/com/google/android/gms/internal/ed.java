package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Process;
import com.google.android.gms.common.util.l;

public final class ed
{
  public Context mContext;
  
  public ed(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  @TargetApi(19)
  public final boolean b(int paramInt, String paramString)
  {
    boolean bool2 = false;
    int i;
    if (Build.VERSION.SDK_INT >= 19)
    {
      i = 1;
      if (i == 0) {
        break label45;
      }
    }
    for (;;)
    {
      label45:
      try
      {
        ((AppOpsManager)this.mContext.getSystemService("appops")).checkPackage(paramInt, paramString);
        bool1 = true;
        return bool1;
      }
      catch (SecurityException paramString) {}
      i = 0;
      break;
      String[] arrayOfString = this.mContext.getPackageManager().getPackagesForUid(paramInt);
      boolean bool1 = bool2;
      if (paramString != null)
      {
        bool1 = bool2;
        if (arrayOfString != null)
        {
          paramInt = 0;
          for (;;)
          {
            bool1 = bool2;
            if (paramInt >= arrayOfString.length) {
              break;
            }
            if (paramString.equals(arrayOfString[paramInt])) {
              return true;
            }
            paramInt += 1;
          }
        }
      }
    }
    return false;
  }
  
  public final CharSequence bN(String paramString)
    throws PackageManager.NameNotFoundException
  {
    return this.mContext.getPackageManager().getApplicationLabel(this.mContext.getPackageManager().getApplicationInfo(paramString, 0));
  }
  
  public final int checkCallingOrSelfPermission(String paramString)
  {
    return this.mContext.checkCallingOrSelfPermission(paramString);
  }
  
  public final ApplicationInfo getApplicationInfo(String paramString, int paramInt)
    throws PackageManager.NameNotFoundException
  {
    return this.mContext.getPackageManager().getApplicationInfo(paramString, paramInt);
  }
  
  public final PackageInfo getPackageInfo(String paramString, int paramInt)
    throws PackageManager.NameNotFoundException
  {
    return this.mContext.getPackageManager().getPackageInfo(paramString, paramInt);
  }
  
  public final boolean qw()
  {
    if (Binder.getCallingUid() == Process.myUid()) {
      return ec.ae(this.mContext);
    }
    if (l.oK())
    {
      String str = this.mContext.getPackageManager().getNameForUid(Binder.getCallingUid());
      if (str != null) {
        return this.mContext.getPackageManager().isInstantApp(str);
      }
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ed.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */