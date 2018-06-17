package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.analytics.n;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.stats.a;
import java.util.Collections;
import java.util.List;

public final class bh
  extends bb
{
  final bj aMM;
  cs aMN;
  private final cg aMO;
  private final dh aMP;
  
  protected bh(bd parambd)
  {
    super(parambd);
    this.aMP = new dh(parambd.aBm);
    this.aMM = new bj(this);
    this.aMO = new bi(this, parambd);
  }
  
  public final boolean b(cr paramcr)
  {
    ae.E(paramcr);
    n.mN();
    pf();
    cs localcs = this.aMN;
    if (localcs == null) {
      return false;
    }
    if (paramcr.aOO) {}
    for (String str = ce.pR();; str = ce.pS())
    {
      List localList = Collections.emptyList();
      try
      {
        localcs.a(paramcr.aAV, paramcr.aOM, str, localList);
        po();
        return true;
      }
      catch (RemoteException paramcr)
      {
        bw("Failed to send hits to AnalyticsService");
      }
    }
    return false;
  }
  
  public final boolean connect()
  {
    n.mN();
    pf();
    if (this.aMN != null) {
      return true;
    }
    cs localcs = this.aMM.pp();
    if (localcs != null)
    {
      this.aMN = localcs;
      po();
      return true;
    }
    return false;
  }
  
  public final void disconnect()
  {
    n.mN();
    pf();
    try
    {
      a.oz();
      this.aMq.mContext.unbindService(this.aMM);
      if (this.aMN != null)
      {
        this.aMN = null;
        this.aMq.pi().pa();
      }
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  public final boolean isConnected()
  {
    n.mN();
    pf();
    return this.aMN != null;
  }
  
  protected final void mG() {}
  
  final void po()
  {
    this.aMP.start();
    this.aMO.n(((Long)cm.aOx.aOE).longValue());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/bh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */