package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.f.b;
import com.google.android.gms.common.api.f.c;
import com.google.android.gms.common.internal.al;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.location.n;
import com.google.android.gms.location.q;
import com.google.android.gms.location.t;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class fl
  extends ej
{
  final fe aQh = new fe(paramContext, this.aPL);
  
  public fl(Context paramContext, Looper paramLooper, f.b paramb, f.c paramc, String paramString, ay paramay)
  {
    super(paramContext, paramLooper, paramb, paramc, paramString, paramay);
  }
  
  public final void disconnect()
  {
    for (;;)
    {
      Iterator localIterator;
      Object localObject5;
      synchronized (this.aQh)
      {
        boolean bool = isConnected();
        if (bool) {
          try
          {
            fe localfe2 = this.aQh;
            synchronized (localfe2.aQb)
            {
              localIterator = localfe2.aQb.values().iterator();
              if (!localIterator.hasNext()) {
                continue;
              }
              localObject5 = (fj)localIterator.next();
              if (localObject5 == null) {
                continue;
              }
              ((fc)localfe2.aPL.or()).a(fo.a((t)localObject5, null));
            }
            super.disconnect();
          }
          catch (Exception localException)
          {
            Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", localException);
          }
        }
        return;
        localException.aQb.clear();
        synchronized (localException.aQd)
        {
          localIterator = localException.aQd.values().iterator();
          if (localIterator.hasNext())
          {
            localObject5 = (ff)localIterator.next();
            if (localObject5 == null) {
              continue;
            }
            ((fc)localException.aPL.or()).a(fo.a((q)localObject5));
          }
        }
      }
      ((fe)localObject3).aQd.clear();
      synchronized (((fe)localObject3).aQc)
      {
        localIterator = ((fe)localObject3).aQc.values().iterator();
        while (localIterator.hasNext())
        {
          localObject5 = (fi)localIterator.next();
          if (localObject5 != null) {
            ((fc)((fe)localObject3).aPL.or()).a(new ep(2, null, ((n)localObject5).asBinder(), null));
          }
        }
      }
      ((fe)localObject4).aQc.clear();
      fe localfe3 = this.aQh;
      if (localfe3.aQa)
      {
        localfe3.aPL.oq();
        ((fc)localfe3.aPL.or()).qx();
        localfe3.aQa = false;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/fl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */