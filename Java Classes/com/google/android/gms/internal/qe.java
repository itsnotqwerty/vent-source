package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.c;
import com.google.android.gms.a.d;
import com.google.android.gms.a.e;

public final class qe
  extends d<pn>
{
  public qe()
  {
    super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
  }
  
  public final pk al(Context paramContext)
  {
    try
    {
      Object localObject = c.Q(paramContext);
      paramContext = ((pn)R(paramContext)).p((a)localObject);
      if (paramContext == null) {
        return null;
      }
      localObject = paramContext.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
      if ((localObject instanceof pk)) {
        return (pk)localObject;
      }
      paramContext = new pm(paramContext);
      return paramContext;
    }
    catch (RemoteException paramContext)
    {
      af.d("Could not get remote MobileAdsSettingManager.", paramContext);
      return null;
    }
    catch (e paramContext)
    {
      af.d("Could not get remote MobileAdsSettingManager.", paramContext);
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/qe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */