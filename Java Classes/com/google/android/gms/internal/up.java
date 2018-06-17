package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public abstract interface up
  extends IInterface
{
  public abstract void lw()
    throws RemoteException;
  
  public abstract void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
    throws RemoteException;
  
  public abstract void onBackPressed()
    throws RemoteException;
  
  public abstract void onCreate(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void onDestroy()
    throws RemoteException;
  
  public abstract void onPause()
    throws RemoteException;
  
  public abstract void onRestart()
    throws RemoteException;
  
  public abstract void onResume()
    throws RemoteException;
  
  public abstract void onSaveInstanceState(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void onStart()
    throws RemoteException;
  
  public abstract void onStop()
    throws RemoteException;
  
  public abstract boolean ub()
    throws RemoteException;
  
  public abstract void w(a parama)
    throws RemoteException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/up.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */