package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.mr;
import com.google.android.gms.internal.mt;

public final class p
  extends mr
  implements n
{
  p(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.common.internal.IAccountAccessor");
  }
  
  public final Account mV()
    throws RemoteException
  {
    Parcel localParcel = a(2, sH());
    Account localAccount = (Account)mt.a(localParcel, Account.CREATOR);
    localParcel.recycle();
    return localAccount;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */