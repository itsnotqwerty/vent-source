package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.c;
import com.google.android.gms.a.d;
import com.google.android.gms.a.e;

public final class np
  extends d<ou>
{
  public np()
  {
    super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
  }
  
  public final or a(Context paramContext, String paramString, tj paramtj)
  {
    try
    {
      a locala = c.Q(paramContext);
      paramContext = ((ou)R(paramContext)).a(locala, paramString, paramtj);
      if (paramContext == null) {
        return null;
      }
      paramString = paramContext.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
      if ((paramString instanceof or)) {
        return (or)paramString;
      }
      paramContext = new ot(paramContext);
      return paramContext;
    }
    catch (RemoteException paramContext)
    {
      af.d("Could not create remote builder for AdLoader.", paramContext);
      return null;
    }
    catch (e paramContext)
    {
      for (;;) {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/np.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */