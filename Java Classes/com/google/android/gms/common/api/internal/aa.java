package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

final class aa
  extends Handler
{
  aa(y paramy, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      int i = paramMessage.what;
      Log.w("GoogleApiClientImpl", 31 + "Unknown message id: " + i);
      return;
    case 1: 
      y.b(this.aEM);
      return;
    }
    y.a(this.aEM);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */