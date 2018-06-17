package io.intercom.a.a.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import io.intercom.a.a.a.d.c.a;
import io.intercom.a.a.a.d.m;
import io.intercom.a.a.a.d.n;
import io.intercom.a.a.a.d.p;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class j
  implements io.intercom.a.a.a.d.i
{
  public static final io.intercom.a.a.a.g.g cGg = io.intercom.a.a.a.g.g.a(io.intercom.a.a.a.c.b.i.cKd).b(g.cFU).Jx();
  private static final io.intercom.a.a.a.g.g cGw;
  private static final io.intercom.a.a.a.g.g cGx;
  protected final c cFo;
  private final m cGA;
  final p cGB = new p();
  private final Runnable cGC = new Runnable()
  {
    public final void run()
    {
      j.this.cGy.a(j.this);
    }
  };
  private final io.intercom.a.a.a.d.c cGD;
  io.intercom.a.a.a.g.g cGi;
  final io.intercom.a.a.a.d.h cGy;
  final n cGz;
  protected final Context context;
  private final Handler mainHandler = new Handler(Looper.getMainLooper());
  
  static
  {
    io.intercom.a.a.a.g.g localg = io.intercom.a.a.a.g.g.K(Bitmap.class);
    localg.cKV = true;
    cGw = localg;
    localg = io.intercom.a.a.a.g.g.K(io.intercom.a.a.a.c.d.e.c.class);
    localg.cKV = true;
    cGx = localg;
  }
  
  public j(c paramc, io.intercom.a.a.a.d.h paramh, m paramm, Context paramContext)
  {
    this(paramc, paramh, paramm, new n(), paramc.cFy, paramContext);
  }
  
  private j(c paramc, io.intercom.a.a.a.d.h arg2, m paramm, n paramn, io.intercom.a.a.a.d.d paramd, Context paramContext)
  {
    this.cFo = paramc;
    this.cGy = ???;
    this.cGA = paramm;
    this.cGz = paramn;
    this.context = paramContext;
    this.cGD = paramd.a(paramContext.getApplicationContext(), new b(paramn));
    if (io.intercom.a.a.a.i.i.JV()) {
      this.mainHandler.post(this.cGC);
    }
    for (;;)
    {
      ???.a(this.cGD);
      this.cGi = paramc.cFu.cFG.Jy().JA();
      synchronized (paramc.cFz)
      {
        if (!paramc.cFz.contains(this)) {
          break;
        }
        throw new IllegalStateException("Cannot register already registered manager");
      }
      ???.a(this);
    }
    paramc.cFz.add(this);
  }
  
  public final i<Bitmap> HC()
  {
    return x(Bitmap.class).a(cGw);
  }
  
  public final void b(final io.intercom.a.a.a.g.a.h<?> paramh)
  {
    if (paramh == null) {}
    do
    {
      return;
      if (!io.intercom.a.a.a.i.i.JU()) {
        break;
      }
    } while ((c(paramh)) || (this.cFo.a(paramh)) || (paramh.getRequest() == null));
    io.intercom.a.a.a.g.c localc = paramh.getRequest();
    paramh.setRequest(null);
    localc.clear();
    return;
    this.mainHandler.post(new Runnable()
    {
      public final void run()
      {
        j.this.b(paramh);
      }
    });
  }
  
  final boolean c(io.intercom.a.a.a.g.a.h<?> paramh)
  {
    io.intercom.a.a.a.g.c localc = paramh.getRequest();
    if (localc == null) {
      return true;
    }
    if (this.cGz.a(localc, true))
    {
      this.cGB.cPA.remove(paramh);
      paramh.setRequest(null);
      return true;
    }
    return false;
  }
  
  public final i<Drawable> eT(String paramString)
  {
    return x(Drawable.class).aq(paramString);
  }
  
  public final void onDestroy()
  {
    this.cGB.onDestroy();
    ??? = io.intercom.a.a.a.i.i.i(this.cGB.cPA).iterator();
    while (((Iterator)???).hasNext()) {
      b((io.intercom.a.a.a.g.a.h)((Iterator)???).next());
    }
    this.cGB.cPA.clear();
    ??? = this.cGz;
    Object localObject2 = io.intercom.a.a.a.i.i.i(((n)???).cPu).iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((n)???).a((io.intercom.a.a.a.g.c)((Iterator)localObject2).next(), false);
    }
    ((n)???).cPv.clear();
    this.cGy.b(this);
    this.cGy.b(this.cGD);
    this.mainHandler.removeCallbacks(this.cGC);
    localObject2 = this.cFo;
    synchronized (((c)localObject2).cFz)
    {
      if (!((c)localObject2).cFz.contains(this)) {
        throw new IllegalStateException("Cannot unregister not yet registered manager");
      }
    }
    ((c)localObject3).cFz.remove(this);
  }
  
  public final void onStart()
  {
    io.intercom.a.a.a.i.i.JS();
    n localn = this.cGz;
    localn.cPw = false;
    Iterator localIterator = io.intercom.a.a.a.i.i.i(localn.cPu).iterator();
    while (localIterator.hasNext())
    {
      io.intercom.a.a.a.g.c localc = (io.intercom.a.a.a.g.c)localIterator.next();
      if ((!localc.isComplete()) && (!localc.isCancelled()) && (!localc.isRunning())) {
        localc.begin();
      }
    }
    localn.cPv.clear();
    this.cGB.onStart();
  }
  
  public final void onStop()
  {
    io.intercom.a.a.a.i.i.JS();
    n localn = this.cGz;
    localn.cPw = true;
    Iterator localIterator = io.intercom.a.a.a.i.i.i(localn.cPu).iterator();
    while (localIterator.hasNext())
    {
      io.intercom.a.a.a.g.c localc = (io.intercom.a.a.a.g.c)localIterator.next();
      if (localc.isRunning())
      {
        localc.pause();
        localn.cPv.add(localc);
      }
    }
    this.cGB.onStop();
  }
  
  public final String toString()
  {
    return super.toString() + "{tracker=" + this.cGz + ", treeNode=" + this.cGA + "}";
  }
  
  public final <ResourceType> i<ResourceType> x(Class<ResourceType> paramClass)
  {
    return new i(this.cFo, this, paramClass, this.context);
  }
  
  final <T> k<?, T> y(Class<T> paramClass)
  {
    Object localObject3 = this.cFo.cFu;
    Object localObject2 = (k)((e)localObject3).cFB.get(paramClass);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject3 = ((e)localObject3).cFB.entrySet().iterator();
      localObject1 = localObject2;
      if (((Iterator)localObject3).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject3).next();
        if (!((Class)((Map.Entry)localObject2).getKey()).isAssignableFrom(paramClass)) {
          break label111;
        }
        localObject1 = (k)((Map.Entry)localObject2).getValue();
      }
    }
    label111:
    for (;;)
    {
      break;
      paramClass = (Class<T>)localObject1;
      if (localObject1 == null) {
        paramClass = e.cFK;
      }
      return paramClass;
    }
  }
  
  private static final class a
    extends io.intercom.a.a.a.g.a.i<View, Object>
  {
    public a(View paramView)
    {
      super();
    }
    
    public final void onResourceReady(Object paramObject, io.intercom.a.a.a.g.b.d<? super Object> paramd) {}
  }
  
  private static final class b
    implements c.a
  {
    private final n cGz;
    
    b(n paramn)
    {
      this.cGz = paramn;
    }
    
    public final void bu(boolean paramBoolean)
    {
      if (paramBoolean)
      {
        n localn = this.cGz;
        Iterator localIterator = io.intercom.a.a.a.i.i.i(localn.cPu).iterator();
        while (localIterator.hasNext())
        {
          io.intercom.a.a.a.g.c localc = (io.intercom.a.a.a.g.c)localIterator.next();
          if ((!localc.isComplete()) && (!localc.isCancelled()))
          {
            localc.pause();
            if (!localn.cPw) {
              localc.begin();
            } else {
              localn.cPv.add(localc);
            }
          }
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */