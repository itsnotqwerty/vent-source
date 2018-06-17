package io.intercom.a.a.a.f;

import android.support.v4.g.a;
import io.intercom.a.a.a.i.g;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class d
{
  private final AtomicReference<g> cPE = new AtomicReference();
  public final a<g, List<Class<?>>> cPF = new a();
  
  public final List<Class<?>> f(Class<?> paramClass1, Class<?> arg2)
  {
    Object localObject = (g)this.cPE.getAndSet(null);
    if (localObject == null) {
      paramClass1 = new g(paramClass1, ???);
    }
    synchronized (this.cPF)
    {
      localObject = (List)this.cPF.get(paramClass1);
      this.cPE.set(paramClass1);
      return (List<Class<?>>)localObject;
      ((g)localObject).f(paramClass1, ???, null);
      paramClass1 = (Class<?>)localObject;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/f/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */