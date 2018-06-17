package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;

final class qg
  extends op
{
  private qg(qf paramqf) {}
  
  public final void a(nr paramnr)
    throws RemoteException
  {
    a(paramnr, 1);
  }
  
  public final void a(nr paramnr, int paramInt)
    throws RemoteException
  {
    af.e("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
    w.aKT.post(new qh(this));
  }
  
  public final String getMediationAdapterClassName()
    throws RemoteException
  {
    return null;
  }
  
  public final boolean isLoading()
    throws RemoteException
  {
    return false;
  }
  
  public final String tl()
    throws RemoteException
  {
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/qg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */