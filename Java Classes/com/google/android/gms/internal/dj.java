package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;

public final class dj
  extends bb
{
  private boolean aAN;
  private String aLn;
  private String aLo;
  private int aNE;
  protected int aOI;
  protected boolean aPu;
  private boolean aPv;
  
  public dj(bd parambd)
  {
    super(parambd);
  }
  
  protected final void mG()
  {
    Object localObject1 = this.aMq.mContext;
    Object localObject2;
    int i;
    String str;
    label138:
    label171:
    label196:
    label224:
    do
    {
      try
      {
        localObject1 = ((Context)localObject1).getPackageManager().getApplicationInfo(((Context)localObject1).getPackageName(), 129);
        if (localObject1 == null)
        {
          bz("Couldn't get ApplicationInfo to load global config");
          return;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        do
        {
          do
          {
            do
            {
              for (;;)
              {
                g("PackageManager doesn't know about the app package", localNameNotFoundException);
                localObject2 = null;
              }
              localObject2 = ((ApplicationInfo)localObject2).metaData;
            } while (localObject2 == null);
            i = ((Bundle)localObject2).getInt("com.google.android.gms.analytics.globalConfigResource");
          } while (i <= 0);
          localObject2 = (cq)new co(this.aMq).cR(i);
        } while (localObject2 == null);
        bw("Loading global XML config values");
        if (((cq)localObject2).aLn == null) {
          break;
        }
      }
      i = 1;
      if (i != 0)
      {
        str = ((cq)localObject2).aLn;
        this.aLn = str;
        e("XML config - app name", str);
      }
      if (((cq)localObject2).aLo == null) {
        break label297;
      }
      i = 1;
      if (i != 0)
      {
        str = ((cq)localObject2).aLo;
        this.aLo = str;
        e("XML config - app version", str);
      }
      if (((cq)localObject2).aOH == null) {
        break label302;
      }
      i = 1;
      if (i != 0)
      {
        str = ((cq)localObject2).aOH.toLowerCase();
        if (!"verbose".equals(str)) {
          break label307;
        }
        i = 0;
        if (i >= 0)
        {
          this.aNE = i;
          d("XML config - log level", Integer.valueOf(i));
        }
      }
      if (((cq)localObject2).aOI < 0) {
        break label357;
      }
      i = 1;
      if (i != 0)
      {
        i = ((cq)localObject2).aOI;
        this.aOI = i;
        this.aPu = true;
        e("XML config - dispatch period (sec)", Integer.valueOf(i));
      }
    } while (((cq)localObject2).aOJ == -1);
    if (((cq)localObject2).aOJ == 1) {}
    for (boolean bool = true;; bool = false)
    {
      this.aAN = bool;
      this.aPv = true;
      e("XML config - dry run", Boolean.valueOf(bool));
      return;
      i = 0;
      break;
      label297:
      i = 0;
      break label138;
      label302:
      i = 0;
      break label171;
      label307:
      if ("info".equals(str))
      {
        i = 1;
        break label196;
      }
      if ("warning".equals(str))
      {
        i = 2;
        break label196;
      }
      if ("error".equals(str))
      {
        i = 3;
        break label196;
      }
      i = -1;
      break label196;
      label357:
      i = 0;
      break label224;
    }
  }
  
  public final String qq()
  {
    pf();
    return this.aLo;
  }
  
  public final String qr()
  {
    pf();
    return this.aLn;
  }
  
  public final boolean qs()
  {
    pf();
    return false;
  }
  
  public final boolean qt()
  {
    pf();
    return this.aPv;
  }
  
  public final boolean qu()
  {
    pf();
    return this.aAN;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/dj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */