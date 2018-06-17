package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;
import java.util.Map;

public final class ft
  implements Runnable
{
  public ft(fs paramfs, String paramString, long paramLong) {}
  
  public final void run()
  {
    fs localfs = this.aQw;
    String str = this.aQu;
    long l = this.aQv;
    localfs.mN();
    ae.bf(str);
    if (localfs.aQs.isEmpty()) {
      localfs.aQt = l;
    }
    Integer localInteger = (Integer)localfs.aQs.get(str);
    if (localInteger != null)
    {
      localfs.aQs.put(str, Integer.valueOf(localInteger.intValue() + 1));
      return;
    }
    if (localfs.aQs.size() >= 100)
    {
      localfs.qP().aTd.bq("Too many ads visible");
      return;
    }
    localfs.aQs.put(str, Integer.valueOf(1));
    localfs.aQr.put(str, Long.valueOf(l));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ft.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */