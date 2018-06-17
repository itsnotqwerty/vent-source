package io.intercom.a.a.a.c.c;

import android.support.v4.g.k.a;
import io.intercom.a.a.a.c.j;
import io.intercom.a.a.a.h.c;
import io.intercom.a.a.a.i.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class r
{
  private static final c cNf = new c();
  private static final n<Object, Object> cNg = new a();
  private final k.a<List<Throwable>> cGf;
  private final List<b<?, ?>> cNh = new ArrayList();
  private final c cNi;
  private final Set<b<?, ?>> cNj = new HashSet();
  
  public r(k.a<List<Throwable>> parama)
  {
    this(parama, cNf);
  }
  
  private r(k.a<List<Throwable>> parama, c paramc)
  {
    this.cGf = parama;
    this.cNi = paramc;
  }
  
  private <Model, Data> n<Model, Data> a(b<?, ?> paramb)
  {
    return (n)h.checkNotNull(paramb.cNl.a(this), "Argument must not be null");
  }
  
  final List<Class<?>> F(Class<?> paramClass)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = this.cNh.iterator();
      while (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        if ((!localArrayList.contains(localb.csM)) && (localb.H(paramClass))) {
          localArrayList.add(localb.csM);
        }
      }
    }
    finally {}
    return localArrayList;
  }
  
  final <Model> List<n<Model, ?>> G(Class<Model> paramClass)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = this.cNh.iterator();
      while (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        if ((!this.cNj.contains(localb)) && (localb.H(paramClass)))
        {
          this.cNj.add(localb);
          localArrayList.add(a(localb));
          this.cNj.remove(localb);
        }
      }
    }
    catch (Throwable paramClass)
    {
      this.cNj.clear();
      throw paramClass;
    }
    finally {}
    return localArrayList;
  }
  
  public final <Model, Data> n<Model, Data> b(Class<Model> paramClass, Class<Data> paramClass1)
  {
    ArrayList localArrayList;
    int i;
    for (;;)
    {
      try
      {
        localArrayList = new ArrayList();
        Iterator localIterator = this.cNh.iterator();
        i = 0;
        if (!localIterator.hasNext()) {
          break;
        }
        b localb = (b)localIterator.next();
        if (this.cNj.contains(localb))
        {
          i = 1;
        }
        else
        {
          int j;
          if ((localb.H(paramClass)) && (localb.csM.isAssignableFrom(paramClass1)))
          {
            j = 1;
            if (j != 0)
            {
              this.cNj.add(localb);
              localArrayList.add(a(localb));
              this.cNj.remove(localb);
            }
          }
          else
          {
            j = 0;
          }
        }
      }
      catch (Throwable paramClass)
      {
        this.cNj.clear();
        throw paramClass;
      }
      finally {}
    }
    if (localArrayList.size() > 1) {
      paramClass = new q(localArrayList, this.cGf);
    }
    for (;;)
    {
      return paramClass;
      if (localArrayList.size() == 1)
      {
        paramClass = (n)localArrayList.get(0);
      }
      else
      {
        if (i == 0) {
          break;
        }
        paramClass = cNg;
      }
    }
    throw new h.c(paramClass, paramClass1);
  }
  
  final <Model, Data> void b(Class<Model> paramClass, Class<Data> paramClass1, o<? extends Model, ? extends Data> paramo)
  {
    try
    {
      paramClass = new b(paramClass, paramClass1, paramo);
      this.cNh.add(this.cNh.size(), paramClass);
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  private static final class a
    implements n<Object, Object>
  {
    public final boolean aw(Object paramObject)
    {
      return false;
    }
    
    public final n.a<Object> b(Object paramObject, int paramInt1, int paramInt2, j paramj)
    {
      return null;
    }
  }
  
  private static final class b<Model, Data>
  {
    private final Class<Model> cNk;
    final o<? extends Model, ? extends Data> cNl;
    final Class<Data> csM;
    
    public b(Class<Model> paramClass, Class<Data> paramClass1, o<? extends Model, ? extends Data> paramo)
    {
      this.cNk = paramClass;
      this.csM = paramClass1;
      this.cNl = paramo;
    }
    
    public final boolean H(Class<?> paramClass)
    {
      return this.cNk.isAssignableFrom(paramClass);
    }
  }
  
  static final class c {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */