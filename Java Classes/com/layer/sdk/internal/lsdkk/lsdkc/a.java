package com.layer.sdk.internal.lsdkk.lsdkc;

import com.layer.b.f.c.d;
import com.layer.sdk.listeners.LayerTypingIndicatorListener.TypingIndicator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;

public class a
  implements c.a
{
  private final Object a = new Object();
  private volatile boolean b = false;
  private a c;
  private final ScheduledThreadPoolExecutor d;
  private final long e;
  private final long f;
  private final long g;
  private final long h;
  private final long i;
  private final Map<UUID, c> j = new ConcurrentHashMap();
  private final Map<String, Map<UUID, c>> k = new ConcurrentHashMap();
  
  public a(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor, a parama)
  {
    this(paramScheduledThreadPoolExecutor, parama, 2500L, 2500L, 2500L, 5000L, 5000L);
  }
  
  protected a(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor, a parama, long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5)
  {
    this.d = paramScheduledThreadPoolExecutor;
    this.c = parama;
    this.e = paramLong1;
    this.f = paramLong2;
    this.g = paramLong3;
    this.h = paramLong4;
    this.i = paramLong5;
  }
  
  protected void a()
  {
    synchronized (this.j)
    {
      Iterator localIterator1 = this.j.entrySet().iterator();
      if (localIterator1.hasNext()) {
        ((c)((Map.Entry)localIterator1.next()).getValue()).a();
      }
    }
    this.j.clear();
    for (;;)
    {
      Map.Entry localEntry;
      synchronized (this.k)
      {
        Iterator localIterator2 = this.k.entrySet().iterator();
        if (!localIterator2.hasNext()) {
          break;
        }
        localEntry = (Map.Entry)localIterator2.next();
        Iterator localIterator3 = ((Map)localEntry.getValue()).entrySet().iterator();
        if (localIterator3.hasNext()) {
          ((c)((Map.Entry)localIterator3.next()).getValue()).a();
        }
      }
      ((Map)localEntry.getValue()).clear();
    }
    this.k.clear();
  }
  
  public void a(c paramc)
  {
    if (this.b) {
      return;
    }
    String str = paramc.c();
    if (str == null)
    {
      a(paramc.d());
      return;
    }
    a(str, paramc.d());
  }
  
  public void a(c paramc, UUID paramUUID, LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator)
  {
    if (this.b) {
      return;
    }
    paramc = paramc.c();
    if (paramc == null)
    {
      this.c.b(paramUUID, paramTypingIndicator);
      return;
    }
    this.c.a(paramc, paramUUID, paramTypingIndicator);
  }
  
  protected void a(String paramString, UUID paramUUID)
  {
    synchronized (this.k)
    {
      Map localMap2 = (Map)this.k.get(paramString);
      if (localMap2 == null) {
        return;
      }
      paramUUID = (c)localMap2.remove(paramUUID);
      if (paramUUID != null) {
        paramUUID.a();
      }
      if (localMap2.isEmpty()) {
        this.k.remove(paramString);
      }
      return;
    }
  }
  
  protected void a(String paramString, UUID paramUUID, LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator)
  {
    if (this.b) {
      return;
    }
    for (;;)
    {
      synchronized (this.k)
      {
        Object localObject = (Map)this.k.get(paramString);
        if (localObject == null)
        {
          localObject = new ConcurrentHashMap();
          this.k.put(paramString, localObject);
          c localc2 = (c)((Map)localObject).get(paramUUID);
          c localc1 = localc2;
          if (localc2 == null)
          {
            localc1 = new c(this.d, paramString, paramUUID, this.h, 0L, this.i);
            localc1.a(this);
            ((Map)localObject).put(paramUUID, localc1);
          }
          localc1.a(paramTypingIndicator);
          return;
        }
      }
    }
  }
  
  protected void a(UUID paramUUID)
  {
    paramUUID = (c)this.j.remove(paramUUID);
    if (paramUUID != null) {
      paramUUID.a();
    }
  }
  
  public void a(UUID paramUUID, LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator)
  {
    if (this.b) {}
    while (paramUUID == null) {
      return;
    }
    synchronized (this.j)
    {
      c localc2 = (c)this.j.get(paramUUID);
      c localc1;
      if (localc2 != null)
      {
        localc1 = localc2;
        if (localc2.b()) {}
      }
      else
      {
        localc1 = new c(this.d, null, paramUUID, this.e, this.f, this.g);
        localc1.a(this);
        this.j.put(paramUUID, localc1);
      }
      localc1.a(paramTypingIndicator);
      return;
    }
  }
  
  public boolean a(com.layer.b.d.c paramc)
  {
    if (this.b) {
      return false;
    }
    if (!paramc.t()) {
      return false;
    }
    if (paramc.bzH != 1) {
      return false;
    }
    String str = paramc.c;
    if (str == null) {
      return true;
    }
    UUID localUUID = paramc.bvS;
    if (localUUID == null) {
      return true;
    }
    if (!paramc.xm()) {
      throw new IllegalArgumentException("Typing indicator with no content");
    }
    Iterator localIterator = paramc.bCF.iterator();
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      paramc = (com.layer.b.f.c.a)localIterator.next();
    } while (!paramc.a.equals("application/vnd.layer.messaging.typing-indicator; version=1.0"));
    for (;;)
    {
      if (paramc == null) {
        throw new IllegalArgumentException("Typing indicator with incorrect content type");
      }
      paramc = paramc.yf();
      if ((paramc == null) || (paramc.length == 0)) {
        throw new IllegalArgumentException("Typing indicator with empty content");
      }
      a(str, localUUID, LayerTypingIndicatorListener.TypingIndicator.fromValue(paramc[0]));
      return true;
      paramc = null;
    }
  }
  
  public void b()
  {
    synchronized (this.a)
    {
      this.b = true;
      a();
      return;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString, UUID paramUUID, LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator);
    
    public abstract void b(UUID paramUUID, LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/lsdkc/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */