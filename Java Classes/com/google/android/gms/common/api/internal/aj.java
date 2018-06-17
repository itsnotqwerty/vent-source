package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.c.f;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.f.b;
import com.google.android.gms.common.api.f.c;
import com.google.android.gms.common.c;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.internal.ma;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public final class aj<O extends a.a>
  implements f.b, f.c, co
{
  private final cb<O> aCB;
  boolean aEz;
  private final Queue<a> aFk = new LinkedList();
  final a.f aFl;
  private final a.c aFm;
  final e aFn;
  final Set<cd> aFo = new HashSet();
  final Map<be<?>, bj> aFp = new HashMap();
  final int aFq;
  final bm aFr;
  private int aFs = -1;
  private com.google.android.gms.common.a aFt = null;
  
  public aj(com.google.android.gms.common.api.e<O> parame)
  {
    Object localObject;
    this.aFl = ((com.google.android.gms.common.api.e)localObject).a(ah.a(parame).getLooper(), this);
    if ((this.aFl instanceof com.google.android.gms.common.internal.aj)) {}
    for (this.aFm = com.google.android.gms.common.internal.aj.ol();; this.aFm = this.aFl)
    {
      this.aCB = ((com.google.android.gms.common.api.e)localObject).aCB;
      this.aFn = new e();
      this.aFq = ((com.google.android.gms.common.api.e)localObject).yo;
      if (!this.aFl.mX()) {
        break;
      }
      this.aFr = ((com.google.android.gms.common.api.e)localObject).a(ah.c(parame), ah.a(parame));
      return;
    }
    this.aFr = null;
  }
  
  private final void b(a parama)
  {
    parama.a(this.aFn, mX());
    try
    {
      parama.a(this);
      return;
    }
    catch (DeadObjectException parama)
    {
      cG(1);
      this.aFl.disconnect();
    }
  }
  
  private final void g(com.google.android.gms.common.a parama)
  {
    Iterator localIterator = this.aFo.iterator();
    while (localIterator.hasNext())
    {
      cd localcd = (cd)localIterator.next();
      String str = null;
      if (parama == com.google.android.gms.common.a.aCh) {
        str = this.aFl.mZ();
      }
      localcd.a(this.aCB, parama, str);
    }
    this.aFo.clear();
  }
  
  private final void nD()
  {
    this.aFs = -1;
    ah.a(this.aFj, -1);
  }
  
  public final void a(com.google.android.gms.common.a parama)
  {
    ae.a(ah.a(this.aFj));
    if (this.aFr != null)
    {
      ??? = this.aFr;
      if (((bm)???).aEe != null) {
        ((bm)???).aEe.disconnect();
      }
    }
    nH();
    nD();
    g(parama);
    if (parama.aCj == 4) {
      d(ah.nB());
    }
    do
    {
      return;
      if (this.aFk.isEmpty())
      {
        this.aFt = parama;
        return;
      }
      synchronized (ah.nC())
      {
        if ((ah.f(this.aFj) != null) && (ah.g(this.aFj).contains(this.aCB)))
        {
          ah.f(this.aFj).c(parama, this.aFq);
          return;
        }
      }
    } while (this.aFj.b(parama, this.aFq));
    if (parama.aCj == 18) {
      this.aEz = true;
    }
    if (this.aEz)
    {
      ah.a(this.aFj).sendMessageDelayed(Message.obtain(ah.a(this.aFj), 9, this.aCB), ah.d(this.aFj));
      return;
    }
    parama = this.aCB.aCz.mName;
    d(new Status(17, String.valueOf(parama).length() + 38 + "API: " + parama + " is not available on this device."));
  }
  
  public final void a(com.google.android.gms.common.a parama, com.google.android.gms.common.api.a<?> parama1, boolean paramBoolean)
  {
    if (Looper.myLooper() == ah.a(this.aFj).getLooper())
    {
      a(parama);
      return;
    }
    ah.a(this.aFj).post(new am(this, parama));
  }
  
  public final void a(a parama)
  {
    ae.a(ah.a(this.aFj));
    if (this.aFl.isConnected())
    {
      b(parama);
      nK();
      return;
    }
    this.aFk.add(parama);
    if ((this.aFt != null) && (this.aFt.mP()))
    {
      a(this.aFt);
      return;
    }
    connect();
  }
  
  public final void cG(int paramInt)
  {
    if (Looper.myLooper() == ah.a(this.aFj).getLooper())
    {
      nF();
      return;
    }
    ah.a(this.aFj).post(new al(this));
  }
  
  public final void connect()
  {
    ae.a(ah.a(this.aFj));
    if ((this.aFl.isConnected()) || (this.aFl.isConnecting())) {
      return;
    }
    if (ah.b(this.aFj) != 0)
    {
      ah.h(this.aFj);
      int i = c.K(ah.c(this.aFj));
      ah.a(this.aFj, i);
      if (i != 0)
      {
        a(new com.google.android.gms.common.a(i, null));
        return;
      }
    }
    ap localap = new ap(this.aFj, this.aFl, this.aCB);
    bm localbm;
    if (this.aFl.mX())
    {
      localbm = this.aFr;
      if (localbm.aEe != null) {
        localbm.aEe.disconnect();
      }
      localbm.aDG.aIz = Integer.valueOf(System.identityHashCode(localbm));
      localbm.aEe = ((ma)localbm.aCt.a(localbm.mContext, localbm.mHandler.getLooper(), localbm.aDG, localbm.aDG.aIy, localbm, localbm));
      localbm.aGb = localap;
      if ((localbm.aFx != null) && (!localbm.aFx.isEmpty())) {
        break label247;
      }
      localbm.mHandler.post(new bn(localbm));
    }
    for (;;)
    {
      this.aFl.a(localap);
      return;
      label247:
      localbm.aEe.connect();
    }
  }
  
  public final void d(Status paramStatus)
  {
    ae.a(ah.a(this.aFj));
    Iterator localIterator = this.aFk.iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).c(paramStatus);
    }
    this.aFk.clear();
  }
  
  public final void h(Bundle paramBundle)
  {
    if (Looper.myLooper() == ah.a(this.aFj).getLooper())
    {
      nE();
      return;
    }
    ah.a(this.aFj).post(new ak(this));
  }
  
  final boolean isConnected()
  {
    return this.aFl.isConnected();
  }
  
  public final boolean mX()
  {
    return this.aFl.mX();
  }
  
  final void nE()
  {
    nH();
    g(com.google.android.gms.common.a.aCh);
    nJ();
    Iterator localIterator = this.aFp.values().iterator();
    for (;;)
    {
      if (localIterator.hasNext()) {
        localIterator.next();
      }
      try
      {
        new f();
      }
      catch (DeadObjectException localDeadObjectException)
      {
        cG(1);
        this.aFl.disconnect();
        while ((this.aFl.isConnected()) && (!this.aFk.isEmpty())) {
          b((a)this.aFk.remove());
        }
        nK();
        return;
      }
      catch (RemoteException localRemoteException) {}
    }
  }
  
  final void nF()
  {
    nH();
    this.aEz = true;
    this.aFn.a(true, bw.aGn);
    ah.a(this.aFj).sendMessageDelayed(Message.obtain(ah.a(this.aFj), 9, this.aCB), ah.d(this.aFj));
    ah.a(this.aFj).sendMessageDelayed(Message.obtain(ah.a(this.aFj), 11, this.aCB), ah.e(this.aFj));
    nD();
  }
  
  public final void nG()
  {
    int i = 0;
    ae.a(ah.a(this.aFj));
    d(ah.aEZ);
    this.aFn.a(false, ah.aEZ);
    be[] arrayOfbe = (be[])this.aFp.keySet().toArray(new be[this.aFp.size()]);
    int j = arrayOfbe.length;
    while (i < j)
    {
      a(new bz(arrayOfbe[i], new f()));
      i += 1;
    }
    g(new com.google.android.gms.common.a(4));
    if (this.aFl.isConnected()) {
      this.aFl.a(new an(this));
    }
  }
  
  public final void nH()
  {
    ae.a(ah.a(this.aFj));
    this.aFt = null;
  }
  
  public final com.google.android.gms.common.a nI()
  {
    ae.a(ah.a(this.aFj));
    return this.aFt;
  }
  
  final void nJ()
  {
    if (this.aEz)
    {
      ah.a(this.aFj).removeMessages(11, this.aCB);
      ah.a(this.aFj).removeMessages(9, this.aCB);
      this.aEz = false;
    }
  }
  
  final void nK()
  {
    ah.a(this.aFj).removeMessages(12, this.aCB);
    ah.a(this.aFj).sendMessageDelayed(ah.a(this.aFj).obtainMessage(12, this.aCB), ah.i(this.aFj));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */