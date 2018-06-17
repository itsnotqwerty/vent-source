package com.google.android.gms.common.util;

import android.os.SystemClock;

public final class f
  implements e
{
  private static f aJu = new f();
  
  public static e oG()
  {
    return aJu;
  }
  
  public final long currentTimeMillis()
  {
    return System.currentTimeMillis();
  }
  
  public final long elapsedRealtime()
  {
    return SystemClock.elapsedRealtime();
  }
  
  public final long nanoTime()
  {
    return System.nanoTime();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/util/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */