package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

final class af
  extends Handler
{
  af(ad paramad, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      int i = paramMessage.what;
      Log.w("GACStateManager", 31 + "Unknown message id: " + i);
      return;
    case 1: 
      ((ae)paramMessage.obj).a(this.aEX);
      return;
    }
    throw ((RuntimeException)paramMessage.obj);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */