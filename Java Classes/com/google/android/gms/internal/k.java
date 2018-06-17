package com.google.android.gms.internal;

import android.os.RemoteException;

public final class k
  implements com.google.android.gms.ads.reward.a
{
  private final a aKN;
  
  public k(a parama)
  {
    this.aKN = parama;
  }
  
  public final String getType()
  {
    if (this.aKN == null) {
      return null;
    }
    try
    {
      String str = this.aKN.getType();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not forward getType to RewardItem", localRemoteException);
    }
    return null;
  }
  
  public final int mC()
  {
    if (this.aKN == null) {
      return 0;
    }
    try
    {
      int i = this.aKN.mC();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not forward getAmount to RewardItem", localRemoteException);
    }
    return 0;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */