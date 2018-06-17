package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.stats.a;
import java.util.HashMap;
import java.util.Set;

final class j
  extends h
  implements Handler.Callback
{
  private final Context aCq;
  private final HashMap<i, k> aHu = new HashMap();
  private final a aHv;
  private final long aHw;
  private final long aHx;
  private final Handler mHandler;
  
  j(Context paramContext)
  {
    this.aCq = paramContext.getApplicationContext();
    this.mHandler = new Handler(paramContext.getMainLooper(), this);
    this.aHv = a.oz();
    this.aHw = 5000L;
    this.aHx = 300000L;
  }
  
  protected final boolean a(i parami, ServiceConnection paramServiceConnection)
  {
    ae.g(paramServiceConnection, "ServiceConnection must not be null");
    for (;;)
    {
      k localk;
      synchronized (this.aHu)
      {
        localk = (k)this.aHu.get(parami);
        if (localk == null)
        {
          localk = new k(this, parami);
          localk.a(paramServiceConnection);
          localk.ob();
          this.aHu.put(parami, localk);
          parami = localk;
          boolean bool = parami.aHz;
          return bool;
        }
        this.mHandler.removeMessages(0, parami);
        if (localk.b(paramServiceConnection))
        {
          parami = String.valueOf(parami);
          throw new IllegalStateException(String.valueOf(parami).length() + 81 + "Trying to bind a GmsServiceConnection that was already connected before.  config=" + parami);
        }
      }
      localk.a(paramServiceConnection);
      switch (localk.mState)
      {
      case 1: 
        paramServiceConnection.onServiceConnected(localk.aHs, localk.aHA);
        parami = localk;
        break;
      case 2: 
        localk.ob();
        parami = localk;
        break;
      default: 
        parami = localk;
      }
    }
  }
  
  protected final void b(i parami, ServiceConnection paramServiceConnection)
  {
    ae.g(paramServiceConnection, "ServiceConnection must not be null");
    k localk;
    synchronized (this.aHu)
    {
      localk = (k)this.aHu.get(parami);
      if (localk == null)
      {
        parami = String.valueOf(parami);
        throw new IllegalStateException(String.valueOf(parami).length() + 50 + "Nonexistent connection status for service config: " + parami);
      }
    }
    if (!localk.b(paramServiceConnection))
    {
      parami = String.valueOf(parami);
      throw new IllegalStateException(String.valueOf(parami).length() + 76 + "Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + parami);
    }
    localk.aHy.remove(paramServiceConnection);
    if (localk.oc())
    {
      parami = this.mHandler.obtainMessage(0, parami);
      this.mHandler.sendMessageDelayed(parami, this.aHw);
    }
  }
  
  public final boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      return false;
    case 0: 
      synchronized (this.aHu)
      {
        paramMessage = (i)paramMessage.obj;
        ??? = (k)this.aHu.get(paramMessage);
        if ((??? != null) && (((k)???).oc()))
        {
          if (((k)???).aHz)
          {
            ((k)???).aHC.mHandler.removeMessages(1, ((k)???).aHB);
            ((k)???).aHC.aCq.unbindService((ServiceConnection)???);
            ((k)???).aHz = false;
            ((k)???).mState = 2;
          }
          this.aHu.remove(paramMessage);
        }
        return true;
      }
    }
    for (;;)
    {
      synchronized (this.aHu)
      {
        i locali = (i)paramMessage.obj;
        k localk = (k)this.aHu.get(locali);
        if ((localk != null) && (localk.mState == 3))
        {
          paramMessage = String.valueOf(locali);
          Log.wtf("GmsClientSupervisor", String.valueOf(paramMessage).length() + 47 + "Timeout waiting for ServiceConnection callback " + paramMessage, new Exception());
          ??? = localk.aHs;
          paramMessage = (Message)???;
          if (??? == null) {
            paramMessage = locali.aHs;
          }
          if (paramMessage == null)
          {
            paramMessage = new ComponentName(locali.aHr, "unknown");
            localk.onServiceDisconnected(paramMessage);
          }
        }
        else
        {
          return true;
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */