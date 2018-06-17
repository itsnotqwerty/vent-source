package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;

public final class at
  implements ServiceConnection
{
  private final int aIu;
  
  public at(al paramal, int paramInt)
  {
    this.aIu = paramInt;
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (paramIBinder == null)
    {
      al.a(this.aIr);
      return;
    }
    synchronized (al.b(this.aIr))
    {
      al localal = this.aIr;
      if (paramIBinder == null) {}
      for (paramComponentName = null;; paramComponentName = (w)paramComponentName)
      {
        al.a(localal, paramComponentName);
        this.aIr.au(0, this.aIu);
        return;
        paramComponentName = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
        if ((paramComponentName == null) || (!(paramComponentName instanceof w))) {
          break;
        }
      }
      paramComponentName = new x(paramIBinder);
    }
  }
  
  public final void onServiceDisconnected(ComponentName arg1)
  {
    synchronized (al.b(this.aIr))
    {
      al.a(this.aIr, null);
      this.aIr.mHandler.sendMessage(this.aIr.mHandler.obtainMessage(6, this.aIu, 1));
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */