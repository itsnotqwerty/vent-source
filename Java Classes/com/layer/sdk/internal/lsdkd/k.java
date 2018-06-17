package com.layer.sdk.internal.lsdkd;

import com.layer.sdk.changes.LayerChange.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;

public class k
{
  private static final AtomicLong d = new AtomicLong(0L);
  private final c.a a;
  private final Set<d> b = Collections.synchronizedSet(new LinkedHashSet());
  private final ConcurrentLinkedQueue<b> c = new ConcurrentLinkedQueue();
  private final long e = d.incrementAndGet();
  private a f;
  
  public k(a parama, c.a parama1)
  {
    if (parama == null) {
      throw new IllegalArgumentException("Type cannot be null");
    }
    this.f = parama;
    this.a = parama1;
  }
  
  private List<b> a(Queue<b> paramQueue)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramQueue.isEmpty()) {
      return localArrayList;
    }
    Object localObject3 = new LinkedHashMap();
    Object localObject1 = null;
    int j = 0;
    int i = 0;
    d locald = null;
    Object localObject2;
    int k;
    if (!paramQueue.isEmpty())
    {
      localObject2 = (b)paramQueue.poll();
      locald = ((b)localObject2).a();
      switch (1.bqe[localObject2.getChangeType().ordinal()])
      {
      default: 
        k = j;
        j = i;
        i = k;
      }
    }
    for (;;)
    {
      k = i;
      i = j;
      j = k;
      break;
      if (((b)localObject2).b() == com.layer.sdk.internal.lsdkd.lsdka.c.a.a)
      {
        localObject1 = localObject2;
        i = 1;
        break;
        if (!((Map)localObject3).containsKey(((b)localObject2).b())) {
          ((Map)localObject3).put(((b)localObject2).b(), new ArrayList());
        }
        ((List)((Map)localObject3).get(((b)localObject2).b())).add(localObject2);
        break;
        k = 1;
        j = i;
        i = k;
        continue;
        if ((i != 0) && (j != 0)) {
          return localArrayList;
        }
        if (i != 0)
        {
          if (localObject1 == null) {
            break label399;
          }
          localArrayList.add(localObject1);
        }
        while (i == 0)
        {
          paramQueue = ((Map)localObject3).entrySet().iterator();
          while (paramQueue.hasNext())
          {
            localObject2 = (Map.Entry)paramQueue.next();
            localObject1 = (e)((Map.Entry)localObject2).getKey();
            if ((j == 0) || (((e)localObject1).c()))
            {
              localObject3 = (List)((Map.Entry)localObject2).getValue();
              localObject2 = ((b)((List)localObject3).get(0)).getOldValue();
              localObject3 = ((b)((List)localObject3).get(((List)localObject3).size() - 1)).getNewValue();
              if (b.a(localObject2, localObject3)) {
                localArrayList.add(new b(LayerChange.Type.UPDATE, locald, (e)localObject1, localObject2, localObject3));
              }
            }
          }
          label399:
          localArrayList.add(new b(LayerChange.Type.INSERT, locald, null, null, null));
        }
        if (j != 0) {
          localArrayList.add(new b(LayerChange.Type.DELETE, locald, null, null, null));
        }
        localArrayList.addAll(this.c);
        this.c.clear();
        return localArrayList;
      }
      i = j;
      j = 1;
    }
  }
  
  public a a()
  {
    return this.f;
  }
  
  public void a(b paramb)
  {
    this.c.add(paramb);
  }
  
  public void a(c.a parama)
  {
    if (parama != this.a) {
      throw new IllegalStateException("Emitter mismatch");
    }
  }
  
  public void a(d paramd)
  {
    if (paramd == null) {
      throw new IllegalArgumentException("Changeable cannot be null");
    }
    this.b.add(paramd);
  }
  
  public void a(a parama)
  {
    if (parama == null) {
      throw new IllegalArgumentException("Type cannot be null");
    }
    this.f = parama;
  }
  
  protected void b()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      localArrayList.addAll(a(((d)localIterator.next()).a()));
    }
    if ((!localArrayList.isEmpty()) && (this.a != null)) {
      this.a.a(new c(localArrayList));
    }
  }
  
  public String toString()
  {
    return "ChangeableTransaction{mType=" + this.f + ", mId=" + this.e + '}';
  }
  
  public static enum a
  {
    private a() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */