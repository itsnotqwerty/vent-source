package com.layer.sdk.internal.lsdkc;

import android.net.Uri;
import com.layer.sdk.internal.lsdkk.j.b;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.o;
import com.layer.sdk.listeners.LayerProgressListener;
import com.layer.sdk.listeners.LayerProgressListener.Operation;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class b
{
  private static final k.a a = k.a(b.class);
  private final o b;
  private final ConcurrentHashMap<Uri, a> c = new ConcurrentHashMap();
  private final com.layer.sdk.internal.lsdkk.j<LayerProgressListener> d = new com.layer.sdk.internal.lsdkk.j();
  private final ConcurrentHashMap<Uri, com.layer.sdk.internal.lsdkk.j<LayerProgressListener>> e = new ConcurrentHashMap();
  private final Object f = new Object();
  private volatile boolean g = false;
  
  public b(o paramo)
  {
    this.b = paramo;
  }
  
  public void a()
  {
    synchronized (this.f)
    {
      if (this.g) {
        return;
      }
      this.g = true;
      Iterator localIterator = this.e.entrySet().iterator();
      if (localIterator.hasNext()) {
        ((com.layer.sdk.internal.lsdkk.j)((Map.Entry)localIterator.next()).getValue()).a();
      }
    }
    this.d.a();
    this.c.clear();
  }
  
  public void a(Uri paramUri, LayerProgressListener paramLayerProgressListener)
  {
    if (this.g) {}
    while (paramLayerProgressListener == null) {
      return;
    }
    if (paramUri == null)
    {
      this.d.a(paramLayerProgressListener);
      return;
    }
    this.e.putIfAbsent(paramUri, new com.layer.sdk.internal.lsdkk.j());
    ((com.layer.sdk.internal.lsdkk.j)this.e.get(paramUri)).a(paramLayerProgressListener);
  }
  
  public void a(final com.layer.sdk.internal.lsdkd.lsdka.j paramj, final LayerProgressListener.Operation paramOperation)
  {
    if (this.g) {}
    do
    {
      return;
      if (k.a(2)) {
        k.a(a, "MessagePart " + paramj.getId() + " started " + paramOperation + ". MessagPart : " + paramj);
      }
      paramOperation = new j.b() {};
      this.d.a(this.b, paramOperation);
      paramj = (com.layer.sdk.internal.lsdkk.j)this.e.get(paramj.getId());
    } while (paramj == null);
    paramj.a(this.b, paramOperation);
  }
  
  public void a(final com.layer.sdk.internal.lsdkd.lsdka.j paramj, final LayerProgressListener.Operation paramOperation, long paramLong1, final long paramLong2)
  {
    if (this.g) {
      return;
    }
    Uri localUri = paramj.getId();
    a locala = (a)this.c.get(localUri);
    if (locala == null)
    {
      this.c.putIfAbsent(localUri, new a(Long.valueOf(0L), Long.valueOf(Math.min(paramLong1, Math.max(1L, paramLong1 / 100L)))));
      locala = (a)this.c.get(localUri);
    }
    for (;;)
    {
      int i;
      if (paramLong2 == paramLong1)
      {
        this.c.remove(localUri);
        i = 1;
      }
      for (;;)
      {
        if (i == 0) {
          break label226;
        }
        locala.a(Long.valueOf(paramLong2));
        paramOperation = new j.b() {};
        this.d.a(this.b, paramOperation);
        paramj = (com.layer.sdk.internal.lsdkk.j)this.e.get(paramj.getId());
        if (paramj == null) {
          break;
        }
        paramj.a(this.b, paramOperation);
        return;
        if (locala.a().longValue() > paramLong2) {
          i = 1;
        } else if (paramLong2 - locala.a().longValue() >= locala.b().longValue()) {
          i = 1;
        } else {
          i = 0;
        }
      }
      label226:
      break;
    }
  }
  
  public void a(final com.layer.sdk.internal.lsdkd.lsdka.j paramj, final LayerProgressListener.Operation paramOperation, final Throwable paramThrowable)
  {
    if (this.g) {}
    do
    {
      return;
      if (k.a(6)) {
        k.d(a, "MessagePart " + paramj.getId() + " failed " + paramOperation + " . MessagePart : " + paramj, paramThrowable);
      }
      paramOperation = new j.b() {};
      this.d.a(this.b, paramOperation);
      paramj = (com.layer.sdk.internal.lsdkk.j)this.e.get(paramj.getId());
    } while (paramj == null);
    paramj.a(this.b, paramOperation);
  }
  
  public void b(Uri paramUri, LayerProgressListener paramLayerProgressListener)
  {
    if (this.g) {}
    do
    {
      do
      {
        return;
      } while (paramLayerProgressListener == null);
      if (paramUri == null)
      {
        this.d.b(paramLayerProgressListener);
        return;
      }
      paramUri = (com.layer.sdk.internal.lsdkk.j)this.e.get(paramUri);
    } while (paramUri == null);
    paramUri.b(paramLayerProgressListener);
  }
  
  public void b(final com.layer.sdk.internal.lsdkd.lsdka.j paramj, final LayerProgressListener.Operation paramOperation)
  {
    if (this.g) {}
    do
    {
      return;
      if (k.a(2)) {
        k.a(a, "MessagePart " + paramj.getId() + " completed " + paramOperation + " : MessagePart : " + paramj);
      }
      paramOperation = new j.b() {};
      this.d.a(this.b, paramOperation);
      paramj = (com.layer.sdk.internal.lsdkk.j)this.e.get(paramj.getId());
    } while (paramj == null);
    paramj.a(this.b, paramOperation);
  }
  
  public static class a
  {
    public Long a;
    public final Long b;
    
    public a(Long paramLong1, Long paramLong2)
    {
      this.a = paramLong1;
      this.b = paramLong2;
    }
    
    public Long a()
    {
      return this.a;
    }
    
    public void a(Long paramLong)
    {
      this.a = paramLong;
    }
    
    public Long b()
    {
      return this.b;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkc/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */