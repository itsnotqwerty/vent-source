package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public final class gj
  extends iy
{
  private long aRD;
  private String aRE;
  private Boolean aRF;
  
  gj(hz paramhz)
  {
    super(paramhz);
  }
  
  public final boolean ah(Context paramContext)
  {
    if (this.aRF == null) {
      this.aRF = Boolean.valueOf(false);
    }
    try
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext != null)
      {
        paramContext.getPackageInfo("com.google.android.gms", 128);
        this.aRF = Boolean.valueOf(true);
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;) {}
    }
    return this.aRF.booleanValue();
  }
  
  protected final boolean ri()
  {
    Object localObject1 = Calendar.getInstance();
    Object localObject2 = TimeUnit.MINUTES;
    int i = ((Calendar)localObject1).get(15);
    this.aRD = ((TimeUnit)localObject2).convert(((Calendar)localObject1).get(16) + i, TimeUnit.MILLISECONDS);
    localObject2 = Locale.getDefault();
    localObject1 = ((Locale)localObject2).getLanguage().toLowerCase(Locale.ENGLISH);
    localObject2 = ((Locale)localObject2).getCountry().toLowerCase(Locale.ENGLISH);
    this.aRE = (String.valueOf(localObject1).length() + 1 + String.valueOf(localObject2).length() + (String)localObject1 + "-" + (String)localObject2);
    return false;
  }
  
  public final long ry()
  {
    pf();
    return this.aRD;
  }
  
  public final String rz()
  {
    pf();
    return this.aRE;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */