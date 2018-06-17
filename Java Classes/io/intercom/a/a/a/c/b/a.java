package io.intercom.a.a.a.c.b;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import io.intercom.a.a.a.i.i;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public final class a
{
  private final boolean cFJ;
  public final Map<io.intercom.a.a.a.c.h, b> cIE = new HashMap();
  o.a cIF;
  ReferenceQueue<o<?>> cIG;
  private Thread cIH;
  volatile boolean cII;
  volatile a cIJ;
  final Handler mainHandler = new Handler(Looper.getMainLooper(), new Handler.Callback()
  {
    public final boolean handleMessage(Message paramAnonymousMessage)
    {
      if (paramAnonymousMessage.what == 1)
      {
        a.this.a((a.b)paramAnonymousMessage.obj);
        return true;
      }
      return false;
    }
  });
  
  a(boolean paramBoolean)
  {
    this.cFJ = paramBoolean;
  }
  
  public final void a(b paramb)
  {
    i.JS();
    this.cIE.remove(paramb.cIL);
    if ((!paramb.cIM) || (paramb.cIN == null)) {
      return;
    }
    o localo = new o(paramb.cIN, true, false);
    localo.a(paramb.cIL, this.cIF);
    this.cIF.b(paramb.cIL, localo);
  }
  
  public final void a(io.intercom.a.a.a.c.h paramh, o<?> paramo)
  {
    if (this.cIG == null)
    {
      this.cIG = new ReferenceQueue();
      this.cIH = new Thread(new Runnable()
      {
        public final void run()
        {
          Process.setThreadPriority(10);
          while (!a.this.cII) {
            try
            {
              Object localObject = (a.b)a.this.cIG.remove();
              a.this.mainHandler.obtainMessage(1, localObject).sendToTarget();
              localObject = a.this.cIJ;
            }
            catch (InterruptedException localInterruptedException)
            {
              Thread.currentThread().interrupt();
            }
          }
        }
      }, "glide-active-resources");
      this.cIH.start();
    }
    paramo = new b(paramh, paramo, this.cIG, this.cFJ);
    paramh = (b)this.cIE.put(paramh, paramo);
    if (paramh != null) {
      paramh.reset();
    }
  }
  
  static abstract interface a {}
  
  public static final class b
    extends WeakReference<o<?>>
  {
    final io.intercom.a.a.a.c.h cIL;
    final boolean cIM;
    u<?> cIN;
    
    b(io.intercom.a.a.a.c.h paramh, o<?> paramo, ReferenceQueue<? super o<?>> paramReferenceQueue, boolean paramBoolean)
    {
      super(paramReferenceQueue);
      this.cIL = ((io.intercom.a.a.a.c.h)io.intercom.a.a.a.i.h.checkNotNull(paramh, "Argument must not be null"));
      if ((paramo.cIM) && (paramBoolean)) {}
      for (paramh = (u)io.intercom.a.a.a.i.h.checkNotNull(paramo.cIN, "Argument must not be null");; paramh = null)
      {
        this.cIN = paramh;
        this.cIM = paramo.cIM;
        return;
      }
    }
    
    final void reset()
    {
      this.cIN = null;
      clear();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */