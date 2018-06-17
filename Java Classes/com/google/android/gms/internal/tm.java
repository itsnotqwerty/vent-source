package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import java.util.List;

public abstract interface tm
  extends IInterface
{
  public abstract void a(a parama, nr paramnr, String paramString1, q paramq, String paramString2)
    throws RemoteException;
  
  public abstract void a(a parama, nr paramnr, String paramString, tp paramtp)
    throws RemoteException;
  
  public abstract void a(a parama, nr paramnr, String paramString1, String paramString2, tp paramtp)
    throws RemoteException;
  
  public abstract void a(a parama, nr paramnr, String paramString1, String paramString2, tp paramtp, rd paramrd, List<String> paramList)
    throws RemoteException;
  
  public abstract void a(a parama, nu paramnu, nr paramnr, String paramString, tp paramtp)
    throws RemoteException;
  
  public abstract void a(a parama, nu paramnu, nr paramnr, String paramString1, String paramString2, tp paramtp)
    throws RemoteException;
  
  public abstract void a(a parama, q paramq, List<String> paramList)
    throws RemoteException;
  
  public abstract void a(nr paramnr, String paramString)
    throws RemoteException;
  
  public abstract void a(nr paramnr, String paramString1, String paramString2)
    throws RemoteException;
  
  public abstract void aq(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void destroy()
    throws RemoteException;
  
  public abstract Bundle getInterstitialAdapterInfo()
    throws RemoteException;
  
  public abstract pp getVideoController()
    throws RemoteException;
  
  public abstract boolean isInitialized()
    throws RemoteException;
  
  public abstract void pause()
    throws RemoteException;
  
  public abstract void resume()
    throws RemoteException;
  
  public abstract void s(a parama)
    throws RemoteException;
  
  public abstract void showInterstitial()
    throws RemoteException;
  
  public abstract void showVideo()
    throws RemoteException;
  
  public abstract a tS()
    throws RemoteException;
  
  public abstract tr tT()
    throws RemoteException;
  
  public abstract tu tU()
    throws RemoteException;
  
  public abstract Bundle tV()
    throws RemoteException;
  
  public abstract boolean tW()
    throws RemoteException;
  
  public abstract sd tX()
    throws RemoteException;
  
  public abstract tx tY()
    throws RemoteException;
  
  public abstract Bundle zzmr()
    throws RemoteException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/tm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */