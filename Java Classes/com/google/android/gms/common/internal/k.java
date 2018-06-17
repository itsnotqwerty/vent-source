package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.common.stats.a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class k
  implements ServiceConnection
{
  IBinder aHA;
  final i aHB;
  ComponentName aHs;
  final Set<ServiceConnection> aHy;
  boolean aHz;
  int mState;
  
  public k(j paramj, i parami)
  {
    this.aHB = parami;
    this.aHy = new HashSet();
    this.mState = 2;
  }
  
  public final void a(ServiceConnection paramServiceConnection)
  {
    j.d(this.aHC);
    j.c(this.aHC);
    i locali = this.aHB;
    j.c(this.aHC);
    locali.oa();
    this.aHy.add(paramServiceConnection);
  }
  
  public final boolean b(ServiceConnection paramServiceConnection)
  {
    return this.aHy.contains(paramServiceConnection);
  }
  
  public final void ob()
  {
    this.mState = 3;
    j.d(this.aHC);
    Object localObject = j.c(this.aHC);
    i locali = this.aHB;
    j.c(this.aHC);
    this.aHz = a.a((Context)localObject, locali.oa(), this, this.aHB.aHt);
    if (this.aHz)
    {
      localObject = j.b(this.aHC).obtainMessage(1, this.aHB);
      j.b(this.aHC).sendMessageDelayed((Message)localObject, j.e(this.aHC));
      return;
    }
    this.mState = 2;
    try
    {
      j.d(this.aHC);
      j.c(this.aHC).unbindService(this);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
  }
  
  public final boolean oc()
  {
    return this.aHy.isEmpty();
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    synchronized (j.a(this.aHC))
    {
      j.b(this.aHC).removeMessages(1, this.aHB);
      this.aHA = paramIBinder;
      this.aHs = paramComponentName;
      Iterator localIterator = this.aHy.iterator();
      if (localIterator.hasNext()) {
        ((ServiceConnection)localIterator.next()).onServiceConnected(paramComponentName, paramIBinder);
      }
    }
    this.mState = 1;
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    synchronized (j.a(this.aHC))
    {
      j.b(this.aHC).removeMessages(1, this.aHB);
      this.aHA = null;
      this.aHs = paramComponentName;
      Iterator localIterator = this.aHy.iterator();
      if (localIterator.hasNext()) {
        ((ServiceConnection)localIterator.next()).onServiceDisconnected(paramComponentName);
      }
    }
    this.mState = 2;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */