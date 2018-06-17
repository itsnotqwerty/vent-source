package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public final class i
  implements ServiceConnection
{
  public boolean aJJ = false;
  public final BlockingQueue<IBinder> aJK = new LinkedBlockingQueue();
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.aJK.add(paramIBinder);
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */