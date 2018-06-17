package com.google.android.gms.common.api.internal;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.support.v4.g.b;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.c;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.m;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class ah
  implements Handler.Callback
{
  static final Object AT = new Object();
  public static final Status aEZ = new Status(4, "Sign-out occurred while this API call was in progress.");
  private static final Status aFa = new Status(4, "The user must be signed in to make this API call.");
  private static ah aFc;
  private final c aCU;
  final Map<cb<?>, aj<?>> aDz = new ConcurrentHashMap(5, 0.75F, 1);
  private long aEA = 120000L;
  private long aEB = 5000L;
  private long aFb = 10000L;
  private int aFd = -1;
  public final AtomicInteger aFe = new AtomicInteger(1);
  public final AtomicInteger aFf = new AtomicInteger(0);
  g aFg = null;
  final Set<cb<?>> aFh = new b();
  private final Set<cb<?>> aFi = new b();
  final Context mContext;
  public final Handler mHandler;
  
  private ah(Context paramContext, Looper paramLooper, c paramc)
  {
    this.mContext = paramContext;
    this.mHandler = new Handler(paramLooper, this);
    this.aCU = paramc;
    this.mHandler.sendMessage(this.mHandler.obtainMessage(6));
  }
  
  private final void b(com.google.android.gms.common.api.e<?> parame)
  {
    cb localcb = parame.aCB;
    aj localaj2 = (aj)this.aDz.get(localcb);
    aj localaj1 = localaj2;
    if (localaj2 == null)
    {
      localaj1 = new aj(this, parame);
      this.aDz.put(localcb, localaj1);
    }
    if (localaj1.mX()) {
      this.aFi.add(localcb);
    }
    localaj1.connect();
  }
  
  private final void nA()
  {
    Iterator localIterator = this.aFi.iterator();
    while (localIterator.hasNext())
    {
      cb localcb = (cb)localIterator.next();
      ((aj)this.aDz.remove(localcb)).nG();
    }
    this.aFi.clear();
  }
  
  public static ah nz()
  {
    synchronized (AT)
    {
      ae.g(aFc, "Must guarantee manager is non-null before using getInstance");
      ah localah = aFc;
      return localah;
    }
  }
  
  public static ah y(Context paramContext)
  {
    synchronized (AT)
    {
      if (aFc == null)
      {
        Object localObject2 = new HandlerThread("GoogleApiHandler", 9);
        ((HandlerThread)localObject2).start();
        localObject2 = ((HandlerThread)localObject2).getLooper();
        aFc = new ah(paramContext.getApplicationContext(), (Looper)localObject2, c.mR());
      }
      paramContext = aFc;
      return paramContext;
    }
  }
  
  public final void a(com.google.android.gms.common.a parama, int paramInt)
  {
    if (!b(parama, paramInt)) {
      this.mHandler.sendMessage(this.mHandler.obtainMessage(5, paramInt, 0, parama));
    }
  }
  
  final boolean b(com.google.android.gms.common.a parama, int paramInt)
  {
    boolean bool = false;
    c localc = this.aCU;
    Context localContext = this.mContext;
    if (parama.mP()) {}
    for (PendingIntent localPendingIntent = parama.aCk;; localPendingIntent = localc.b(localContext, parama.aCj, 0))
    {
      if (localPendingIntent != null)
      {
        localc.a(localContext, parama.aCj, GoogleApiActivity.a(localContext, localPendingIntent, paramInt));
        bool = true;
      }
      return bool;
    }
  }
  
  public final boolean handleMessage(Message paramMessage)
  {
    int j = 0;
    int i = 0;
    Object localObject1;
    Object localObject2;
    aj localaj;
    switch (paramMessage.what)
    {
    default: 
      i = paramMessage.what;
      Log.w("GoogleApiManager", 31 + "Unknown message id: " + i);
      return false;
    case 1: 
      if (((Boolean)paramMessage.obj).booleanValue()) {}
      for (long l = 10000L;; l = 300000L)
      {
        this.aFb = l;
        this.mHandler.removeMessages(12);
        paramMessage = this.aDz.keySet().iterator();
        while (paramMessage.hasNext())
        {
          localObject1 = (cb)paramMessage.next();
          this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(12, localObject1), this.aFb);
        }
      }
    case 2: 
      paramMessage = (cd)paramMessage.obj;
      localObject1 = paramMessage.aCy.keySet().iterator();
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (cb)((Iterator)localObject1).next();
        localaj = (aj)this.aDz.get(localObject2);
        if (localaj != null) {
          break label297;
        }
        paramMessage.a((cb)localObject2, new com.google.android.gms.common.a(13), null);
      }
    case 3: 
    case 4: 
    case 8: 
    case 13: 
      for (;;)
      {
        return true;
        if (localaj.isConnected())
        {
          paramMessage.a((cb)localObject2, com.google.android.gms.common.a.aCh, localaj.aFl.mZ());
          break;
        }
        if (localaj.nI() != null)
        {
          paramMessage.a((cb)localObject2, localaj.nI(), null);
          break;
        }
        ae.a(localaj.aFj.mHandler);
        localaj.aFo.add(paramMessage);
        break;
        paramMessage = this.aDz.values().iterator();
        while (paramMessage.hasNext())
        {
          localObject1 = (aj)paramMessage.next();
          ((aj)localObject1).nH();
          ((aj)localObject1).connect();
        }
        localObject2 = (bh)paramMessage.obj;
        localObject1 = (aj)this.aDz.get(((bh)localObject2).aFX.aCB);
        paramMessage = (Message)localObject1;
        if (localObject1 == null)
        {
          b(((bh)localObject2).aFX);
          paramMessage = (aj)this.aDz.get(((bh)localObject2).aFX.aCB);
        }
        if ((paramMessage.mX()) && (this.aFf.get() != ((bh)localObject2).aFW))
        {
          ((bh)localObject2).aFV.c(aEZ);
          paramMessage.nG();
        }
        else
        {
          paramMessage.a(((bh)localObject2).aFV);
        }
      }
    case 5: 
      label297:
      i = paramMessage.arg1;
      localObject1 = (com.google.android.gms.common.a)paramMessage.obj;
      localObject2 = this.aDz.values().iterator();
      do
      {
        if (!((Iterator)localObject2).hasNext()) {
          break;
        }
        paramMessage = (aj)((Iterator)localObject2).next();
      } while (paramMessage.aFq != i);
    }
    for (;;)
    {
      if (paramMessage != null)
      {
        localObject2 = this.aCU.cD(((com.google.android.gms.common.a)localObject1).aCj);
        localObject1 = ((com.google.android.gms.common.a)localObject1).aCl;
        paramMessage.d(new Status(17, String.valueOf(localObject2).length() + 69 + String.valueOf(localObject1).length() + "Error resolution was canceled by the user, original error message: " + (String)localObject2 + ": " + (String)localObject1));
        break;
      }
      Log.wtf("GoogleApiManager", 76 + "Could not find API instance " + i + " while trying to fail enqueued calls.", new Exception());
      break;
      if (!(this.mContext.getApplicationContext() instanceof Application)) {
        break;
      }
      ce.b((Application)this.mContext.getApplicationContext());
      ce.nR().a(new ai(this));
      paramMessage = ce.nR();
      if (!paramMessage.aGG.get())
      {
        if (Build.VERSION.SDK_INT >= 16) {
          i = 1;
        }
        if (i == 0) {
          break label877;
        }
        localObject1 = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState((ActivityManager.RunningAppProcessInfo)localObject1);
        if ((!paramMessage.aGG.getAndSet(true)) && (((ActivityManager.RunningAppProcessInfo)localObject1).importance > 100)) {
          paramMessage.aGF.set(true);
        }
      }
      label877:
      for (boolean bool = paramMessage.aGF.get(); !bool; bool = true)
      {
        this.aFb = 300000L;
        break;
      }
      b((com.google.android.gms.common.api.e)paramMessage.obj);
      break;
      if (!this.aDz.containsKey(paramMessage.obj)) {
        break;
      }
      paramMessage = (aj)this.aDz.get(paramMessage.obj);
      ae.a(paramMessage.aFj.mHandler);
      if (!paramMessage.aEz) {
        break;
      }
      paramMessage.connect();
      break;
      nA();
      break;
      if (!this.aDz.containsKey(paramMessage.obj)) {
        break;
      }
      localObject1 = (aj)this.aDz.get(paramMessage.obj);
      ae.a(((aj)localObject1).aFj.mHandler);
      if (!((aj)localObject1).aEz) {
        break;
      }
      ((aj)localObject1).nJ();
      if (((aj)localObject1).aFj.aCU.w(((aj)localObject1).aFj.mContext) == 18) {}
      for (paramMessage = new Status(8, "Connection timed out while waiting for Google Play services update to complete.");; paramMessage = new Status(8, "API failed to connect while resuming due to an unknown error."))
      {
        ((aj)localObject1).d(paramMessage);
        ((aj)localObject1).aFl.disconnect();
        break;
      }
      if (!this.aDz.containsKey(paramMessage.obj)) {
        break;
      }
      paramMessage = (aj)this.aDz.get(paramMessage.obj);
      ae.a(paramMessage.aFj.mHandler);
      if ((!paramMessage.aFl.isConnected()) || (paramMessage.aFp.size() != 0)) {
        break;
      }
      localObject1 = paramMessage.aFn;
      if (((e)localObject1).aDQ.isEmpty())
      {
        i = j;
        if (((e)localObject1).aDR.isEmpty()) {}
      }
      else
      {
        i = 1;
      }
      if (i != 0)
      {
        paramMessage.nK();
        break;
      }
      paramMessage.aFl.disconnect();
      break;
      paramMessage = null;
    }
  }
  
  public final void nl()
  {
    this.mHandler.sendMessage(this.mHandler.obtainMessage(3));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */