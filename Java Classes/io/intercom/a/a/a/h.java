package io.intercom.a.a.a;

import android.support.v4.g.k.a;
import io.intercom.a.a.a.c.a.c.a;
import io.intercom.a.a.a.c.b.s;
import io.intercom.a.a.a.c.c.n;
import io.intercom.a.a.a.c.c.o;
import io.intercom.a.a.a.c.c.p;
import io.intercom.a.a.a.c.k;
import io.intercom.a.a.a.c.l;
import io.intercom.a.a.a.f.b;
import io.intercom.a.a.a.f.c;
import io.intercom.a.a.a.i.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class h
{
  private final p cFW = new p(this.cGf);
  public final io.intercom.a.a.a.f.a cFX = new io.intercom.a.a.a.f.a();
  private final io.intercom.a.a.a.f.e cFY = new io.intercom.a.a.a.f.e();
  public final io.intercom.a.a.a.f.f cFZ = new io.intercom.a.a.a.f.f();
  public final io.intercom.a.a.a.c.a.d cGa = new io.intercom.a.a.a.c.a.d();
  private final io.intercom.a.a.a.c.d.f.e cGb = new io.intercom.a.a.a.c.d.f.e();
  final b cGc = new b();
  private final io.intercom.a.a.a.f.d cGd = new io.intercom.a.a.a.f.d();
  private final c cGe = new c();
  private final k.a<List<Throwable>> cGf = io.intercom.a.a.a.i.a.a.JW();
  
  public h()
  {
    ArrayList localArrayList = new ArrayList(Arrays.asList(new String[] { "Gif", "Bitmap", "BitmapDrawable" }));
    localArrayList.add(0, "legacy_prepend_all");
    localArrayList.add("legacy_append");
    this.cFY.D(localArrayList);
  }
  
  public final List<io.intercom.a.a.a.c.f> Hz()
  {
    List localList = this.cGc.Jt();
    if (localList.isEmpty()) {
      throw new b();
    }
    return localList;
  }
  
  public final <Data, TResource, Transcode> s<Data, TResource, Transcode> a(Class<Data> paramClass, Class<TResource> paramClass1, Class<Transcode> paramClass2)
  {
    ??? = this.cGe.d(paramClass, paramClass1, paramClass2);
    Object localObject1 = ???;
    Object localObject3;
    if (??? == null)
    {
      localObject1 = ???;
      if (!this.cGe.c(paramClass, paramClass1, paramClass2))
      {
        localObject1 = new ArrayList();
        ??? = this.cFY.h(paramClass, paramClass1).iterator();
        while (((Iterator)???).hasNext())
        {
          localObject3 = (Class)((Iterator)???).next();
          Iterator localIterator = this.cGb.d((Class)localObject3, paramClass2).iterator();
          while (localIterator.hasNext())
          {
            Class localClass = (Class)localIterator.next();
            ((List)localObject1).add(new io.intercom.a.a.a.c.b.h(paramClass, (Class)localObject3, localClass, this.cFY.g(paramClass, (Class)localObject3), this.cGb.c((Class)localObject3, localClass), this.cGf));
          }
        }
        if (!((List)localObject1).isEmpty()) {
          break label228;
        }
        localObject1 = null;
      }
    }
    for (;;)
    {
      localObject3 = this.cGe;
      synchronized (((c)localObject3).cPC)
      {
        ((c)localObject3).cPC.put(new g(paramClass, paramClass1, paramClass2), localObject1);
        return (s<Data, TResource, Transcode>)localObject1;
        label228:
        localObject1 = new s(paramClass, paramClass1, paramClass2, (List)localObject1, this.cGf);
      }
    }
  }
  
  public final h a(c.a<?> parama)
  {
    this.cGa.b(parama);
    return this;
  }
  
  public final <Data> h a(Class<Data> paramClass, io.intercom.a.a.a.c.d<Data> paramd)
  {
    this.cFX.b(paramClass, paramd);
    return this;
  }
  
  public final <TResource> h a(Class<TResource> paramClass, l<TResource> paraml)
  {
    this.cFZ.b(paramClass, paraml);
    return this;
  }
  
  public final <Model, Data> h a(Class<Model> paramClass, Class<Data> paramClass1, o<Model, Data> paramo)
  {
    this.cFW.b(paramClass, paramClass1, paramo);
    return this;
  }
  
  public final <TResource, Transcode> h a(Class<TResource> paramClass, Class<Transcode> paramClass1, io.intercom.a.a.a.c.d.f.d<TResource, Transcode> paramd)
  {
    this.cGb.b(paramClass, paramClass1, paramd);
    return this;
  }
  
  public final <Data, TResource> h a(Class<Data> paramClass, Class<TResource> paramClass1, k<Data, TResource> paramk)
  {
    a("legacy_append", paramClass, paramClass1, paramk);
    return this;
  }
  
  public final <Data, TResource> h a(String paramString, Class<Data> paramClass, Class<TResource> paramClass1, k<Data, TResource> paramk)
  {
    this.cFY.a(paramString, paramk, paramClass, paramClass1);
    return this;
  }
  
  public final <Model> List<n<Model, ?>> ap(Model paramModel)
  {
    List localList = this.cFW.ap(paramModel);
    if (localList.isEmpty()) {
      throw new c(paramModel);
    }
    return localList;
  }
  
  public final <Model, TResource, Transcode> List<Class<?>> b(Class<Model> paramClass, Class<TResource> paramClass1, Class<Transcode> arg3)
  {
    Object localObject1 = this.cGd.f(paramClass, paramClass1);
    if (localObject1 == null)
    {
      localObject1 = new ArrayList();
      Object localObject2 = this.cFW.F(paramClass).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Class)((Iterator)localObject2).next();
        localObject3 = this.cFY.h((Class)localObject3, paramClass1).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          Class localClass = (Class)((Iterator)localObject3).next();
          if ((!this.cGb.d(localClass, ???).isEmpty()) && (!((List)localObject1).contains(localClass))) {
            ((List)localObject1).add(localClass);
          }
        }
      }
      localObject2 = this.cGd;
      Object localObject3 = Collections.unmodifiableList((List)localObject1);
      synchronized (((io.intercom.a.a.a.f.d)localObject2).cPF)
      {
        ((io.intercom.a.a.a.f.d)localObject2).cPF.put(new g(paramClass, paramClass1), localObject3);
        return (List<Class<?>>)localObject1;
      }
    }
    return (List<Class<?>>)localObject1;
  }
  
  public static class a
    extends RuntimeException
  {
    public a(String paramString)
    {
      super();
    }
  }
  
  public static final class b
    extends h.a
  {
    public b()
    {
      super();
    }
  }
  
  public static final class c
    extends h.a
  {
    public c(Class<?> paramClass1, Class<?> paramClass2)
    {
      super();
    }
    
    public c(Object paramObject)
    {
      super();
    }
  }
  
  public static final class d
    extends h.a
  {
    public d(Class<?> paramClass)
    {
      super();
    }
  }
  
  public static final class e
    extends h.a
  {
    public e(Class<?> paramClass)
    {
      super();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */