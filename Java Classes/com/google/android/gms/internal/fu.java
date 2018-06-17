package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;
import java.util.Map;

public final class fu
  implements Runnable
{
  public fu(fs paramfs, String paramString, long paramLong) {}
  
  public final void run()
  {
    fs localfs = this.aQw;
    String str = this.aQu;
    long l1 = this.aQv;
    localfs.mN();
    ae.bf(str);
    Object localObject = (Integer)localfs.aQs.get(str);
    if (localObject != null)
    {
      jt localjt = localfs.qG().sj();
      int i = ((Integer)localObject).intValue() - 1;
      if (i == 0)
      {
        localfs.aQs.remove(str);
        localObject = (Long)localfs.aQr.get(str);
        if (localObject == null) {
          localfs.qP().aTa.bq("First ad unit exposure time was never set");
        }
        for (;;)
        {
          if (localfs.aQs.isEmpty())
          {
            if (localfs.aQt != 0L) {
              break;
            }
            localfs.qP().aTa.bq("First ad exposure time was never set");
          }
          return;
          long l2 = ((Long)localObject).longValue();
          localfs.aQr.remove(str);
          localfs.a(str, l1 - l2, localjt);
        }
        localfs.a(l1 - localfs.aQt, localjt);
        localfs.aQt = 0L;
        return;
      }
      localfs.aQs.put(str, Integer.valueOf(i));
      return;
    }
    localfs.qP().aTa.j("Call to endAdUnitExposure for unknown ad unit id", str);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/fu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */