package com.layer.sdk.internal.lsdki.lsdkc;

import android.database.sqlite.SQLiteDatabase;
import com.layer.sdk.LayerClient.Options.HistoricSyncPolicy;
import com.layer.sdk.internal.lsdkd.lsdka.o;
import com.layer.sdk.internal.lsdkd.lsdka.o.a;
import com.layer.sdk.internal.lsdkd.lsdka.o.b;
import com.layer.sdk.internal.lsdki.a.e;
import com.layer.sdk.internal.lsdki.lsdkc.lsdkb.g;
import com.layer.sdk.internal.lsdki.lsdkc.lsdkb.l;
import com.layer.sdk.internal.lsdkk.k.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class c
  implements com.layer.a.a.a
{
  public static final Long a = Long.valueOf(15000L);
  private static final k.a b = com.layer.sdk.internal.lsdkk.k.a(c.class);
  private d c;
  private final Object d = new Object();
  private final ConcurrentLinkedQueue<e> e;
  private final com.layer.a.b.a f;
  private final a g;
  private final c h;
  private final ConcurrentLinkedQueue<com.layer.a.a> i;
  private final AtomicReference<List<com.layer.b.d.h>> j = new AtomicReference(null);
  
  public c(com.layer.a.b.a parama, a parama1, c paramc)
  {
    this.f = parama;
    this.g = parama1;
    this.h = paramc;
    this.c = d.a;
    this.i = new ConcurrentLinkedQueue();
    this.e = new ConcurrentLinkedQueue();
  }
  
  private d a(d paramd)
  {
    synchronized (this.d)
    {
      d locald = this.c;
      this.c = paramd;
      paramd = this.e.iterator();
      while (paramd.hasNext())
      {
        ??? = (e)paramd.next();
        try
        {
          ((e)???).a(this, locald, this.c);
        }
        catch (Exception localException) {}
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(b, localException.getMessage(), localException);
        }
      }
    }
    return this.c;
  }
  
  public static Map<com.layer.b.d.h, Long> a(String paramString, b paramb, List<com.layer.b.d.h> paramList)
  {
    HashMap localHashMap = new HashMap();
    if ((paramList == null) || (paramList.isEmpty())) {
      return localHashMap;
    }
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      com.layer.b.d.h localh = (com.layer.b.d.h)localIterator.next();
      if ((localh.c != null) && (localh.c.contains(paramString)))
      {
        if (localh.xp()) {}
        for (paramList = Long.valueOf(localh.f); paramList != null; paramList = null)
        {
          if (localh.bwE != null) {
            break label134;
          }
          throw new IllegalStateException("Stream has no database identifier. Stream: " + localh);
        }
        continue;
        label134:
        Long localLong = paramb.c(localh.bwE);
        if (localLong == null) {
          localHashMap.put(localh, null);
        } else if (!localLong.equals(paramList)) {
          localHashMap.put(localh, Long.valueOf(localLong.longValue() - a.longValue()));
        }
      }
    }
    return localHashMap;
  }
  
  private void a(com.layer.a.a parama)
  {
    this.i.add(parama);
    parama.a(this);
    parama.a();
  }
  
  private void a(com.layer.sdk.internal.lsdke.lsdka.a.a parama, Set<UUID> paramSet)
    throws Exception
  {
    b localb = this.g.b();
    parama = localb.a(parama, paramSet);
    ArrayList localArrayList = new ArrayList(paramSet.size());
    Iterator localIterator = parama.iterator();
    while (localIterator.hasNext())
    {
      com.layer.sdk.internal.lsdke.lsdka.a locala = (com.layer.sdk.internal.lsdke.lsdka.a)localIterator.next();
      int n = 0;
      int m;
      if (locala.e == null) {
        m = locala.d.intValue();
      }
      int i1;
      for (int k = locala.d.intValue();; k = locala.f.intValue())
      {
        parama = localb.a(locala.a, locala.b, Integer.valueOf(m), Integer.valueOf(k));
        for (;;)
        {
          i1 = k;
          if (!parama.contains(Integer.valueOf(m - 1))) {
            break;
          }
          m -= 1;
          n = 1;
        }
        m = locala.e.intValue();
      }
      while (parama.contains(Integer.valueOf(i1)))
      {
        i1 += 1;
        n = 1;
      }
      Integer localInteger = locala.g;
      parama = null;
      if ((locala.g == null) || (locala.h == null) || (locala.g.intValue() > locala.h.intValue())) {
        parama = localb.a(locala);
      }
      k = n;
      paramSet = localInteger;
      if (parama != null) {
        if (locala.g != null)
        {
          k = n;
          paramSet = localInteger;
          if (locala.g.intValue() <= parama.intValue()) {}
        }
        else
        {
          k = 1;
          paramSet = parama;
        }
      }
      if (k != 0)
      {
        locala.e = Integer.valueOf(m);
        locala.f = Integer.valueOf(i1);
        locala.g = paramSet;
        localArrayList.add(locala);
        if ((paramSet != null) && (m > paramSet.intValue())) {
          this.h.b().set(true);
        }
      }
    }
    if (!localArrayList.isEmpty()) {
      localb.a(localArrayList);
    }
  }
  
  private void a(b paramb)
  {
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      try
      {
        locale.a(this, paramb);
      }
      catch (Exception localException) {}
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.d(b, "Exception", localException);
      }
    }
  }
  
  private d c()
  {
    synchronized (this.d)
    {
      d locald = this.c;
      return locald;
    }
  }
  
  private void d()
  {
    Object localObject = c();
    switch (1.bqe[localObject.ordinal()])
    {
    default: 
      throw new IllegalStateException("Cannot execute a new TaskMaster while " + localObject);
    case 1: 
      if (this.g.y())
      {
        a(d.r);
        a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.h(this.g.h(), this.g.i(), this.f, this.g.b(), this.g.j(), (LayerClient.Options.HistoricSyncPolicy)this.g.w().get(), this.g.x(), this.g.u(), this.g.v(), this.h));
        return;
      }
      a(d.b);
      a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.b(this.f, this.g.b(), this.g.j()));
      return;
    case 2: 
      a(d.d);
      a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.k(this.f, this.g.b(), this.g.j()));
      return;
    case 3: 
      a(d.f);
      a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.a(this.f, this.g.b(), this.g.j()));
      return;
    case 4: 
      a(d.h);
      a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.i(this.f, this.g.i(), this.g.b(), this.g.j()));
      return;
    case 5: 
      a(d.j);
      a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.m(this.f, this.g.b(), this.g.j()));
      return;
    case 6: 
      a(d.l);
      a(new l(this.f, this.g.b(), this.g.j()));
      return;
    case 7: 
      a(d.n);
      a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.j(this.f, this.g.b(), this.g.j()));
      return;
    case 8: 
      a(d.p);
      a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.n(this.f, this.g.b(), this.g.j()));
      return;
    case 9: 
      a(d.r);
      a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.h(this.g.h(), this.g.i(), this.f, this.g.b(), this.g.j(), (LayerClient.Options.HistoricSyncPolicy)this.g.w().get(), this.g.x(), this.g.u(), this.g.v(), this.h));
      return;
    case 10: 
      a(d.t);
      localObject = new HashSet();
      Iterator localIterator;
      com.layer.b.d.h localh;
      if (this.g.y())
      {
        localIterator = this.g.b().a(this.g.f().intValue()).iterator();
        while (localIterator.hasNext())
        {
          localh = (com.layer.b.d.h)localIterator.next();
          if (localh.b() != null) {
            ((Set)localObject).add(localh.b());
          }
        }
        this.h.a().set(true);
      }
      for (;;)
      {
        a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.e(this.f, this.g.b(), this.g.j(), (Iterable)localObject));
        return;
        if (this.g.t() == a.e.b)
        {
          if (this.g.e().get() == 2)
          {
            localIterator = this.g.b().n().iterator();
            while (localIterator.hasNext())
            {
              localh = (com.layer.b.d.h)localIterator.next();
              if (localh.b() != null) {
                ((Set)localObject).add(localh.b());
              }
            }
          }
        }
        else
        {
          if (this.g.u().get())
          {
            localIterator = this.g.b().n().iterator();
            while (localIterator.hasNext())
            {
              localh = (com.layer.b.d.h)localIterator.next();
              if (localh.b() != null) {
                ((Set)localObject).add(localh.b());
              }
            }
          }
          ((Set)localObject).addAll((Collection)this.g.v().get());
        }
      }
    case 11: 
      a(d.v);
      localObject = a(this.g.i(), this.g.b(), (List)this.j.get());
      a(new g(this.f, this.g.b(), this.g.j(), (Map)localObject));
      return;
    case 12: 
      if ((this.g.u().get()) || (this.g.z().get()))
      {
        a(d.x);
        a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.d(this.f, this.g.b(), this.g.j()));
        return;
      }
    case 13: 
      a(d.z);
      a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.f(this.f, this.g.j(), this.g.i(), this.g.A().get()));
      return;
    }
    a(d.B);
    a(new com.layer.sdk.internal.lsdki.lsdkc.lsdkb.c(this.f, this.g.b(), this.g.j(), this.g.g().get(), this.g.f().intValue(), this.g.t(), this.g.y(), this.g.x(), this.h));
  }
  
  public c a(e parame)
  {
    this.e.add(parame);
    return this;
  }
  
  public void a()
  {
    d locald = c();
    try
    {
      if (locald != d.a)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(b, "SyncMaster: Cannot execute while in " + locald);
        }
        throw new IllegalStateException("Cannot execute while in " + locald);
      }
    }
    catch (Exception localException)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.d(b, "Failed to schedule task in SyncMaster: " + locald, localException);
      }
      a(new b(this, localException, localException.getMessage()));
      a(d.C);
      return;
    }
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("SyncMaster: Executing " + locald);
    }
    d();
  }
  
  public void a(com.layer.a.a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == Integer.MAX_VALUE)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(b, "onTaskMasterStateChange returned with errors");
      }
      a(d.C);
      break label32;
      break label32;
      break label32;
      break label32;
      break label32;
      break label32;
      break label32;
      break label32;
      break label32;
      break label32;
      break label32;
      break label32;
      break label32;
    }
    label32:
    while (paramInt2 != 3) {
      return;
    }
    for (;;)
    {
      try
      {
        localObject1 = c();
        switch (1.bqe[localObject1.ordinal()])
        {
        case 29: 
          throw new IllegalStateException("Cannot have a TaskMaster state change while " + localObject1);
        }
      }
      catch (Exception parama)
      {
        a(new b(this, parama, parama.getMessage()));
        a(d.C);
        return;
      }
      if (!(parama instanceof com.layer.sdk.internal.lsdki.lsdkc.lsdkb.b)) {
        break;
      }
      a(d.c);
      d();
      return;
      if (!(parama instanceof com.layer.sdk.internal.lsdki.lsdkc.lsdkb.k)) {
        break;
      }
      Object localObject1 = (com.layer.sdk.internal.lsdki.lsdkc.lsdkb.k)parama;
      Object localObject2;
      com.layer.b.d.c localc;
      if (((com.layer.sdk.internal.lsdki.lsdkc.lsdkb.k)localObject1).c() != null)
      {
        parama = new HashSet();
        localObject1 = ((com.layer.sdk.internal.lsdki.lsdkc.lsdkb.k)localObject1).c().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Iterable)((com.layer.sdk.internal.lsdki.lsdkc.lsdka.j)((Iterator)localObject1).next()).h();
          if (localObject2 != null)
          {
            localObject2 = ((Iterable)localObject2).iterator();
            while (((Iterator)localObject2).hasNext())
            {
              localc = (com.layer.b.d.c)((Iterator)localObject2).next();
              if (localc.bvS != null) {
                parama.add(localc.bvS);
              }
            }
          }
        }
        a(com.layer.sdk.internal.lsdke.lsdka.a.a.a, parama);
      }
      a(d.e);
      d();
      return;
      if (!(parama instanceof com.layer.sdk.internal.lsdki.lsdkc.lsdkb.a)) {
        break;
      }
      a(d.g);
      d();
      return;
      if (!(parama instanceof com.layer.sdk.internal.lsdki.lsdkc.lsdkb.i)) {
        break;
      }
      a(d.i);
      d();
      return;
      if (!(parama instanceof com.layer.sdk.internal.lsdki.lsdkc.lsdkb.m)) {
        break;
      }
      localObject1 = (com.layer.sdk.internal.lsdki.lsdkc.lsdkb.m)parama;
      if (((com.layer.sdk.internal.lsdki.lsdkc.lsdkb.m)localObject1).c() != null)
      {
        parama = new HashSet();
        localObject1 = ((com.layer.sdk.internal.lsdki.lsdkc.lsdkb.m)localObject1).c().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Iterable)((com.layer.sdk.internal.lsdki.lsdkc.lsdka.j)((Iterator)localObject1).next()).h();
          if (localObject2 != null)
          {
            localObject2 = ((Iterable)localObject2).iterator();
            while (((Iterator)localObject2).hasNext())
            {
              localc = (com.layer.b.d.c)((Iterator)localObject2).next();
              if (localc.bvS != null) {
                parama.add(localc.bvS);
              }
            }
          }
        }
        a(com.layer.sdk.internal.lsdke.lsdka.a.a.a, parama);
      }
      a(d.k);
      d();
      return;
      if (!(parama instanceof l)) {
        break;
      }
      a(d.m);
      d();
      return;
      if (!(parama instanceof com.layer.sdk.internal.lsdki.lsdkc.lsdkb.j)) {
        break;
      }
      a(d.o);
      d();
      return;
      if (!(parama instanceof com.layer.sdk.internal.lsdki.lsdkc.lsdkb.n)) {
        break;
      }
      a(d.q);
      d();
      return;
      if (!(parama instanceof com.layer.sdk.internal.lsdki.lsdkc.lsdkb.h)) {
        break;
      }
      this.j.set(((com.layer.sdk.internal.lsdki.lsdkc.lsdkb.h)parama).b());
      a(d.s);
      d();
      return;
      if (!(parama instanceof com.layer.sdk.internal.lsdki.lsdkc.lsdkb.e)) {
        break;
      }
      localObject1 = (com.layer.sdk.internal.lsdki.lsdkc.lsdkb.e)parama;
      if (((com.layer.sdk.internal.lsdki.lsdkc.lsdkb.e)localObject1).c() != null)
      {
        parama = new HashSet();
        localObject1 = ((com.layer.sdk.internal.lsdki.lsdkc.lsdkb.e)localObject1).c().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (UUID)((com.layer.sdk.internal.lsdki.lsdkc.lsdka.e)((Iterator)localObject1).next()).h();
          if (localObject2 != null) {
            parama.add(localObject2);
          }
        }
        a(com.layer.sdk.internal.lsdke.lsdka.a.a.b, parama);
      }
      a(d.u);
      d();
      return;
      if (!(parama instanceof g)) {
        break;
      }
      a(d.w);
      d();
      return;
      if (!(parama instanceof com.layer.sdk.internal.lsdki.lsdkc.lsdkb.d)) {
        break;
      }
      a(d.y);
      d();
      return;
      if (!(parama instanceof com.layer.sdk.internal.lsdki.lsdkc.lsdkb.f)) {
        break;
      }
      a(d.A);
      d();
      return;
      if (!(parama instanceof com.layer.sdk.internal.lsdki.lsdkc.lsdkb.c)) {
        break;
      }
      localObject1 = (com.layer.sdk.internal.lsdki.lsdkc.lsdkb.c)parama;
      if (((com.layer.sdk.internal.lsdki.lsdkc.lsdkb.c)localObject1).c() != null)
      {
        parama = new HashSet();
        localObject1 = ((com.layer.sdk.internal.lsdki.lsdkc.lsdkb.c)localObject1).c().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Iterable)((com.layer.sdk.internal.lsdki.lsdkc.lsdka.c)((Iterator)localObject1).next()).h();
          if (localObject2 != null)
          {
            localObject2 = ((Iterable)localObject2).iterator();
            while (((Iterator)localObject2).hasNext())
            {
              localc = (com.layer.b.d.c)((Iterator)localObject2).next();
              if (localc.bvS != null) {
                parama.add(localc.bvS);
              }
            }
          }
        }
        a(com.layer.sdk.internal.lsdke.lsdka.a.a.a, parama);
      }
      a(d.C);
      return;
    }
  }
  
  public void a(com.layer.a.a parama, com.layer.a.c.d paramd, com.layer.a.c.e parame)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(6)) {
      com.layer.sdk.internal.lsdkk.k.d(b, "Error in TaskMaster", parame);
    }
    a(new b(parame, parame.getCause(), parame.getMessage()));
  }
  
  public com.layer.a.b.a b()
  {
    return this.f;
  }
  
  public static abstract interface a
  {
    public abstract AtomicBoolean A();
    
    public abstract c.b b();
    
    public abstract AtomicInteger e();
    
    public abstract Integer f();
    
    public abstract AtomicInteger g();
    
    public abstract UUID h();
    
    public abstract String i();
    
    public abstract com.layer.b.d.k j();
    
    public abstract a.e t();
    
    public abstract AtomicBoolean u();
    
    public abstract AtomicReference<HashSet<UUID>> v();
    
    public abstract AtomicReference<LayerClient.Options.HistoricSyncPolicy> w();
    
    public abstract AtomicReference<com.layer.sdk.internal.lsdki.b> x();
    
    public abstract boolean y();
    
    public abstract AtomicBoolean z();
  }
  
  public static abstract interface b
  {
    public abstract Integer a(com.layer.sdk.internal.lsdke.f paramf);
    
    public abstract Integer a(com.layer.sdk.internal.lsdke.lsdka.a parama);
    
    public abstract List<com.layer.b.d.h> a(int paramInt);
    
    public abstract List<o> a(o.b paramb, Long paramLong, o.a parama);
    
    public abstract List<com.layer.sdk.internal.lsdke.lsdka.a> a(com.layer.sdk.internal.lsdke.lsdka.a.a parama, Iterable<UUID> paramIterable);
    
    public abstract List<com.layer.b.d.h> a(Iterable<com.layer.b.d.h> paramIterable, com.layer.sdk.internal.lsdke.lsdkc.c.a parama);
    
    public abstract Set<Integer> a(com.layer.sdk.internal.lsdke.lsdka.a.a parama, UUID paramUUID, Integer paramInteger1, Integer paramInteger2);
    
    public abstract void a(int paramInt, List<com.layer.b.f.a.d> paramList);
    
    public abstract void a(com.layer.b.d.c paramc);
    
    public abstract void a(com.layer.b.d.h paramh, com.layer.sdk.internal.lsdke.lsdkc.c.a parama);
    
    public abstract void a(com.layer.b.d.h paramh, boolean paramBoolean);
    
    public abstract void a(o.b paramb, Long paramLong, long paramLong1, String paramString, boolean paramBoolean);
    
    public abstract void a(Iterable<com.layer.sdk.internal.lsdke.lsdka.a> paramIterable);
    
    public abstract void a(Collection<com.layer.sdk.internal.lsdkd.lsdka.e> paramCollection);
    
    public abstract void a(HashMap<UUID, Integer> paramHashMap);
    
    public abstract void a(UUID paramUUID, Long paramLong);
    
    public abstract com.layer.b.d.h b(com.layer.b.d.h paramh, com.layer.sdk.internal.lsdke.lsdkc.c.a parama);
    
    public abstract com.layer.b.d.h b(Long paramLong);
    
    public abstract void b(Iterable<com.layer.b.d.c> paramIterable);
    
    public abstract void b(Collection<com.layer.sdk.internal.lsdkd.lsdka.e> paramCollection);
    
    public abstract void b(HashMap<UUID, Integer> paramHashMap);
    
    public abstract Long c(Long paramLong);
    
    public abstract void c(Iterable<com.layer.b.d.i> paramIterable);
    
    public abstract void d(Iterable<o> paramIterable);
    
    public abstract void d(Long paramLong);
    
    public abstract SQLiteDatabase e();
    
    public abstract void e(Long paramLong);
    
    public abstract void f(Long paramLong);
    
    public abstract void g(Long paramLong);
    
    public abstract void i(SQLiteDatabase paramSQLiteDatabase);
    
    public abstract List<com.layer.b.d.i> j();
    
    public abstract int k();
    
    public abstract List<com.layer.b.d.i> k(SQLiteDatabase paramSQLiteDatabase);
    
    public abstract com.layer.b.d.c l(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract List<com.layer.b.d.c> l();
    
    public abstract List<o> m();
    
    public abstract List<com.layer.b.d.h> n();
    
    public abstract List<com.layer.b.d.h> o();
    
    public abstract List<com.layer.b.d.h> p();
    
    public abstract List<com.layer.sdk.internal.lsdkd.lsdka.e> q();
    
    public abstract LinkedHashSet<com.layer.sdk.internal.lsdkd.lsdka.n> r();
  }
  
  public static abstract interface c
  {
    public abstract AtomicBoolean a();
    
    public abstract AtomicBoolean b();
  }
  
  public static enum d
  {
    private d() {}
  }
  
  public static abstract interface e
  {
    public abstract void a(c paramc, b paramb);
    
    public abstract void a(c paramc, c.d paramd1, c.d paramd2);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */