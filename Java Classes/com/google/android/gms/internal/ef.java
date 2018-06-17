package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public abstract interface ef
  extends IInterface
{
  public abstract boolean getBooleanFlagValue(String paramString, boolean paramBoolean, int paramInt)
    throws RemoteException;
  
  public abstract int getIntFlagValue(String paramString, int paramInt1, int paramInt2)
    throws RemoteException;
  
  public abstract long getLongFlagValue(String paramString, long paramLong, int paramInt)
    throws RemoteException;
  
  public abstract String getStringFlagValue(String paramString1, String paramString2, int paramInt)
    throws RemoteException;
  
  public abstract void init(a parama)
    throws RemoteException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ef.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */