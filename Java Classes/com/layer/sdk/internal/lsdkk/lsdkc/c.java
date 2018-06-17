package com.layer.sdk.internal.lsdkk.lsdkc;

import com.layer.sdk.internal.lsdkk.lsdkb.a;
import com.layer.sdk.listeners.LayerTypingIndicatorListener.TypingIndicator;
import java.util.UUID;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

public class c
  implements b.a
{
  private final AtomicBoolean a = new AtomicBoolean(true);
  private final String b;
  private final UUID c;
  private final b d;
  private final long e;
  private final long f;
  private final long g;
  private final a h;
  private final com.layer.sdk.internal.lsdkk.lsdkb.b i;
  private final a j;
  private a k;
  
  public c(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor, String paramString, UUID paramUUID, long paramLong1, long paramLong2, long paramLong3)
  {
    this.g = paramLong1;
    this.f = paramLong2;
    this.e = paramLong3;
    this.b = paramString;
    this.c = paramUUID;
    this.d = new b();
    this.d.a(this);
    this.h = new d(paramScheduledThreadPoolExecutor, this.a, this.d);
    this.i = new b(paramScheduledThreadPoolExecutor, this.a, this.d);
    this.j = new c(paramScheduledThreadPoolExecutor, this.a, this.d);
  }
  
  protected void a()
  {
    this.a.set(false);
    this.j.a();
    this.h.a();
  }
  
  public void a(b paramb)
  {
    if (!this.a.get()) {}
    do
    {
      return;
      this.k.a(this, this.c, LayerTypingIndicatorListener.TypingIndicator.STARTED);
    } while (!e());
    this.i.a(this.f);
  }
  
  public void a(a parama)
  {
    this.k = parama;
  }
  
  public void a(LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator)
  {
    if (!this.a.get()) {
      return;
    }
    this.d.a(paramTypingIndicator);
  }
  
  public void b(b paramb)
  {
    if (!this.a.get()) {}
    do
    {
      return;
      this.k.a(this, this.c, LayerTypingIndicatorListener.TypingIndicator.PAUSED);
    } while (!e());
    this.i.a(this.f);
  }
  
  public boolean b()
  {
    return this.a.get();
  }
  
  public String c()
  {
    return this.b;
  }
  
  public void c(b paramb)
  {
    if (!this.a.get()) {
      return;
    }
    this.k.a(this, this.c, LayerTypingIndicatorListener.TypingIndicator.FINISHED);
    this.a.set(false);
    this.h.a();
    this.i.a();
    this.j.a();
    this.k.a(this);
  }
  
  public UUID d()
  {
    return this.c;
  }
  
  public void d(b paramb)
  {
    if (!this.a.get()) {
      return;
    }
    this.h.a(this.g);
  }
  
  public void e(b paramb)
  {
    if (!this.a.get()) {
      return;
    }
    this.j.a(this.e);
  }
  
  public boolean e()
  {
    return this.b == null;
  }
  
  public void f(b paramb)
  {
    if (!this.a.get()) {
      return;
    }
    this.h.a();
    this.j.a();
  }
  
  public void g(b paramb)
  {
    if (!this.a.get()) {
      return;
    }
    this.k.a(this, this.c, LayerTypingIndicatorListener.TypingIndicator.STARTED);
  }
  
  public void h(b paramb)
  {
    if (!this.a.get()) {
      return;
    }
    this.k.a(this, this.c, LayerTypingIndicatorListener.TypingIndicator.PAUSED);
  }
  
  public static abstract interface a
  {
    public abstract void a(c paramc);
    
    public abstract void a(c paramc, UUID paramUUID, LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator);
  }
  
  public static class b
    extends com.layer.sdk.internal.lsdkk.lsdkb.b
  {
    final AtomicBoolean a;
    final b bsV;
    
    public b(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor, AtomicBoolean paramAtomicBoolean, b paramb)
    {
      super();
      this.a = paramAtomicBoolean;
      this.bsV = paramb;
    }
    
    public void run()
    {
      if (!this.a.get()) {
        return;
      }
      this.bsV.c();
    }
  }
  
  public static class c
    extends a
  {
    final AtomicBoolean a;
    final b bsV;
    
    public c(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor, AtomicBoolean paramAtomicBoolean, b paramb)
    {
      super();
      this.a = paramAtomicBoolean;
      this.bsV = paramb;
    }
    
    public void run()
    {
      if (!this.a.get()) {
        return;
      }
      this.bsV.b();
    }
  }
  
  public static class d
    extends a
  {
    final AtomicBoolean a;
    final b bsV;
    
    public d(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor, AtomicBoolean paramAtomicBoolean, b paramb)
    {
      super();
      this.a = paramAtomicBoolean;
      this.bsV = paramb;
    }
    
    public void run()
    {
      if (!this.a.get()) {
        return;
      }
      this.bsV.a();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/lsdkc/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */