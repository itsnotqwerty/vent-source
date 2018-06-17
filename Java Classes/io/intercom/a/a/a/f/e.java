package io.intercom.a.a.a.f;

import io.intercom.a.a.a.c.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class e
{
  private final List<String> cPG = new ArrayList();
  private final Map<String, List<a<?, ?>>> cPH = new HashMap();
  
  private List<a<?, ?>> fa(String paramString)
  {
    try
    {
      if (!this.cPG.contains(paramString)) {
        this.cPG.add(paramString);
      }
      List localList = (List)this.cPH.get(paramString);
      Object localObject = localList;
      if (localList == null)
      {
        localObject = new ArrayList();
        this.cPH.put(paramString, localObject);
      }
      return (List<a<?, ?>>)localObject;
    }
    finally {}
  }
  
  public final void D(List<String> paramList)
  {
    try
    {
      Object localObject = new ArrayList(this.cPG);
      this.cPG.clear();
      this.cPG.addAll(paramList);
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        if (!paramList.contains(str)) {
          this.cPG.add(str);
        }
      }
    }
    finally {}
  }
  
  public final <T, R> void a(String paramString, k<T, R> paramk, Class<T> paramClass, Class<R> paramClass1)
  {
    try
    {
      fa(paramString).add(new a(paramClass, paramClass1, paramk));
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public final <T, R> List<k<T, R>> g(Class<T> paramClass, Class<R> paramClass1)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = this.cPG.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (String)localIterator.next();
        localObject = (List)this.cPH.get(localObject);
        if (localObject != null)
        {
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            a locala = (a)((Iterator)localObject).next();
            if (locala.e(paramClass, paramClass1)) {
              localArrayList.add(locala.cNy);
            }
          }
        }
      }
    }
    finally {}
    return localArrayList;
  }
  
  public final <T, R> List<Class<R>> h(Class<T> paramClass, Class<R> paramClass1)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = this.cPG.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (String)localIterator.next();
        localObject = (List)this.cPH.get(localObject);
        if (localObject != null)
        {
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            a locala = (a)((Iterator)localObject).next();
            if (locala.e(paramClass, paramClass1)) {
              localArrayList.add(locala.cJb);
            }
          }
        }
      }
    }
    finally {}
    return localArrayList;
  }
  
  private static final class a<T, R>
  {
    final Class<R> cJb;
    final k<T, R> cNy;
    private final Class<T> csM;
    
    public a(Class<T> paramClass, Class<R> paramClass1, k<T, R> paramk)
    {
      this.csM = paramClass;
      this.cJb = paramClass1;
      this.cNy = paramk;
    }
    
    public final boolean e(Class<?> paramClass1, Class<?> paramClass2)
    {
      return (this.csM.isAssignableFrom(paramClass1)) && (paramClass2.isAssignableFrom(this.cJb));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/f/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */