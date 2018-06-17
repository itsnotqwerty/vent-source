package io.intercom.android.sdk;

import android.os.Handler;
import android.os.Looper;
import io.intercom.a.c.a.b;
import io.intercom.a.c.a.i;

class MainThreadBus
  extends b
{
  private final Handler mainThread = new Handler(Looper.getMainLooper());
  
  MainThreadBus(i parami)
  {
    super(parami);
  }
  
  public void post(final Object paramObject)
  {
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      super.post(paramObject);
      return;
    }
    this.mainThread.post(new Runnable()
    {
      public void run()
      {
        MainThreadBus.this.post(paramObject);
      }
    });
  }
  
  public void register(Object paramObject)
  {
    try
    {
      super.register(paramObject);
      return;
    }
    catch (Exception paramObject) {}
  }
  
  public void unregister(Object paramObject)
  {
    try
    {
      super.unregister(paramObject);
      return;
    }
    catch (Exception paramObject) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/MainThreadBus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */