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
import com.layer.sdk.query.ListViewController;
import com.layer.sdk.query.ListViewController.Callback;
import com.layer.sdk.query.ListViewController.PreProcessCallback;
import com.layer.sdk.query.Query;
import com.layer.sdk.query.Queryable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class d<Tquery extends Queryable>
  extends ListViewController<Tquery>
  implements LayerChangeEventListener.BackgroundThread.Weak
{
  k.a a = k.a(d.class.getSimpleName());
  private final LayerClient b;
  private Query<Tquery> c;
  private final Set<String> d;
  private final ListViewController.Callback e;
  private final a f;
  private final AtomicReference<ListViewController.PreProcessCallback<Tquery>> g = new AtomicReference(null);
  private final AtomicBoolean h = new AtomicBoolean(false);
  private final Object i = new Object();
  private final Object j = new Object();
  private final AtomicReference<List<Uri>> k = new AtomicReference(new ArrayList());
  private final AtomicBoolean l = new AtomicBoolean(false);
  private final AtomicBoolean m = new AtomicBoolean(false);
  
  public d(LayerClient paramLayerClient, Query<Tquery> paramQuery, Set<String> paramSet, ListViewController.Callback paramCallback)
  {
    this.b = paramLayerClient;
    this.c = paramQuery;
    this.d = paramSet;
    this.e = paramCallback;
    this.f = new a((com.layer.sdk.internal.a)this.b, this.k, new a.a()
    {
      public final void a(Queryable paramAnonymousQueryable)
      {
        ListViewController.PreProcessCallback localPreProcessCallback = (ListViewController.PreProcessCallback)d.a(d.this).get();
        if (localPreProcessCallback == null) {
          return;
        }
        localPreProcessCallback.onCache(d.this, paramAnonymousQueryable);
      }
    });
  }
  
  private void a(final List<Uri> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return;
    }
    if (k.a(2)) {
      k.a(this.a, "Notifying ListViewController results. Size: " + paramList.size());
    }
    ((com.layer.sdk.internal.a)this.b).a(new Runnable()
    {
      public final void run()
      {
        synchronized (d.g(d.this))
        {
          d.h(d.this).set(paramList);
          d.i(d.this).onQueryDataSetChanged(d.this);
          return;
        }
      }
    });
  }
  
  private List<Uri> b()
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
        return (List<Uri>)localObject1;
      }
      Object localObject3 = Integer.valueOf(((List)localObject1).size());
    }
  }
  
  public d<Tquery> a()
  {
    if (!this.l.compareAndSet(false, true))
    {
      this.m.set(true);
      return this;
    }
    ((com.layer.sdk.internal.a)this.b).d(new Runnable()
    {
      public final void run()
      {
        try
        {
          boolean bool;
          do
          {
            List localList = d.b(d.this);
            if (d.c(d.this).compareAndSet(false, true)) {
              d.d(d.this).registerEventListener(d.this);
            }
            d.a(d.this, localList);
            bool = d.e(d.this).compareAndSet(true, false);
          } while (bool);
          return;
        }
        finally
        {
          d.f(d.this).set(false);
        }
      }
    });
    return this;
  }
  
  public Tquery getItem(int paramInt)
  {
    synchronized (this.j)
    {
      Object localObject2 = (List)this.k.get();
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
    synchronized (this.j)
    {
      int n = ((List)this.k.get()).size();
      return n;
    }
  }
  
  public Uri getItemId(int paramInt)
  {
    synchronized (this.j)
    {
      Object localObject2 = (List)this.k.get();
      if ((paramInt < 0) || (paramInt >= ((List)localObject2).size())) {
        return null;
      }
      localObject2 = (Uri)((List)localObject2).get(paramInt);
      return (Uri)localObject2;
    }
  }
  
  public int getPosition(Tquery paramTquery)
  {
    synchronized (this.j)
    {
      int n = ((List)this.k.get()).indexOf(paramTquery.getId());
      return n;
    }
  }
  
  public int getPosition(Tquery paramTquery, int paramInt)
  {
    synchronized (this.j)
    {
      paramInt = q.a((List)this.k.get(), paramTquery.getId(), paramInt);
      return paramInt;
    }
  }
  
  public void onChangeEvent(LayerChangeEvent paramLayerChangeEvent)
  {
    int n = 1;
    if (this.d == null) {}
    for (;;)
    {
      if (n != 0)
      {
        paramLayerChangeEvent = new Runnable()
        {
          public final void run()
          {
            d.a(d.this, d.b(d.this));
          }
        };
        ((com.layer.sdk.internal.a)this.b).d(paramLayerChangeEvent);
      }
      return;
      paramLayerChangeEvent = paramLayerChangeEvent.getChanges().iterator();
      n = 0;
      while (paramLayerChangeEvent.hasNext())
      {
        LayerChange localLayerChange = (LayerChange)paramLayerChangeEvent.next();
        if (localLayerChange.getChangeType() != LayerChange.Type.UPDATE)
        {
          n = 1;
        }
        else
        {
          if (this.d.contains(localLayerChange.getAttributeName())) {
            n = 1;
          }
          for (;;)
          {
            break;
          }
        }
      }
    }
  }
  
  public ListViewController<Tquery> setPreProcessCallback(ListViewController.PreProcessCallback<Tquery> paramPreProcessCallback)
  {
    this.g.set(paramPreProcessCallback);
    return this;
  }
  
  public ListViewController<Tquery> setQuery(Query<Tquery> paramQuery)
  {
    synchronized (this.i)
    {
      this.c = paramQuery;
      return this;
    }
  }
  
  public void updateBoundPosition(int paramInt)
  {
    this.f.a(paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkh/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */