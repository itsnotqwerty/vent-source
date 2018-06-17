package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager.WakeLock;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.stats.c;
import com.google.android.gms.common.stats.e;
import com.google.android.gms.common.util.b;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class dc
{
  static Object AT = new Object();
  private static Boolean aAJ;
  static mp aPk;
  
  public static void onReceive(Context paramContext, Intent arg1)
  {
    localcw = bd.ab(paramContext).pg();
    if (??? == null) {
      localcw.bz("AnalyticsReceiver called with null intent");
    }
    do
    {
      return;
      ??? = ???.getAction();
      localcw.d("Local AnalyticsReceiver got", ???);
    } while (!"com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(???));
    boolean bool = dd.ad(paramContext);
    Object localObject1 = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
    ((Intent)localObject1).setComponent(new ComponentName(paramContext, "com.google.android.gms.analytics.AnalyticsService"));
    ((Intent)localObject1).setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
    synchronized (AT)
    {
      paramContext.startService((Intent)localObject1);
      if (!bool) {
        return;
      }
    }
    for (;;)
    {
      try
      {
        if (aPk == null)
        {
          paramContext = new mp(paramContext, "Analytics WakeLock");
          aPk = paramContext;
          paramContext.aZr.setReferenceCounted(false);
          paramContext.aZv = false;
        }
        paramContext = aPk;
        paramContext.aZy.incrementAndGet();
        localObject1 = paramContext.sG();
      }
      catch (SecurityException paramContext)
      {
        Integer[] arrayOfInteger;
        int i;
        localcw.bz("Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
        continue;
        if (i != 0) {
          continue;
        }
        continue;
      }
      try
      {
        if (((!paramContext.aZw.isEmpty()) || (paramContext.aZx > 0)) && (!paramContext.aZr.isHeld()))
        {
          paramContext.aZw.clear();
          paramContext.aZx = 0;
        }
        if (paramContext.aZv)
        {
          arrayOfInteger = (Integer[])paramContext.aZw.get(localObject1);
          if (arrayOfInteger == null)
          {
            paramContext.aZw.put(localObject1, new Integer[] { Integer.valueOf(1) });
            i = 1;
            continue;
          }
        }
        else
        {
          if ((!paramContext.aZv) && (paramContext.aZx == 0))
          {
            e.oA();
            e.a(paramContext.mContext, c.a(paramContext.aZr, (String)localObject1), 7, paramContext.aIO, (String)localObject1, paramContext.aZt, b.b(paramContext.aZs), 1000L);
            paramContext.aZx += 1;
          }
          paramContext.aZr.acquire();
          if (1000L > 0L) {
            mp.aZz.schedule(new mq(paramContext), 1000L, TimeUnit.MILLISECONDS);
          }
          return;
        }
        arrayOfInteger[0] = Integer.valueOf(arrayOfInteger[0].intValue() + 1);
        i = 0;
      }
      finally {}
    }
  }
  
  public static boolean s(Context paramContext)
  {
    ae.E(paramContext);
    if (aAJ != null) {
      return aAJ.booleanValue();
    }
    boolean bool = di.d(paramContext, "com.google.android.gms.analytics.AnalyticsReceiver", false);
    aAJ = Boolean.valueOf(bool);
    return bool;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/dc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */