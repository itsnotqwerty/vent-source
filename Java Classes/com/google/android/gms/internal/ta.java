package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.c;
import com.google.android.gms.ads.b.c.a;
import com.google.android.gms.ads.b.c.b;
import com.google.android.gms.ads.b.k;
import com.google.android.gms.ads.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ta
  extends k
{
  private final i aAc = new i();
  private final List<c.b> bcD = new ArrayList();
  private final rm bcE;
  private final c.a bcF;
  private final sy bcL;
  
  public ta(sy paramsy)
  {
    this.bcL = paramsy;
    try
    {
      paramsy = this.bcL.lD();
      if (paramsy != null)
      {
        Iterator localIterator = paramsy.iterator();
        if (localIterator.hasNext())
        {
          paramsy = localIterator.next();
          if (!(paramsy instanceof IBinder)) {
            break label219;
          }
          paramsy = (IBinder)paramsy;
          if (paramsy == null) {
            break label219;
          }
          IInterface localIInterface = paramsy.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
          if (!(localIInterface instanceof rj)) {
            break label207;
          }
          paramsy = (rj)localIInterface;
        }
      }
      while (paramsy != null)
      {
        this.bcD.add(new rm(paramsy));
        break;
        try
        {
          paramsy = this.bcL.tK();
          if (paramsy != null)
          {
            paramsy = new rm(paramsy);
            this.bcE = paramsy;
            paramsy = (sy)localObject;
          }
        }
        catch (RemoteException paramsy)
        {
          try
          {
            for (;;)
            {
              if (this.bcL.tM() != null) {
                paramsy = new ri(this.bcL.tM());
              }
              this.bcF = paramsy;
              return;
              paramsy = new rl(paramsy);
              break;
              paramsy = null;
              break;
              paramsy = null;
            }
            paramsy = paramsy;
            af.c("Failed to get image.", paramsy);
            paramsy = null;
          }
          catch (RemoteException paramsy)
          {
            for (;;)
            {
              af.c("Failed to get attribution info.", paramsy);
              paramsy = (sy)localObject;
            }
          }
        }
      }
    }
    catch (RemoteException paramsy)
    {
      af.c("Failed to get image.", paramsy);
    }
  }
  
  public final String getBody()
  {
    try
    {
      String str = this.bcL.getBody();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get body.", localRemoteException);
    }
    return null;
  }
  
  public final i getVideoController()
  {
    try
    {
      if (this.bcL.getVideoController() != null) {
        this.aAc.a(this.bcL.getVideoController());
      }
      return this.aAc;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        af.c("Exception occurred while getting video controller", localRemoteException);
      }
    }
  }
  
  public final List<c.b> lD()
  {
    return this.bcD;
  }
  
  public final c.b lF()
  {
    return this.bcE;
  }
  
  public final Double lH()
  {
    try
    {
      double d = this.bcL.tL();
      if (d == -1.0D) {
        return null;
      }
      return Double.valueOf(d);
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get star rating.", localRemoteException);
    }
    return null;
  }
  
  public final String lN()
  {
    try
    {
      String str = this.bcL.lN();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get headline.", localRemoteException);
    }
    return null;
  }
  
  public final String lO()
  {
    try
    {
      String str = this.bcL.lO();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get call to action.", localRemoteException);
    }
    return null;
  }
  
  public final String lP()
  {
    try
    {
      String str = this.bcL.lP();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get attribution.", localRemoteException);
    }
    return null;
  }
  
  public final String lQ()
  {
    try
    {
      String str = this.bcL.lQ();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get store", localRemoteException);
    }
    return null;
  }
  
  public final String lR()
  {
    try
    {
      String str = this.bcL.lR();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get price.", localRemoteException);
    }
    return null;
  }
  
  public final Object lS()
  {
    try
    {
      Object localObject = this.bcL.tR();
      if (localObject != null)
      {
        localObject = c.a((a)localObject);
        return localObject;
      }
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get mediated ad.", localRemoteException);
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ta.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */