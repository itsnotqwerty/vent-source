package com.google.android.gms.common.api.internal;

import android.os.Message;
import java.util.concurrent.locks.Lock;

abstract class v
  implements Runnable
{
  private v(l paraml) {}
  
  protected abstract void nn();
  
  public void run()
  {
    this.aEm.aDD.lock();
    try
    {
      boolean bool = Thread.interrupted();
      if (bool) {
        return;
      }
      nn();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      ad localad = this.aEm.aDW;
      Message localMessage = localad.aEP.obtainMessage(2, localRuntimeException);
      localad.aEP.sendMessage(localMessage);
      return;
    }
    finally
    {
      this.aEm.aDD.unlock();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */