package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;

public final class a
  extends o
{
  public static Account a(n paramn)
  {
    Account localAccount = null;
    long l;
    if (paramn != null) {
      l = Binder.clearCallingIdentity();
    }
    try
    {
      localAccount = paramn.mV();
      return localAccount;
    }
    catch (RemoteException paramn)
    {
      Log.w("AccountAccessor", "Remote account accessor probably died");
      return null;
    }
    finally
    {
      Binder.restoreCallingIdentity(l);
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    throw new NoSuchMethodError();
  }
  
  public final Account mV()
  {
    throw new NoSuchMethodError();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */