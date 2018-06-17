package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;

public class nx
{
  private pe baZ;
  private final nq bba;
  private final np bbb;
  private final qe bbc;
  private final tb bbd;
  private final l bbe;
  private final uo bbf;
  private final tc bbg;
  private final Object mLock = new Object();
  
  public nx(nq paramnq, np paramnp, qe paramqe, tb paramtb, l paraml, uo paramuo, tc paramtc)
  {
    this.bba = paramnq;
    this.bbb = paramnp;
    this.bbc = paramqe;
    this.bbd = paramtb;
    this.bbe = paraml;
    this.bbf = paramuo;
    this.bbg = paramtc;
  }
  
  public static <T> T a(Context paramContext, boolean paramBoolean, a<T> parama)
  {
    int k = 1;
    int j;
    int i;
    if (paramBoolean)
    {
      j = 1;
      i = j;
      if (j == 0)
      {
        of.tj();
        i = j;
        if (!w.V(paramContext))
        {
          af.br("Google Play Services is not available");
          i = 1;
        }
      }
      of.tj();
      j = w.X(paramContext);
      of.tj();
      if (j <= w.W(paramContext)) {
        break label115;
      }
      i = k;
    }
    label115:
    for (;;)
    {
      Object localObject;
      if (i != 0)
      {
        localObject = parama.tg();
        paramContext = (Context)localObject;
        if (localObject == null) {
          paramContext = parama.th();
        }
      }
      do
      {
        return paramContext;
        j = 0;
        break;
        localObject = parama.th();
        paramContext = (Context)localObject;
      } while (localObject != null);
      return (T)parama.tg();
    }
  }
  
  private static pe td()
  {
    try
    {
      Object localObject = nx.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").newInstance();
      if (!(localObject instanceof IBinder))
      {
        af.bt("ClientApi class is not an instance of IBinder");
        return null;
      }
      localObject = pf.q((IBinder)localObject);
      return (pe)localObject;
    }
    catch (Exception localException)
    {
      af.d("Failed to instantiate ClientApi class.", localException);
    }
    return null;
  }
  
  private final pe te()
  {
    synchronized (this.mLock)
    {
      if (this.baZ == null) {
        this.baZ = td();
      }
      pe localpe = this.baZ;
      return localpe;
    }
  }
  
  abstract class a<T>
  {
    a() {}
    
    protected abstract T a(pe parampe)
      throws RemoteException;
    
    protected abstract T tf()
      throws RemoteException;
    
    protected final T tg()
    {
      Object localObject = nx.a(nx.this);
      if (localObject == null)
      {
        af.bt("ClientApi class cannot be loaded.");
        return null;
      }
      try
      {
        localObject = a((pe)localObject);
        return (T)localObject;
      }
      catch (RemoteException localRemoteException)
      {
        af.d("Cannot invoke local loader using ClientApi class", localRemoteException);
      }
      return null;
    }
    
    protected final T th()
    {
      try
      {
        Object localObject = tf();
        return (T)localObject;
      }
      catch (RemoteException localRemoteException)
      {
        af.d("Cannot invoke remote loader", localRemoteException);
      }
      return null;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/nx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */