package com.firebase.jobdispatcher;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.support.v4.g.m;
import android.util.Log;

final class d
{
  private static final m<String, t> axi = new m();
  private final l axj = new l.a()
  {
    public final void a(Bundle paramAnonymousBundle, int paramAnonymousInt)
    {
      paramAnonymousBundle = GooglePlayReceiver.kK().g(paramAnonymousBundle);
      if (paramAnonymousBundle == null)
      {
        Log.wtf("FJD.ExternalReceiver", "jobFinished: unknown invocation provided");
        return;
      }
      d.a(d.this, paramAnonymousBundle.kT(), paramAnonymousInt);
    }
  };
  private final a axk;
  private final Context context;
  
  d(Context paramContext, a parama)
  {
    this.context = paramContext;
    this.axk = parama;
  }
  
  static void a(q paramq, boolean paramBoolean)
  {
    synchronized (axi)
    {
      t localt = (t)axi.get(paramq.axF);
      if (localt != null)
      {
        localt.b(paramq, paramBoolean);
        if (localt.kU()) {
          axi.remove(paramq.axF);
        }
      }
      return;
    }
  }
  
  final void a(q paramq)
  {
    if (paramq == null) {
      return;
    }
    Object localObject2;
    synchronized (axi)
    {
      localObject2 = (t)axi.get(paramq.axF);
      if ((localObject2 != null) && (!((t)localObject2).kU()))
      {
        localObject1 = localObject2;
        if (!((t)localObject2).d(paramq)) {
          break label95;
        }
        localObject1 = localObject2;
        if (((t)localObject2).isConnected()) {
          break label95;
        }
        return;
      }
    }
    Object localObject1 = new t(this.axj, this.context);
    axi.put(paramq.axF, localObject1);
    label95:
    if (!((t)localObject1).c(paramq))
    {
      localObject2 = this.context;
      Intent localIntent = new Intent("com.firebase.jobdispatcher.ACTION_EXECUTE");
      localIntent.setClassName(this.context, paramq.kR());
      if (!((Context)localObject2).bindService(localIntent, (ServiceConnection)localObject1, 1))
      {
        Log.e("FJD.ExternalReceiver", "Unable to bind to " + paramq.axF);
        ((t)localObject1).kV();
      }
    }
  }
  
  static abstract interface a
  {
    public abstract void a(q paramq, int paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */