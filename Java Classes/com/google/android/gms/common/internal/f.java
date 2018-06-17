package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.f.b;
import com.google.android.gms.common.api.f.c;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public final class f
  implements Handler.Callback
{
  public final g aHh;
  public final ArrayList<f.b> aHi = new ArrayList();
  public ArrayList<f.b> aHj = new ArrayList();
  public final ArrayList<f.c> aHk = new ArrayList();
  public volatile boolean aHl = false;
  public final AtomicInteger aHm = new AtomicInteger(0);
  public boolean aHn = false;
  public final Handler mHandler;
  public final Object mLock = new Object();
  
  public f(Looper paramLooper, g paramg)
  {
    this.aHh = paramg;
    this.mHandler = new Handler(paramLooper, this);
  }
  
  public final void a(f.c paramc)
  {
    ae.E(paramc);
    synchronized (this.mLock)
    {
      if (this.aHk.contains(paramc))
      {
        paramc = String.valueOf(paramc);
        Log.w("GmsClientEvents", String.valueOf(paramc).length() + 67 + "registerConnectionFailedListener(): listener " + paramc + " is already registered");
        return;
      }
      this.aHk.add(paramc);
    }
  }
  
  public final boolean handleMessage(Message arg1)
  {
    if (???.what == 1)
    {
      f.b localb = (f.b)???.obj;
      synchronized (this.mLock)
      {
        if ((this.aHl) && (this.aHh.isConnected()) && (this.aHi.contains(localb))) {
          localb.h(null);
        }
        return true;
      }
    }
    int i = ???.what;
    Log.wtf("GmsClientEvents", 45 + "Don't know how to handle message: " + i, new Exception());
    return false;
  }
  
  public final void nZ()
  {
    this.aHl = false;
    this.aHm.incrementAndGet();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */