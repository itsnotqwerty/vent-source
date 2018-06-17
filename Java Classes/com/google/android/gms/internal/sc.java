package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.ads.b.c.a;
import com.google.android.gms.ads.b.c.b;
import com.google.android.gms.ads.b.h;
import com.google.android.gms.ads.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class sc
  extends h
{
  private final i aAc = new i();
  private final List<c.b> bcD = new ArrayList();
  private final c.a bcF;
  private final sa bcG;
  private final rm bcH;
  
  public sc(sa paramsa)
  {
    this.bcG = paramsa;
    try
    {
      paramsa = this.bcG.lD();
      if (paramsa != null)
      {
        Iterator localIterator = paramsa.iterator();
        if (localIterator.hasNext())
        {
          paramsa = localIterator.next();
          if (!(paramsa instanceof IBinder)) {
            break label219;
          }
          paramsa = (IBinder)paramsa;
          if (paramsa == null) {
            break label219;
          }
          IInterface localIInterface = paramsa.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
          if (!(localIInterface instanceof rj)) {
            break label207;
          }
          paramsa = (rj)localIInterface;
        }
      }
      while (paramsa != null)
      {
        this.bcD.add(new rm(paramsa));
        break;
        try
        {
          paramsa = this.bcG.tN();
          if (paramsa != null)
          {
            paramsa = new rm(paramsa);
            this.bcH = paramsa;
            paramsa = (sa)localObject;
          }
        }
        catch (RemoteException paramsa)
        {
          try
          {
            for (;;)
            {
              if (this.bcG.tM() != null) {
                paramsa = new ri(this.bcG.tM());
              }
              this.bcF = paramsa;
              return;
              paramsa = new rl(paramsa);
              break;
              paramsa = null;
              break;
              paramsa = null;
            }
            paramsa = paramsa;
            af.c("Failed to get image.", paramsa);
            paramsa = null;
          }
          catch (RemoteException paramsa)
          {
            for (;;)
            {
              af.c("Failed to get attribution info.", paramsa);
              paramsa = (sa)localObject;
            }
          }
        }
      }
    }
    catch (RemoteException paramsa)
    {
      af.c("Failed to get image.", paramsa);
    }
  }
  
  private final a tJ()
  {
    try
    {
      a locala = this.bcG.tJ();
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
      if (this.bcG.getVideoController() != null) {
        this.aAc.a(this.bcG.getVideoController());
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
      String str = this.bcG.lN();
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
      String str = this.bcG.getBody();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get body.", localRemoteException);
    }
    return null;
  }
  
  public final CharSequence lG()
  {
    try
    {
      String str = this.bcG.lO();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get call to action.", localRemoteException);
    }
    return null;
  }
  
  public final c.b lK()
  {
    return this.bcH;
  }
  
  public final CharSequence lL()
  {
    try
    {
      String str = this.bcG.lP();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.c("Failed to get attribution.", localRemoteException);
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/sc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */