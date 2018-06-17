package com.layer.sdk.internal.lsdkk;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public class j<T>
  implements Iterable<T>
{
  private final k.a a = k.a(j.class);
  private final HashSet<d<T>> b = new HashSet();
  private final ReferenceQueue<T> c = new ReferenceQueue();
  
  private d<T> c(T paramT)
  {
    synchronized (this.b)
    {
      d();
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
      {
        d locald = (d)localIterator.next();
        if ((locald instanceof WeakReference))
        {
          WeakReference localWeakReference = (WeakReference)locald;
          if (localWeakReference.isEnqueued())
          {
            this.b.remove(locald);
            localWeakReference.clear();
          }
        }
        if (locald.equals(paramT)) {
          return locald;
        }
      }
      return null;
    }
  }
  
  private void d()
  {
    synchronized (this.b)
    {
      Reference localReference = this.c.poll();
      if (localReference != null)
      {
        if (k.a(2)) {
          k.a(this.a, "Removing dead reference to " + localReference);
        }
        this.b.remove((f)localReference);
      }
    }
  }
  
  public void a()
  {
    synchronized (this.b)
    {
      Iterator localIterator = this.b.iterator();
      if (localIterator.hasNext()) {
        ((d)localIterator.next()).clear();
      }
    }
    this.b.clear();
    d();
  }
  
  public void a(o paramo, final b<T> paramb)
  {
    Iterator localIterator = iterator();
    while (localIterator.hasNext())
    {
      final Object localObject = localIterator.next();
      Runnable local1 = new Runnable()
      {
        public final void run()
        {
          paramb.a(localObject);
        }
      };
      if ((localObject instanceof a)) {
        paramo.b(local1);
      } else {
        paramo.a(local1);
      }
    }
  }
  
  public void a(T paramT)
  {
    if (paramT == null) {
      throw new IllegalArgumentException("Cannot add a null object");
    }
    for (;;)
    {
      synchronized (this.b)
      {
        d();
        d locald = c(paramT);
        if (locald != null)
        {
          if (locald.get() == paramT) {
            return;
          }
          locald.clear();
          this.b.remove(locald);
        }
        if ((paramT instanceof e))
        {
          this.b.add(new f(paramT, this.c));
          return;
        }
      }
      this.b.add(new c(paramT));
    }
  }
  
  public void b(T paramT)
  {
    if (paramT == null) {
      return;
    }
    synchronized (this.b)
    {
      d();
      paramT = c(paramT);
      if (paramT != null)
      {
        this.b.remove(paramT);
        paramT.clear();
      }
      return;
    }
  }
  
  public boolean b()
  {
    return c() == 0;
  }
  
  public int c()
  {
    synchronized (this.b)
    {
      d();
      int i = this.b.size();
      return i;
    }
  }
  
  public Iterator<T> iterator()
  {
    synchronized (this.b)
    {
      d();
      ArrayList localArrayList = new ArrayList(this.b.size());
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
      {
        Object localObject2 = ((d)localIterator.next()).get();
        if (localObject2 != null) {
          localArrayList.add(localObject2);
        }
      }
    }
    return ((ArrayList)localObject1).iterator();
  }
  
  public static abstract interface a {}
  
  public static abstract interface b<T>
  {
    public abstract void a(T paramT);
  }
  
  private final class c
    implements j.d<T>
  {
    private final T b;
    
    public c()
    {
      Object localObject;
      this.b = localObject;
    }
    
    public final void clear() {}
    
    public final boolean equals(Object paramObject)
    {
      if (paramObject == null) {}
      Object localObject;
      do
      {
        return false;
        localObject = paramObject;
        if ((paramObject instanceof j.d)) {
          localObject = ((j.d)paramObject).get();
        }
      } while (localObject == null);
      return localObject.equals(this.b);
    }
    
    public final T get()
    {
      return (T)this.b;
    }
    
    public final int hashCode()
    {
      return this.b.hashCode();
    }
    
    public final String toString()
    {
      return this.b.getClass().getName() + "#" + hashCode();
    }
  }
  
  private static abstract interface d<T>
  {
    public abstract void clear();
    
    public abstract T get();
  }
  
  public static abstract interface e {}
  
  private final class f
    extends WeakReference<T>
    implements j.d<T>
  {
    private final int b;
    private final Class bsR;
    
    public f(ReferenceQueue<? super T> paramReferenceQueue)
    {
      super(localReferenceQueue);
      this.bsR = paramReferenceQueue.getClass();
      this.b = paramReferenceQueue.hashCode();
    }
    
    public final boolean equals(Object paramObject)
    {
      if (paramObject == null) {}
      Object localObject;
      do
      {
        do
        {
          return false;
          localObject = paramObject;
          if ((paramObject instanceof j.d)) {
            localObject = ((j.d)paramObject).get();
          }
        } while (localObject == null);
        paramObject = get();
      } while (paramObject == null);
      return paramObject.equals(localObject);
    }
    
    public final int hashCode()
    {
      return this.b;
    }
    
    public final String toString()
    {
      return this.bsR.getName() + "#" + this.b;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */