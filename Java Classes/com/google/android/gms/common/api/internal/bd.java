package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.ae;

final class bd
  extends Handler
{
  public bd(bc parambc, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    boolean bool = true;
    if (paramMessage.what == 1) {}
    for (;;)
    {
      ae.au(bool);
      Object localObject = this.aFS;
      paramMessage = (bf)paramMessage.obj;
      localObject = ((bc)localObject).aFQ;
      if (localObject != null) {}
      try
      {
        paramMessage.M(localObject);
        return;
      }
      catch (RuntimeException paramMessage)
      {
        throw paramMessage;
      }
      bool = false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/bd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */