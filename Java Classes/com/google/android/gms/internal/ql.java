package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class ql
  extends d
{
  private h bcg;
  
  public final void a(h paramh)
    throws RemoteException
  {
    this.bcg = paramh;
  }
  
  public final void a(n paramn)
    throws RemoteException
  {
    af.e("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
    w.aKT.post(new qm(this));
  }
  
  public final void aq(boolean paramBoolean)
    throws RemoteException
  {}
  
  public final void b(a parama)
    throws RemoteException
  {}
  
  public final void c(a parama)
    throws RemoteException
  {}
  
  public final void d(a parama)
    throws RemoteException
  {}
  
  public final void destroy()
    throws RemoteException
  {}
  
  public final String getMediationAdapterClassName()
    throws RemoteException
  {
    return null;
  }
  
  public final boolean isLoaded()
    throws RemoteException
  {
    return false;
  }
  
  public final void pause()
    throws RemoteException
  {}
  
  public final void resume()
    throws RemoteException
  {}
  
  public final void setUserId(String paramString)
    throws RemoteException
  {}
  
  public final void show()
    throws RemoteException
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ql.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */