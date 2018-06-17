package io.intercom.a.c.a;

import android.os.Looper;

public abstract interface i
{
  public static final i cTO = new i()
  {
    public final void a(b paramAnonymousb) {}
  };
  public static final i cTP = new i()
  {
    public final void a(b paramAnonymousb)
    {
      if (Looper.myLooper() != Looper.getMainLooper()) {
        throw new IllegalStateException("Event bus " + paramAnonymousb + " accessed from non-main thread " + Looper.myLooper());
      }
    }
  };
  
  public abstract void a(b paramb);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/c/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */