package com.layer.sdk.internal.lsdkh;

import android.net.Uri;
import com.layer.sdk.LayerClient;
import com.layer.sdk.changes.LayerChange;
import com.layer.sdk.changes.LayerChange.Type;
import com.layer.sdk.changes.LayerChangeEvent;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.q;
import com.layer.sdk.listeners.LayerChangeEventListener.BackgroundThread.Weak;
import com.layer.sdk.query.ListViewController.PreProcessCallback;
import com.layer.sdk.query.Query;
import com.layer.sdk.query.Queryable;
import com.layer.sdk.query.RecyclerViewController;
import com.layer.sdk.query.RecyclerViewController.Callback;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class h<Tquery extends Queryable>
  extends RecyclerViewController<Tquery>
  implements LayerChangeEventListener.BackgroundThread.Weak
{
  k.a a = k.a(h.class.getSimpleName());
  private final LayerClient b;
  private Query<Tquery> c;
  private final Set<String> d;
  private final RecyclerViewController.Callback e;
  private final a f;
  private final AtomicReference<ListViewController.PreProcessCallback<Tquery>> g = new AtomicReference(null);
  private final AtomicBoolean h = new AtomicBoolean(false);
  private final Object i = new Object();
  private final List<Uri> j = new ArrayList();
  private final Object k = new Object();
  private final AtomicReference<List<Uri>> l = new AtomicReference(new ArrayList());
  private final AtomicBoolean m = new AtomicBoolean(false);
  private final AtomicBoolean n = new AtomicBoolean(false);
  
  public h(LayerClient paramLayerClient, Query<Tquery> paramQuery, Set<String> paramSet, RecyclerViewController.Callback paramCallback)
  {
    this.b = paramLayerClient;
    this.c = paramQuery;
    this.d = paramSet;
    this.e = paramCallback;
    this.f = new a((com.layer.sdk.internal.a)this.b, this.l, new a.a()
    {
      public final void a(Queryable paramAnonymousQueryable)
      {
        ListViewController.PreProcessCallback localPreProcessCallback = (ListViewController.PreProcessCallback)h.a(h.this).get();
        if (localPreProcessCallback == null) {
          return;
        }
        localPreProcessCallback.onCache(h.this, paramAnonymousQueryable);
      }
    });
  }
  
  protected static Map<Uri, Integer> a(Iterable<Uri> paramIterable)
  {
    HashMap localHashMap = new HashMap();
    paramIterable = paramIterable.iterator();
    int i1 = 0;
    while (paramIterable.hasNext())
    {
      localHashMap.put((Uri)paramIterable.next(), Integer.valueOf(i1));
      i1 += 1;
    }
    return localHashMap;
  }
  
  protected static void a(a parama, b paramb)
  {
    HashMap localHashMap = new HashMap();
    Object localObject = parama.b().iterator();
    int i2 = Integer.MIN_VALUE;
    Uri localUri;
    for (int i1 = Integer.MAX_VALUE; ((Iterator)localObject).hasNext(); i1 = i3)
    {
      localUri = (Uri)((Iterator)localObject).next();
      int i5 = ((Integer)parama.a().get(localUri)).intValue();
      i4 = i2;
      i3 = i1;
      if (!parama.c().containsKey(localUri))
      {
        i3 = i1;
        if (i5 < i1) {
          i3 = i5;
        }
        i1 = i2;
        if (i5 > i2) {
          i1 = i5;
        }
        localHashMap.put(parama.a().get(localUri), localUri);
        i4 = i1;
      }
      i2 = i4;
    }
    localObject = new ArrayList(i2 - i1 + 1);
    int i4 = 0;
    parama = null;
    int i3 = i1;
    i1 = i4;
    if (i3 <= i2)
    {
      localUri = (Uri)localHashMap.get(Integer.valueOf(i3));
      if (localUri != null) {
        if (parama == null)
        {
          parama = new i(i3 - i1, localUri);
          ((List)localObject).add(parama);
          i1 += 1;
        }
      }
      for (;;)
      {
        i3 += 1;
        break;
        parama.a(localUri);
        i1 += 1;
        continue;
        parama = null;
      }
    }
    paramb.a((List)localObject);
  }
  
  protected static void a(List<Uri> paramList, List<f> paramList1)
  {
    paramList1 = paramList1.iterator();
    while (paramList1.hasNext()) {
      ((f)paramList1.next()).a(paramList);
    }
  }
  
  protected static void a(List<Uri> paramList, Map<Uri, Integer> paramMap, List<f> paramList1)
  {
    a(paramList, paramList1);
    paramMap.clear();
    paramList = paramList.iterator();
    int i1 = 0;
    while (paramList.hasNext())
    {
      paramMap.put((Uri)paramList.next(), Integer.valueOf(i1));
      i1 += 1;
    }
  }
  
  private void a(boolean paramBoolean, final List<f> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return;
    }
    if (k.a(2)) {
      k.a(this.a, "Notifying RecyclerViewController updates. Size: " + paramList.size());
    }
    if (paramBoolean)
    {
      ((com.layer.sdk.internal.a)this.b).a(new Runnable()
      {
        public final void run()
        {
          synchronized (h.h(h.this))
          {
            h.a((List)h.i(h.this).get(), paramList);
            h.j(h.this).onQueryDataSetChanged(h.this);
            return;
          }
        }
      });
      return;
    }
    ((com.layer.sdk.internal.a)this.b).a(new Runnable()
    {
      public final void run()
      {
        for (;;)
        {
          Object localObject3;
          synchronized (h.h(h.this))
          {
            List localList = (List)h.i(h.this).get();
            Iterator localIterator = paramList.iterator();
            if (!localIterator.hasNext()) {
              break;
            }
            localObject3 = (h.f)localIterator.next();
            ((h.f)localObject3).a(localList);
            if (!(localObject3 instanceof h.i)) {
              break label151;
            }
            localObject3 = (h.i)localObject3;
            if (((h.i)localObject3).b() == 1) {
              h.j(h.this).onQueryItemRemoved(h.this, ((h.i)localObject3).a());
            }
          }
          if (((h.i)localObject3).b() > 1)
          {
            h.j(h.this).onQueryItemRangeRemoved(h.this, ((h.i)localObject3).a(), ((h.i)localObject3).b());
            continue;
            label151:
            if ((localObject3 instanceof h.h))
            {
              localObject3 = (h.h)localObject3;
              h.j(h.this).onQueryItemMoved(h.this, ((h.h)localObject3).a(), ((h.h)localObject3).b());
            }
            else if ((localObject3 instanceof h.g))
            {
              localObject3 = (h.g)localObject3;
              if (((h.g)localObject3).b() == 1) {
                h.j(h.this).onQueryItemInserted(h.this, ((h.g)localObject3).a());
              } else if (((h.g)localObject3).b() > 1) {
                h.j(h.this).onQueryItemRangeInserted(h.this, ((h.g)localObject3).a(), ((h.g)localObject3).b());
              }
            }
            else if ((localObject3 instanceof h.c))
            {
              localObject3 = (h.c)localObject3;
              if (((h.c)localObject3).b() == 1) {
                h.j(h.this).onQueryItemChanged(h.this, ((h.c)localObject3).a());
              } else if (((h.c)localObject3).b() > 1) {
                h.j(h.this).onQueryItemRangeChanged(h.this, ((h.c)localObject3).a(), ((h.c)localObject3).b());
              }
            }
          }
        }
      }
    });
  }
  
  private d b()
  {
    synchronized (this.i)
    {
      if (this.c == null) {}
      for (Object localObject1 = new ArrayList();; localObject1 = this.b.executeQueryForIds(this.c))
      {
        if (k.a(2))
        {
          k.a locala = this.a;
          StringBuilder localStringBuilder = new StringBuilder("Query item count: ");
          if (localObject1 != null) {
            break;
          }
          localObject3 = "null";
          k.a(locala, localObject3);
        }
        localObject3 = b(this.j, (List)localObject1);
        this.j.clear();
        this.j.addAll((Collection)localObject1);
        localObject1 = new d((List)localObject3, (List)localObject1, (byte)0);
        return (d)localObject1;
      }
      Object localObject3 = Integer.valueOf(((List)localObject1).size());
    }
  }
  
  protected static List<f> b(List<Uri> paramList1, List<Uri> paramList2)
  {
    paramList1 = new a().a(paramList1).b(paramList2);
    b localb = new b().a(paramList1.b(), paramList1.a());
    a(paramList1, localb);
    ArrayList localArrayList = new ArrayList(paramList2.size());
    Iterator localIterator = paramList2.iterator();
    while (localIterator.hasNext())
    {
      Uri localUri = (Uri)localIterator.next();
      if (paramList1.a().containsKey(localUri)) {
        localArrayList.add(localUri);
      }
    }
    b(new a().a(localb.b()).b(localArrayList), localb);
    c(new a().a(localb.b()).b(paramList2), localb);
    return localb.c();
  }
  
  protected static void b(a parama, b paramb)
  {
    b localb = new b().a(parama.b(), parama.a());
    if (parama.b().size() != parama.d().size()) {
      throw new IllegalArgumentException("Sizes do not match " + parama.b().size() + " vs. " + parama.d().size());
    }
    Object localObject1 = parama.d();
    ArrayList localArrayList = new ArrayList(((List)localObject1).size());
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (Uri)((Iterator)localObject1).next();
      Integer localInteger1 = (Integer)parama.c().get(localObject2);
      Integer localInteger2 = (Integer)localb.a().get(localObject2);
      if (!localInteger1.equals(localInteger2))
      {
        localObject2 = new h(localInteger2.intValue(), localInteger1.intValue(), (Uri)localObject2, (byte)0);
        localb.a((f)localObject2);
        localArrayList.add(localObject2);
      }
    }
    paramb.a(localArrayList);
  }
  
  protected static List<f> c(List<Queryable> paramList, List<Uri> paramList1)
  {
    Map localMap = a(paramList1);
    HashMap localHashMap = new HashMap();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localObject = (Queryable)paramList.next();
      localHashMap.put(((Queryable)localObject).getId(), localObject);
    }
    Object localObject = new ArrayList(paramList1.size());
    paramList1 = paramList1.iterator();
    paramList = null;
    while (paramList1.hasNext())
    {
      Uri localUri = (Uri)paramList1.next();
      if ((Queryable)localHashMap.get(localUri) != null)
      {
        if (paramList == null)
        {
          paramList = new c(((Integer)localMap.get(localUri)).intValue(), localUri);
          ((List)localObject).add(paramList);
        }
        else
        {
          paramList.a(localUri);
        }
      }
      else {
        paramList = null;
      }
    }
    return (List<f>)localObject;
  }
  
  protected static void c(a parama, b paramb)
  {
    Object localObject = parama.d();
    ArrayList localArrayList = new ArrayList(((List)localObject).size());
    Iterator localIterator = ((List)localObject).iterator();
    localObject = null;
    while (localIterator.hasNext())
    {
      Uri localUri = (Uri)localIterator.next();
      Integer localInteger1 = (Integer)parama.a().get(localUri);
      Integer localInteger2 = (Integer)parama.c().get(localUri);
      if (localInteger1 == null)
      {
        if (localObject == null)
        {
          localObject = new g(localInteger2.intValue(), localUri);
          localArrayList.add(localObject);
        }
        else
        {
          ((g)localObject).a(localUri);
        }
      }
      else {
        localObject = null;
      }
    }
    paramb.a(localArrayList);
  }
  
  public h<Tquery> a()
  {
    if (!this.m.compareAndSet(false, true))
    {
      this.n.set(true);
      return this;
    }
    Runnable local2 = new Runnable()
    {
      public final void run()
      {
        try
        {
          boolean bool;
          do
          {
            Object localObject1 = h.b(h.this);
            if (localObject1 == null) {
              return;
            }
            localObject1 = ((h.d)localObject1).b;
            if (h.c(h.this).compareAndSet(false, true)) {
              h.d(h.this).registerEventListener(h.this);
            }
            h.a(h.this, true, (List)localObject1);
            bool = h.e(h.this).compareAndSet(true, false);
          } while (bool);
          return;
        }
        finally
        {
          h.f(h.this).set(false);
        }
      }
    };
    ((com.layer.sdk.internal.a)this.b).d(local2);
    return this;
  }
  
  public h<Tquery> a(ListViewController.PreProcessCallback<Tquery> paramPreProcessCallback)
  {
    this.g.set(paramPreProcessCallback);
    return this;
  }
  
  public h<Tquery> a(Query<Tquery> paramQuery)
  {
    synchronized (this.i)
    {
      this.c = paramQuery;
      return this;
    }
  }
  
  public Tquery getItem(int paramInt)
  {
    synchronized (this.k)
    {
      Object localObject2 = (List)this.l.get();
      if ((paramInt < 0) || (paramInt >= ((List)localObject2).size())) {
        return null;
      }
      localObject2 = (Uri)((List)localObject2).get(paramInt);
      if (localObject2 == null) {
        return null;
      }
    }
    return this.b.get(localUri);
  }
  
  public int getItemCount()
  {
    synchronized (this.k)
    {
      int i1 = ((List)this.l.get()).size();
      return i1;
    }
  }
  
  public Uri getItemId(int paramInt)
  {
    synchronized (this.k)
    {
      Object localObject2 = (List)this.l.get();
      if ((paramInt < 0) || (paramInt >= ((List)localObject2).size())) {
        return null;
      }
      localObject2 = (Uri)((List)localObject2).get(paramInt);
      return (Uri)localObject2;
    }
  }
  
  public int getPosition(Tquery paramTquery)
  {
    synchronized (this.k)
    {
      int i1 = ((List)this.l.get()).indexOf(paramTquery.getId());
      return i1;
    }
  }
  
  public int getPosition(Tquery paramTquery, int paramInt)
  {
    synchronized (this.k)
    {
      paramInt = q.a((List)this.l.get(), paramTquery.getId(), paramInt);
      return paramInt;
    }
  }
  
  public void onChangeEvent(final LayerChangeEvent paramLayerChangeEvent)
  {
    paramLayerChangeEvent = new Runnable()
    {
      public final void run()
      {
        h.d locald = h.b(h.this);
        Object localObject1 = h.a(locald.a);
        HashSet localHashSet = new HashSet();
        Object localObject2 = locald.b.iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (h.f)((Iterator)localObject2).next();
          if (!(localObject3 instanceof h.h)) {
            if ((localObject3 instanceof h.i)) {
              localHashSet.addAll(((h.i)localObject3).c());
            } else if ((localObject3 instanceof h.g)) {
              localHashSet.addAll(((h.g)localObject3).c());
            }
          }
        }
        Object localObject3 = paramLayerChangeEvent.getChanges();
        localObject2 = new ArrayList(((List)localObject3).size());
        localObject3 = ((List)localObject3).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          LayerChange localLayerChange = (LayerChange)((Iterator)localObject3).next();
          Uri localUri = ((Queryable)localLayerChange.getObject()).getId();
          if ((!localHashSet.contains(localUri)) && (localLayerChange.getChangeType().equals(LayerChange.Type.UPDATE)) && ((Integer)((Map)localObject1).get(localUri) != null) && ((h.g(h.this) == null) || (h.g(h.this).contains(localLayerChange.getAttributeName()))))
          {
            localHashSet.add(localUri);
            ((List)localObject2).add((Queryable)localLayerChange.getObject());
          }
        }
        localObject1 = h.c((List)localObject2, locald.a);
        locald.b.addAll((Collection)localObject1);
        h.a(h.this, false, locald.b);
      }
    };
    ((com.layer.sdk.internal.a)this.b).d(paramLayerChangeEvent);
  }
  
  public void updateBoundPosition(int paramInt)
  {
    this.f.a(paramInt);
  }
  
  protected static class a
  {
    private final Map<Uri, Integer> a = new HashMap();
    private final List<Uri> b = new ArrayList();
    private final Map<Uri, Integer> c = new HashMap();
    private final List<Uri> d = new ArrayList();
    
    public a a(Uri paramUri)
    {
      int i = this.b.size();
      this.b.add(paramUri);
      this.a.put(paramUri, Integer.valueOf(i));
      return this;
    }
    
    public a a(Iterable<Uri> paramIterable)
    {
      if (paramIterable == null) {}
      for (;;)
      {
        return this;
        paramIterable = paramIterable.iterator();
        while (paramIterable.hasNext()) {
          a((Uri)paramIterable.next());
        }
      }
    }
    
    public Map<Uri, Integer> a()
    {
      return this.a;
    }
    
    public a b(Uri paramUri)
    {
      int i = this.d.size();
      this.d.add(paramUri);
      this.c.put(paramUri, Integer.valueOf(i));
      return this;
    }
    
    public a b(Iterable<Uri> paramIterable)
    {
      if (paramIterable == null) {}
      for (;;)
      {
        return this;
        paramIterable = paramIterable.iterator();
        while (paramIterable.hasNext()) {
          b((Uri)paramIterable.next());
        }
      }
    }
    
    public List<Uri> b()
    {
      return this.b;
    }
    
    public Map<Uri, Integer> c()
    {
      return this.c;
    }
    
    public List<Uri> d()
    {
      return this.d;
    }
  }
  
  protected static class b
  {
    private List<Uri> a = new ArrayList();
    private Map<Uri, Integer> b = new HashMap();
    private final List<h.f> c = new ArrayList();
    
    public b a(List<Uri> paramList, Map<Uri, Integer> paramMap)
    {
      this.a = new ArrayList(paramList);
      this.b = new HashMap(paramMap);
      return this;
    }
    
    public Map<Uri, Integer> a()
    {
      return this.b;
    }
    
    public void a(h.f paramf)
    {
      this.c.add(paramf);
      h.a(this.a, this.b, Arrays.asList(new h.f[] { paramf }));
    }
    
    public void a(List<h.f> paramList)
    {
      this.c.addAll(paramList);
      h.a(this.a, this.b, paramList);
    }
    
    public List<Uri> b()
    {
      return this.a;
    }
    
    public List<h.f> c()
    {
      return this.c;
    }
  }
  
  protected static class c
    extends h.f
  {
    private final int a;
    private final List<Uri> b;
    
    protected c(int paramInt, Uri paramUri)
    {
      this.a = paramInt;
      this.b = new ArrayList();
      this.b.add(paramUri);
    }
    
    public int a()
    {
      return this.a;
    }
    
    public void a(Uri paramUri)
    {
      this.b.add(paramUri);
    }
    
    public void a(List<Uri> paramList) {}
    
    public int b()
    {
      return this.b.size();
    }
  }
  
  private static final class d
  {
    final List<Uri> a;
    final List<h.f> b;
    
    private d(List<h.f> paramList, List<Uri> paramList1)
    {
      this.b = paramList;
      this.a = paramList1;
    }
  }
  
  protected static abstract class e
    extends h.f
  {}
  
  protected static abstract class f
  {
    public abstract void a(List<Uri> paramList);
  }
  
  protected static class g
    extends h.e
  {
    private final int a;
    private final List<Uri> b;
    
    protected g(int paramInt, Uri paramUri)
    {
      this.a = paramInt;
      this.b = new ArrayList();
      this.b.add(paramUri);
    }
    
    public int a()
    {
      return this.a;
    }
    
    public void a(Uri paramUri)
    {
      this.b.add(paramUri);
    }
    
    public void a(List<Uri> paramList)
    {
      paramList.addAll(this.a, this.b);
    }
    
    public int b()
    {
      return this.b.size();
    }
    
    public List<Uri> c()
    {
      return this.b;
    }
  }
  
  protected static class h
    extends h.e
  {
    private final int a;
    private final int b;
    private final Uri c;
    
    private h(int paramInt1, int paramInt2, Uri paramUri)
    {
      this.a = paramInt1;
      this.b = paramInt2;
      this.c = paramUri;
    }
    
    public int a()
    {
      return this.a;
    }
    
    public void a(List<Uri> paramList)
    {
      paramList.remove(this.a);
      paramList.add(this.b, this.c);
    }
    
    public int b()
    {
      return this.b;
    }
  }
  
  protected static class i
    extends h.e
  {
    private final int a;
    private final List<Uri> b;
    
    protected i(int paramInt, Uri paramUri)
    {
      this.a = paramInt;
      this.b = new ArrayList();
      this.b.add(paramUri);
    }
    
    public int a()
    {
      return this.a;
    }
    
    public void a(Uri paramUri)
    {
      this.b.add(paramUri);
    }
    
    public void a(List<Uri> paramList)
    {
      int i = 0;
      while (i < this.b.size())
      {
        paramList.remove(this.a);
        i += 1;
      }
    }
    
    public int b()
    {
      return this.b.size();
    }
    
    public List<Uri> c()
    {
      return this.b;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkh/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */