package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.a;

public final class av
  extends am
{
  private IBinder aIv;
  
  public av(al paramal, int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    super(paramal, paramInt, paramBundle);
    this.aIv = paramIBinder;
  }
  
  protected final void k(a parama)
  {
    if (al.h(this.aIr) != null) {
      al.h(this.aIr).a(parama);
    }
    this.aIr.a(parama);
  }
  
  protected final boolean ot()
  {
    IInterface localIInterface;
    do
    {
      try
      {
        String str1 = this.aIv.getInterfaceDescriptor();
        if (!this.aIr.oj().equals(str1))
        {
          String str2 = this.aIr.oj();
          Log.e("GmsClient", String.valueOf(str2).length() + 34 + String.valueOf(str1).length() + "service descriptor mismatch: " + str2 + " vs. " + str1);
          return false;
        }
      }
      catch (RemoteException localRemoteException)
      {
        Log.w("GmsClient", "service probably died");
        return false;
      }
      localIInterface = this.aIr.h(this.aIv);
    } while ((localIInterface == null) || ((!al.a(this.aIr, 2, 4, localIInterface)) && (!al.a(this.aIr, 3, 4, localIInterface))));
    al.a(this.aIr, null);
    if (al.f(this.aIr) != null) {
      al.f(this.aIr).nY();
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */