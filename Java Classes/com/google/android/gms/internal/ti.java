package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.ads.mediation.e;
import com.google.ads.mediation.f;
import com.google.android.gms.ads.mediation.customevent.a;
import com.google.android.gms.ads.mediation.customevent.c;
import java.util.Map;

public final class ti
  extends tk
{
  public Map<Class<? extends Object>, Object> bcR;
  
  private final <NETWORK_EXTRAS extends f, SERVER_PARAMETERS extends e> tm cV(String paramString)
    throws RemoteException
  {
    try
    {
      Object localObject = Class.forName(paramString, false, ti.class.getClassLoader());
      if (com.google.ads.mediation.b.class.isAssignableFrom((Class)localObject))
      {
        localObject = (com.google.ads.mediation.b)((Class)localObject).newInstance();
        return new uh((com.google.ads.mediation.b)localObject, (f)this.bcR.get(((com.google.ads.mediation.b)localObject).getAdditionalParametersType()));
      }
      if (com.google.android.gms.ads.mediation.b.class.isAssignableFrom((Class)localObject)) {
        return new uc((com.google.android.gms.ads.mediation.b)((Class)localObject).newInstance());
      }
      af.bt(String.valueOf(paramString).length() + 64 + "Could not instantiate mediation adapter: " + paramString + " (not a valid adapter).");
      throw new RemoteException();
    }
    catch (Throwable localThrowable) {}
    return cW(paramString);
  }
  
  private final tm cW(String paramString)
    throws RemoteException
  {
    do
    {
      try
      {
        af.br("Reflection failed, retrying using direct instantiation");
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(paramString)) {
          return new uc(new AdMobAdapter());
        }
        if ("com.google.ads.mediation.AdUrlAdapter".equals(paramString))
        {
          uc localuc = new uc(new AdUrlAdapter());
          return localuc;
        }
      }
      catch (Throwable localThrowable)
      {
        af.d(String.valueOf(paramString).length() + 43 + "Could not instantiate mediation adapter: " + paramString + ". ", localThrowable);
        throw new RemoteException();
      }
      if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(paramString)) {
        return new uc(new com.google.android.gms.ads.mediation.customevent.CustomEventAdapter());
      }
    } while (!"com.google.ads.mediation.customevent.CustomEventAdapter".equals(paramString));
    Object localObject = new com.google.ads.mediation.customevent.CustomEventAdapter();
    localObject = new uh((com.google.ads.mediation.b)localObject, (c)this.bcR.get(((com.google.ads.mediation.customevent.CustomEventAdapter)localObject).getAdditionalParametersType()));
    return (tm)localObject;
  }
  
  public final tm cT(String paramString)
    throws RemoteException
  {
    return cV(paramString);
  }
  
  public final boolean cU(String paramString)
    throws RemoteException
  {
    try
    {
      boolean bool = a.class.isAssignableFrom(Class.forName(paramString, false, ti.class.getClassLoader()));
      return bool;
    }
    catch (Throwable localThrowable)
    {
      af.bt(String.valueOf(paramString).length() + 80 + "Could not load custom event implementation class: " + paramString + ", assuming old implementation.");
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ti.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */