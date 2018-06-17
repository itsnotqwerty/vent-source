package io.intercom.a.a.a.f;

import android.support.v4.g.a;
import io.intercom.a.a.a.c.b.s;
import io.intercom.a.a.a.i.g;
import java.util.concurrent.atomic.AtomicReference;

public final class c
{
  public final a<g, s<?, ?, ?>> cPC = new a();
  private final AtomicReference<g> cPD = new AtomicReference();
  
  private g e(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3)
  {
    g localg2 = (g)this.cPD.getAndSet(null);
    g localg1 = localg2;
    if (localg2 == null) {
      localg1 = new g();
    }
    localg1.f(paramClass1, paramClass2, paramClass3);
    return localg1;
  }
  
  public final boolean c(Class<?> arg1, Class<?> paramClass2, Class<?> paramClass3)
  {
    paramClass2 = e(???, paramClass2, paramClass3);
    synchronized (this.cPC)
    {
      boolean bool = this.cPC.containsKey(paramClass2);
      this.cPD.set(paramClass2);
      return bool;
    }
  }
  
  public final <Data, TResource, Transcode> s<Data, TResource, Transcode> d(Class<Data> arg1, Class<TResource> paramClass1, Class<Transcode> paramClass2)
  {
    paramClass1 = e(???, paramClass1, paramClass2);
    synchronized (this.cPC)
    {
      paramClass2 = (s)this.cPC.get(paramClass1);
      this.cPD.set(paramClass1);
      return paramClass2;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/f/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */