package com.google.firebase.iid;

import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

final class u
{
  final m bfC;
  final Messenger bfp;
  
  u(IBinder paramIBinder)
    throws RemoteException
  {
    String str = paramIBinder.getInterfaceDescriptor();
    if ("android.os.IMessenger".equals(str))
    {
      this.bfp = new Messenger(paramIBinder);
      this.bfC = null;
      return;
    }
    if ("com.google.android.gms.iid.IMessengerCompat".equals(str))
    {
      this.bfC = new m(paramIBinder);
      this.bfp = null;
      return;
    }
    paramIBinder = String.valueOf(str);
    if (paramIBinder.length() != 0) {}
    for (paramIBinder = "Invalid interface descriptor: ".concat(paramIBinder);; paramIBinder = new String("Invalid interface descriptor: "))
    {
      Log.w("MessengerIpcClient", paramIBinder);
      throw new RemoteException();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */