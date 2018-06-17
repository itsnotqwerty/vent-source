package io.intercom.a.a.a.c.b;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import io.intercom.a.a.a.i.i;

final class x
{
  private boolean cLb;
  private final Handler handler = new Handler(Looper.getMainLooper(), new a());
  
  final void d(u<?> paramu)
  {
    
    if (this.cLb)
    {
      this.handler.obtainMessage(1, paramu).sendToTarget();
      return;
    }
    this.cLb = true;
    paramu.recycle();
    this.cLb = false;
  }
  
  private static final class a
    implements Handler.Callback
  {
    public final boolean handleMessage(Message paramMessage)
    {
      if (paramMessage.what == 1)
      {
        ((u)paramMessage.obj).recycle();
        return true;
      }
      return false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */