package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.a;
import java.util.concurrent.atomic.AtomicInteger;

final class ap
  extends Handler
{
  public ap(al paramal, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  private static void a(Message paramMessage)
  {
    ((aq)paramMessage.obj).unregister();
  }
  
  private static boolean b(Message paramMessage)
  {
    return (paramMessage.what == 2) || (paramMessage.what == 1) || (paramMessage.what == 7);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    if (this.aIr.aIo.get() != paramMessage.arg1)
    {
      if (b(paramMessage)) {
        a(paramMessage);
      }
      return;
    }
    if (((paramMessage.what == 1) || (paramMessage.what == 7) || (paramMessage.what == 4) || (paramMessage.what == 5)) && (!this.aIr.isConnecting()))
    {
      a(paramMessage);
      return;
    }
    if (paramMessage.what == 4)
    {
      al.a(this.aIr, new a(paramMessage.arg2));
      if ((al.c(this.aIr)) && (!al.d(this.aIr)))
      {
        al.a(this.aIr, 3);
        return;
      }
      if (al.e(this.aIr) != null) {}
      for (paramMessage = al.e(this.aIr);; paramMessage = new a(8))
      {
        this.aIr.aId.d(paramMessage);
        this.aIr.a(paramMessage);
        return;
      }
    }
    if (paramMessage.what == 5)
    {
      if (al.e(this.aIr) != null) {}
      for (paramMessage = al.e(this.aIr);; paramMessage = new a(8))
      {
        this.aIr.aId.d(paramMessage);
        this.aIr.a(paramMessage);
        return;
      }
    }
    Object localObject;
    if (paramMessage.what == 3)
    {
      if ((paramMessage.obj instanceof PendingIntent)) {}
      for (localObject = (PendingIntent)paramMessage.obj;; localObject = null)
      {
        paramMessage = new a(paramMessage.arg2, (PendingIntent)localObject);
        this.aIr.aId.d(paramMessage);
        this.aIr.a(paramMessage);
        return;
      }
    }
    if (paramMessage.what == 6)
    {
      al.a(this.aIr, 5);
      if (al.f(this.aIr) != null) {
        al.f(this.aIr).cG(paramMessage.arg2);
      }
      localObject = this.aIr;
      ((al)localObject).aHU = paramMessage.arg2;
      ((al)localObject).aHV = System.currentTimeMillis();
      al.a(this.aIr, 5, 1, null);
      return;
    }
    if ((paramMessage.what == 2) && (!this.aIr.isConnected()))
    {
      a(paramMessage);
      return;
    }
    if (b(paramMessage))
    {
      ((aq)paramMessage.obj).ou();
      return;
    }
    int i = paramMessage.what;
    Log.wtf("GmsClient", 45 + "Don't know how to handle message: " + i, new Exception());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */