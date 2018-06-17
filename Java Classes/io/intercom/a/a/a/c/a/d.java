package io.intercom.a.a.a.c.a;

import io.intercom.a.a.a.i.h;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class d
{
  private static final c.a<?> cIj = new c.a()
  {
    public final Class<Object> HU()
    {
      throw new UnsupportedOperationException("Not implemented");
    }
    
    public final c<Object> at(Object paramAnonymousObject)
    {
      return new d.a(paramAnonymousObject);
    }
  };
  private final Map<Class<?>, c.a<?>> cIi = new HashMap();
  
  public final <T> c<T> at(T paramT)
  {
    try
    {
      h.checkNotNull(paramT, "Argument must not be null");
      Object localObject2 = (c.a)this.cIi.get(paramT.getClass());
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        Iterator localIterator = this.cIi.values().iterator();
        do
        {
          localObject1 = localObject2;
          if (!localIterator.hasNext()) {
            break;
          }
          localObject1 = (c.a)localIterator.next();
        } while (!((c.a)localObject1).HU().isAssignableFrom(paramT.getClass()));
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = cIj;
      }
      paramT = ((c.a)localObject2).at(paramT);
      return paramT;
    }
    finally {}
  }
  
  public final void b(c.a<?> parama)
  {
    try
    {
      this.cIi.put(parama.HU(), parama);
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  private static final class a
    implements c<Object>
  {
    private final Object data;
    
    a(Object paramObject)
    {
      this.data = paramObject;
    }
    
    public final Object HV()
    {
      return this.data;
    }
    
    public final void cleanup() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */