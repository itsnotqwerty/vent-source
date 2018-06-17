package com.google.android.gms.internal;

import android.app.Activity;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.c;
import com.google.android.gms.a.d;
import com.google.android.gms.a.e;

public final class uo
  extends d<us>
{
  public uo()
  {
    super("com.google.android.gms.ads.AdOverlayCreatorImpl");
  }
  
  public final up j(Activity paramActivity)
  {
    try
    {
      Object localObject = c.Q(paramActivity);
      paramActivity = ((us)R(paramActivity)).x((a)localObject);
      if (paramActivity == null) {
        return null;
      }
      localObject = paramActivity.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
      if ((localObject instanceof up)) {
        return (up)localObject;
      }
      paramActivity = new ur(paramActivity);
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      af.d("Could not create remote AdOverlay.", paramActivity);
      return null;
    }
    catch (e paramActivity)
    {
      af.d("Could not create remote AdOverlay.", paramActivity);
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/uo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */