package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.j;
import java.lang.ref.WeakReference;

final class bv
  extends Handler
{
  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      int i = paramMessage.what;
      Log.e("TransformedResultImpl", 70 + "TransformationResultHandler received unknown message type: " + i);
      return;
    case 0: 
      Object localObject3 = (g)paramMessage.obj;
      paramMessage = this.aGm.aDi;
      if (localObject3 == null) {}
      for (;;)
      {
        try
        {
          this.aGm.aGf.e(new Status(13, "Transform returned null"));
          return;
        }
        finally {}
        if (!(localObject3 instanceof bl)) {
          break;
        }
        this.aGm.aGf.e(((bl)localObject3).aCx);
      }
      bt localbt = this.aGm.aGf;
      for (;;)
      {
        synchronized (localbt.aDi)
        {
          localbt.aGh = ((g)localObject3);
          if ((localbt.aGe != null) || (localbt.aGg != null))
          {
            localObject3 = (f)localbt.aDk.get();
            if ((!localbt.aGk) && (localbt.aGe != null) && (localObject3 != null))
            {
              ((f)localObject3).a(localbt);
              localbt.aGk = true;
            }
            if (localbt.aGi == null) {
              break label260;
            }
            localbt.f(localbt.aGi);
          }
        }
        label260:
        if (localj.aGh != null) {
          localj.aGh.a(localj);
        }
      }
    }
    ??? = (RuntimeException)paramMessage.obj;
    paramMessage = String.valueOf(((RuntimeException)???).getMessage());
    if (paramMessage.length() != 0) {}
    for (paramMessage = "Runtime exception on the transformation worker thread: ".concat(paramMessage);; paramMessage = new String("Runtime exception on the transformation worker thread: "))
    {
      Log.e("TransformedResultImpl", paramMessage);
      throw ((Throwable)???);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/bv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */