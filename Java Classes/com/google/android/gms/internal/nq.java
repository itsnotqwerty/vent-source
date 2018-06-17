package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.c;
import com.google.android.gms.a.d;
import com.google.android.gms.a.e;

public final class nq
  extends d<oz>
{
  public nq()
  {
    super("com.google.android.gms.ads.AdManagerCreatorImpl");
  }
  
  public final ow a(Context paramContext, nu paramnu, String paramString, tj paramtj, int paramInt)
  {
    try
    {
      a locala = c.Q(paramContext);
      paramContext = ((oz)R(paramContext)).a(locala, paramnu, paramString, paramtj, paramInt);
      if (paramContext == null) {
        return null;
      }
      paramnu = paramContext.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
      if ((paramnu instanceof ow)) {
        return (ow)paramnu;
      }
      paramContext = new oy(paramContext);
      return paramContext;
    }
    catch (RemoteException paramContext)
    {
      af.b("Could not create remote AdManager.", paramContext);
      return null;
    }
    catch (e paramContext)
    {
      for (;;) {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/nq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */