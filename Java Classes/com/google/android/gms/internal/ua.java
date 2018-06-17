package com.google.android.gms.internal;

import android.os.RemoteException;

public final class ua
  extends pq
{
  private volatile ps bcS;
  private final Object mLock = new Object();
  
  public final void a(ps paramps)
    throws RemoteException
  {
    synchronized (this.mLock)
    {
      this.bcS = paramps;
      return;
    }
  }
  
  public final void aC(boolean paramBoolean)
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public final boolean isMuted()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public final void pause()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public final void play()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public final boolean tA()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public final int tu()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public final float tv()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public final float tw()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public final float tx()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public final boolean ty()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public final ps tz()
    throws RemoteException
  {
    synchronized (this.mLock)
    {
      ps localps = this.bcS;
      return localps;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ua.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */