package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.ads.a.b;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.i;
import com.google.android.gms.ads.j;
import com.google.android.gms.ads.k;
import java.util.concurrent.atomic.AtomicBoolean;

public final class pz
{
  public final i aAc = new i();
  private final nt ayW;
  public j azA;
  public boolean azG;
  public com.google.android.gms.ads.a baA;
  public com.google.android.gms.ads.a.a baY;
  public nm baz;
  public final ti bbK = new ti();
  private final AtomicBoolean bbL;
  public oh bbM = new qa(this);
  public d[] bbN;
  public g bbO;
  public ow bbP;
  public b bbQ;
  public String bbR;
  public ViewGroup bbS;
  public int bbT;
  
  public pz(ViewGroup paramViewGroup)
  {
    this(paramViewGroup, nt.baR, (byte)0);
  }
  
  private pz(ViewGroup paramViewGroup, nt paramnt)
  {
    this.bbS = paramViewGroup;
    this.ayW = paramnt;
    this.bbP = null;
    this.bbL = new AtomicBoolean(false);
    this.bbT = 0;
  }
  
  private pz(ViewGroup paramViewGroup, nt paramnt, byte paramByte)
  {
    this(paramViewGroup, paramnt);
  }
  
  public static nu a(Context paramContext, d[] paramArrayOfd, int paramInt)
  {
    boolean bool = true;
    paramContext = new nu(paramContext, paramArrayOfd);
    if (paramInt == 1) {}
    for (;;)
    {
      paramContext.baX = bool;
      return paramContext;
      bool = false;
    }
  }
  
  public final void a(nm paramnm)
  {
    try
    {
      this.baz = paramnm;
      ow localow;
      if (this.bbP != null)
      {
        localow = this.bbP;
        if (paramnm == null) {
          break label38;
        }
      }
      label38:
      for (paramnm = new nn(paramnm);; paramnm = null)
      {
        localow.a(paramnm);
        return;
      }
      return;
    }
    catch (RemoteException paramnm)
    {
      af.d("Failed to set the AdClickListener.", paramnm);
    }
  }
  
  public final void a(d... paramVarArgs)
  {
    this.bbN = paramVarArgs;
    try
    {
      if (this.bbP != null) {
        this.bbP.a(a(this.bbS.getContext(), this.bbN, this.bbT));
      }
      this.bbS.requestLayout();
      return;
    }
    catch (RemoteException paramVarArgs)
    {
      for (;;)
      {
        af.d("Failed to set the ad size.", paramVarArgs);
      }
    }
  }
  
  public final d getAdSize()
  {
    try
    {
      if (this.bbP != null)
      {
        Object localObject = this.bbP.tp();
        if (localObject != null)
        {
          localObject = k.c(((nu)localObject).width, ((nu)localObject).height, ((nu)localObject).baS);
          return (d)localObject;
        }
      }
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Failed to get the current AdSize.", localRemoteException);
      if (this.bbN != null) {
        return this.bbN[0];
      }
    }
    return null;
  }
  
  public final String getAdUnitId()
  {
    if ((this.bbR == null) && (this.bbP != null)) {}
    try
    {
      this.bbR = this.bbP.getAdUnitId();
      return this.bbR;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        af.d("Failed to get ad unit id.", localRemoteException);
      }
    }
  }
  
  public final String getMediationAdapterClassName()
  {
    try
    {
      if (this.bbP != null)
      {
        String str = this.bbP.tl();
        return str;
      }
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Failed to get the mediation adapter class name.", localRemoteException);
    }
    return null;
  }
  
  public final pp lz()
  {
    if (this.bbP == null) {
      return null;
    }
    try
    {
      pp localpp = this.bbP.getVideoController();
      return localpp;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Failed to retrieve VideoController.", localRemoteException);
    }
    return null;
  }
  
  public final void setAdListener(com.google.android.gms.ads.a parama)
  {
    this.baA = parama;
    oh localoh = this.bbM;
    synchronized (localoh.lock)
    {
      localoh.bbs = parama;
      return;
    }
  }
  
  public final void setAdSizes(d... paramVarArgs)
  {
    if (this.bbN != null) {
      throw new IllegalStateException("The ad size can only be set once on AdView.");
    }
    a(paramVarArgs);
  }
  
  public final void setAdUnitId(String paramString)
  {
    if (this.bbR != null) {
      throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }
    this.bbR = paramString;
  }
  
  public final void setAppEventListener(com.google.android.gms.ads.a.a parama)
  {
    try
    {
      this.baY = parama;
      ow localow;
      if (this.bbP != null)
      {
        localow = this.bbP;
        if (parama == null) {
          break label38;
        }
      }
      label38:
      for (parama = new nw(parama);; parama = null)
      {
        localow.a(parama);
        return;
      }
      return;
    }
    catch (RemoteException parama)
    {
      af.d("Failed to set the AppEventListener.", parama);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */