package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.ads.b.c.a;
import com.google.android.gms.ads.b.c.b;
import com.google.android.gms.ads.b.g;
import com.google.android.gms.ads.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class rz
  extends g
{
  private final i aAc = new i();
  private final rx bcC;
  private final List<c.b> bcD = new ArrayList();
  private final rm bcE;
  private final c.a bcF;
  
  public rz(rx paramrx)
  {
    this.bcC = paramrx;
    try
    {
      paramrx = this.bcC.lD();
      if (paramrx != null)
      {
        Iterator localIterator = paramrx.iterator();
        if (localIterator.hasNext())
        {
          paramrx = localIterator.next();
          if (!(paramrx instanceof IBinder)) {
            break label219;
          }
          paramrx = (IBinder)paramrx;
          if (paramrx == null) {
            break label219;
          }
          IInterface localIInterface = paramrx.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
          if (!(localIInterface instanceof rj)) {
            break label207;
          }
          paramrx = (rj)localIInterface;
        }
      }
      while (paramrx != null)
      {
        this.bcD.add(new rm(paramrx));
        break;
        try
        {
          paramrx = this.bcC.tK();
          if (paramrx != null)
          {
            paramrx = new rm(paramrx);
            this.bcE = paramrx;
            paramrx = (rx)localObject;
          }
        }
        catch (RemoteException paramrx)
        {
          try
          {
            for (;;)
            {
              if (this.bcC.tM() != null) {
                paramrx = new ri(this.bcC.tM());
              }
              this.bcF = paramrx;
              return;
              paramrx = new rl(paramrx);
              break;
              paramrx = null;
              break;
              paramrx = null;
            }
            paramrx = paramrx;
            af.c("Failed to get image.", paramrx);
            paramrx = null;
          }
          catch (RemoteException paramrx)
          {
            for (;;)
            {
              af.c("Failed to get attribution info.", paramrx);
              paramrx = (rx)localObject;
            }
          }
        }
      }
    }
    catch (RemoteException paramrx)
    {
      af.c("Failed to get image.", paramrx);
    }
  }
  
  private final a tJ()
  {
    try
    {
      a locala = this.bcC.tJ();
      return locala;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to retrieve native ad engine.", localRemoteException);
    }
    return null;
  }
  
  public final i getVideoController()
  {
    try
    {
      if (this.bcC.getVideoController() != null) {
        this.aAc.a(this.bcC.getVideoController());
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
  
  public final CharSequence lC()
  {
    try
    {
      String str = this.bcC.lN();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get headline.", localRemoteException);
    }
    return null;
  }
  
  public final List<c.b> lD()
  {
    return this.bcD;
  }
  
  public final CharSequence lE()
  {
    try
    {
      String str = this.bcC.getBody();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get body.", localRemoteException);
    }
    return null;
  }
  
  public final c.b lF()
  {
    return this.bcE;
  }
  
  public final CharSequence lG()
  {
    try
    {
      String str = this.bcC.lO();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get call to action.", localRemoteException);
    }
    return null;
  }
  
  public final Double lH()
  {
    try
    {
      double d = this.bcC.tL();
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
  
  public final CharSequence lI()
  {
    try
    {
      String str = this.bcC.lQ();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get store", localRemoteException);
    }
    return null;
  }
  
  public final CharSequence lJ()
  {
    try
    {
      String str = this.bcC.lR();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get price.", localRemoteException);
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/rz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */