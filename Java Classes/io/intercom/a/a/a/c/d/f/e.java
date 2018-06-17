package io.intercom.a.a.a.c.d.f;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class e
{
  private final List<a<?, ?>> cOW = new ArrayList();
  
  public final <Z, R> void b(Class<Z> paramClass, Class<R> paramClass1, d<Z, R> paramd)
  {
    try
    {
      this.cOW.add(new a(paramClass, paramClass1, paramd));
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public final <Z, R> d<Z, R> c(Class<Z> paramClass, Class<R> paramClass1)
  {
    try
    {
      if (paramClass1.isAssignableFrom(paramClass)) {}
      a locala;
      for (paramClass = f.Jr();; paramClass = locala.cJY)
      {
        return paramClass;
        Iterator localIterator = this.cOW.iterator();
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
          locala = (a)localIterator.next();
        } while (!locala.e(paramClass, paramClass1));
      }
      throw new IllegalArgumentException("No transcoder registered to transcode from " + paramClass + " to " + paramClass1);
    }
    finally {}
  }
  
  public final <Z, R> List<Class<R>> d(Class<Z> paramClass, Class<R> paramClass1)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      if (paramClass1.isAssignableFrom(paramClass)) {
        localArrayList.add(paramClass1);
      }
      for (;;)
      {
        return localArrayList;
        Iterator localIterator = this.cOW.iterator();
        while (localIterator.hasNext()) {
          if (((a)localIterator.next()).e(paramClass, paramClass1)) {
            localArrayList.add(paramClass1);
          }
        }
      }
    }
    finally {}
  }
  
  private static final class a<Z, R>
  {
    final d<Z, R> cJY;
    private final Class<Z> cOX;
    private final Class<R> cOY;
    
    a(Class<Z> paramClass, Class<R> paramClass1, d<Z, R> paramd)
    {
      this.cOX = paramClass;
      this.cOY = paramClass1;
      this.cJY = paramd;
    }
    
    public final boolean e(Class<?> paramClass1, Class<?> paramClass2)
    {
      return (this.cOX.isAssignableFrom(paramClass1)) && (paramClass2.isAssignableFrom(this.cOY));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/f/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */