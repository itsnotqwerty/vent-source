package com.layer.sdk.internal.lsdkk;

import com.b.a.m;
import com.b.a.n;
import com.layer.a.b.a;
import com.layer.a.c.c;
import com.layer.a.c.c.a;
import com.layer.a.c.c.b;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.lsdkj.e;
import com.layer.sdk.internal.lsdkj.e.a;
import com.layer.sdk.internal.lsdkj.g;
import com.layer.sdk.internal.lsdkj.g.a;
import com.layer.sdk.internal.lsdkk.lsdka.b;
import com.layer.sdk.internal.lsdkk.lsdka.b.b;
import com.layer.sdk.services.LayerReceiver;
import com.layer.sdk.services.LayerReceiver.Listener;
import com.layer.sdk.services.LayerReceiver.ServiceEvent;
import com.layer.sdk.services.LayerReceiver.ServiceEvent.Type;
import java.io.IOException;
import java.net.SocketException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class d
  implements n, com.layer.sdk.internal.lsdkk.lsdka.b.a, LayerReceiver.Listener
{
  private static final k.a d = k.a(d.class);
  private static final com.layer.a.a.b.a e;
  protected final b a;
  final AtomicReference<e> b = new AtomicReference(null);
  final AtomicReference<g> c = new AtomicReference(null);
  private final Object f = new Object();
  private volatile boolean g = false;
  private a h = null;
  private final a i = new q.a("ConnectionExecutor", 15L, TimeUnit.SECONDS, 10);
  private final com.layer.b.d.k j;
  private final AtomicBoolean k;
  private final AtomicBoolean l;
  private final AtomicBoolean m;
  
  static
  {
    com.layer.a.a.b.a locala = new com.layer.a.a.b.a();
    locala.bpD = 600000;
    e = locala;
  }
  
  public d(com.layer.b.d.k paramk, a parama)
  {
    this.m = new AtomicBoolean(parama.a());
    this.j = paramk;
    paramk.a(this);
    this.h = parama;
    boolean bool = a();
    this.a = new b(bool);
    this.l = new AtomicBoolean(bool);
    this.k = new AtomicBoolean(bool);
    this.a.a(this);
  }
  
  private void a(AtomicReference<? extends com.layer.a.c.d> paramAtomicReference)
  {
    while (paramAtomicReference.get() != null) {
      try
      {
        TimeUnit.MILLISECONDS.sleep(10L);
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
  
  public void a(m paramm, IOException paramIOException)
  {
    if (this.g) {}
    while ((paramIOException instanceof SocketException)) {
      return;
    }
    this.a.e();
  }
  
  public void a(b paramb)
  {
    if (this.g) {
      return;
    }
    h();
  }
  
  protected boolean a()
  {
    Integer localInteger = this.j.g();
    return (localInteger != null) && (localInteger.intValue() > 0);
  }
  
  public void b()
  {
    if (this.g) {
      return;
    }
    LayerReceiver.register(this);
    this.k.set(true);
    if (this.l.get())
    {
      k.a(d, "Already connected");
      this.h.a(false);
      return;
    }
    if (!this.m.get())
    {
      k.a(d, "Ignoring connect. No network connection available");
      this.h.a(new LayerException(LayerException.Type.NOT_CONNECTED, "No network connection available"));
      return;
    }
    this.a.a();
  }
  
  public void b(b paramb)
  {
    if (this.g) {
      return;
    }
    this.l.set(true);
    this.h.a(true);
  }
  
  public void c()
  {
    if (this.g) {
      return;
    }
    this.k.set(false);
    j();
    this.a.b();
    LayerReceiver.unregister(this);
  }
  
  public void c(b paramb)
  {
    if (this.g) {}
    do
    {
      return;
      this.l.set(false);
      this.h.b(true);
    } while (!this.k.get());
    b();
  }
  
  public void d(b paramb)
  {
    if (this.g) {
      return;
    }
    i();
  }
  
  public boolean d()
  {
    return this.k.get();
  }
  
  public void e(b paramb)
  {
    if (this.g) {
      return;
    }
    this.l.set(false);
    this.h.b(true);
  }
  
  public boolean e()
  {
    return this.l.get();
  }
  
  public boolean f()
  {
    return this.a.q() == b.b.c;
  }
  
  public void g()
  {
    synchronized (this.f)
    {
      this.g = true;
      j();
      q.a(this.i);
      q.b(this.i);
      this.h = null;
      LayerReceiver.unregister(this);
      return;
    }
  }
  
  protected boolean h()
  {
    Object localObject;
    StringBuilder localStringBuilder;
    if (k.a(2))
    {
      localObject = d;
      localStringBuilder = new StringBuilder("Begin connection task launch attempt. Task in progress: ");
      if (this.b.get() == null) {
        break label124;
      }
    }
    label124:
    for (boolean bool = true;; bool = false)
    {
      k.a(localObject, bool);
      a(this.b);
      localObject = new e(e.wo(), new c.a()new e.a
      {
        public final void a(c paramAnonymousc) {}
        
        public final void a(c paramAnonymousc, long paramAnonymousLong, Throwable paramAnonymousThrowable)
        {
          if (k.a(4))
          {
            if (paramAnonymousThrowable == null) {
              k.c(d.wA(), "Retrying connection in " + paramAnonymousLong + " ms...");
            }
          }
          else {
            return;
          }
          k.b(d.wA(), "Retrying connection in " + paramAnonymousLong + " ms due to: " + paramAnonymousThrowable.getMessage(), paramAnonymousThrowable);
        }
        
        public final void a(c paramAnonymousc, c.b paramAnonymousb, Throwable paramAnonymousThrowable)
        {
          if (k.a(6))
          {
            if (paramAnonymousThrowable != null) {
              break label100;
            }
            k.e(d.wA(), "Failed to connect (" + paramAnonymousb + ")");
          }
          for (;;)
          {
            try
            {
              d.this.a.d();
              int i = d.3.b[paramAnonymousb.ordinal()];
              switch (i)
              {
              default: 
                return;
              }
            }
            finally
            {
              label100:
              d.this.b.set(null);
            }
            k.d(d.wA(), "Failed to connect (" + paramAnonymousb + ") due to: " + paramAnonymousThrowable.getMessage(), paramAnonymousThrowable);
            continue;
            if (!d.a(d.this))
            {
              d.b(d.this).a(new LayerException(LayerException.Type.CANNOT_CONNECT_TO_HOST, "Cancelled", paramAnonymousThrowable));
              continue;
              if (!d.a(d.this))
              {
                d.b(d.this).a(new LayerException(LayerException.Type.CANNOT_CONNECT_TO_HOST, "Too many retries", paramAnonymousThrowable));
                continue;
                if (!d.a(d.this)) {
                  d.b(d.this).a(new LayerException(LayerException.Type.CANNOT_CONNECT_TO_HOST, paramAnonymousThrowable));
                }
              }
            }
          }
        }
        
        public final void b(c paramAnonymousc)
        {
          try
          {
            d.this.a.c();
            return;
          }
          finally
          {
            d.this.b.set(null);
          }
        }
      }, new e.a(this.j));
      if (!this.b.compareAndSet(null, localObject)) {
        break;
      }
      if (k.a(2)) {
        k.a(d, "Attempting to connect");
      }
      this.i.execute((Runnable)localObject);
      return true;
    }
    if (k.a(2)) {
      k.a(d, "Connect task is in flight, skipping this request");
    }
    return false;
  }
  
  protected boolean i()
  {
    a(this.c);
    g localg = new g(new com.layer.a.c.b.a()new g.a
    {
      public final void c(Throwable paramAnonymousThrowable)
      {
        try
        {
          d.this.a.f();
          return;
        }
        finally
        {
          d.this.c.set(null);
        }
      }
      
      public final void wp()
      {
        try
        {
          d.this.a.f();
          return;
        }
        finally
        {
          d.this.c.set(null);
        }
      }
    }, new g.a(this.j));
    if (this.c.compareAndSet(null, localg))
    {
      if (k.a(2)) {
        k.a(d, "Attempting to disconnect");
      }
      this.i.execute(localg);
      return true;
    }
    return false;
  }
  
  protected void j()
  {
    e locale = (e)this.b.get();
    if (locale != null) {
      locale.a(true);
    }
  }
  
  public void onServiceEvent(LayerReceiver.ServiceEvent paramServiceEvent)
  {
    if (this.g) {}
    do
    {
      return;
      if (k.a(2)) {
        k.a(d, paramServiceEvent.getType().toString());
      }
      switch (3.bqe[paramServiceEvent.getType().ordinal()])
      {
      default: 
        return;
      case 1: 
        this.m.set(true);
      }
    } while (!this.k.get());
    b();
    return;
    this.m.set(false);
    this.a.e();
  }
  
  public static abstract interface a
  {
    public abstract void a(LayerException paramLayerException);
    
    public abstract void a(boolean paramBoolean);
    
    public abstract boolean a();
    
    public abstract void b(boolean paramBoolean);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */