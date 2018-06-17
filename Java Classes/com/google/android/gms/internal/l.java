package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.d;

public final class l
  extends d<f>
{
  public l()
  {
    super("com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl");
  }
  
  public final c a(Context paramContext, tj paramtj)
  {
    try
    {
      a locala = com.google.android.gms.a.c.Q(paramContext);
      paramContext = ((f)R(paramContext)).a(locala, paramtj);
      if (paramContext == null) {
        return null;
      }
      paramtj = paramContext.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
      if ((paramtj instanceof c)) {
        return (c)paramtj;
      }
      paramContext = new e(paramContext);
      return paramContext;
    }
    catch (RemoteException paramContext)
    {
      af.d("Could not get remote RewardedVideoAd.", paramContext);
      return null;
    }
    catch (com.google.android.gms.a.e paramContext)
    {
      for (;;) {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */