package io.intercom.a.a.a.c.c;

import android.support.v4.g.k.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class p
{
  private final r cMX;
  private final a cMY = new a();
  
  public p(k.a<List<Throwable>> parama)
  {
    this(new r(parama));
  }
  
  private p(r paramr)
  {
    this.cMX = paramr;
  }
  
  public final List<Class<?>> F(Class<?> paramClass)
  {
    try
    {
      paramClass = this.cMX.F(paramClass);
      return paramClass;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public final <A> List<n<A, ?>> ap(A paramA)
  {
    Object localObject2;
    Object localObject1;
    for (;;)
    {
      try
      {
        localObject2 = paramA.getClass();
        localObject1 = (p.a.a)this.cMY.cMZ.get(localObject2);
        if (localObject1 == null)
        {
          localObject1 = null;
          if (localObject1 != null) {
            break;
          }
          localObject1 = Collections.unmodifiableList(this.cMX.G((Class)localObject2));
          if ((p.a.a)this.cMY.cMZ.put(localObject2, new p.a.a((List)localObject1)) == null) {
            break label197;
          }
          throw new IllegalStateException("Already cached loaders for model: " + localObject2);
        }
      }
      finally {}
      localObject1 = ((p.a.a)localObject1).cNa;
    }
    label197:
    for (;;)
    {
      int j = ((List)localObject1).size();
      localObject2 = new ArrayList(j);
      int i = 0;
      while (i < j)
      {
        n localn = (n)((List)localObject1).get(i);
        if (localn.aw(paramA)) {
          ((List)localObject2).add(localn);
        }
        i += 1;
      }
      return (List<n<A, ?>>)localObject2;
    }
  }
  
  public final <Model, Data> void b(Class<Model> paramClass, Class<Data> paramClass1, o<? extends Model, ? extends Data> paramo)
  {
    try
    {
      this.cMX.b(paramClass, paramClass1, paramo);
      this.cMY.cMZ.clear();
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  private static final class a
  {
    final Map<Class<?>, a<?>> cMZ = new HashMap();
    
    private static final class a<Model>
    {
      final List<n<Model, ?>> cNa;
      
      public a(List<n<Model, ?>> paramList)
      {
        this.cNa = paramList;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */