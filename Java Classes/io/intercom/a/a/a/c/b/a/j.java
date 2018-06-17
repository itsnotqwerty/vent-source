package io.intercom.a.a.a.c.b.a;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

public final class j
  implements b
{
  private final h<a, Object> cLh = new h();
  private final b cLo = new b();
  private final Map<Class<?>, NavigableMap<Integer, Integer>> cLp = new HashMap();
  private final Map<Class<?>, a<?>> cLq = new HashMap();
  private int dI;
  private final int maxSize;
  
  public j()
  {
    this.maxSize = 4194304;
  }
  
  public j(int paramInt)
  {
    this.maxSize = paramInt;
  }
  
  private NavigableMap<Integer, Integer> D(Class<?> paramClass)
  {
    NavigableMap localNavigableMap = (NavigableMap)this.cLp.get(paramClass);
    Object localObject = localNavigableMap;
    if (localNavigableMap == null)
    {
      localObject = new TreeMap();
      this.cLp.put(paramClass, localObject);
    }
    return (NavigableMap<Integer, Integer>)localObject;
  }
  
  private <T> a<T> E(Class<T> paramClass)
  {
    a locala = (a)this.cLq.get(paramClass);
    Object localObject = locala;
    if (locala == null) {
      if (!paramClass.equals(int[].class)) {
        break label51;
      }
    }
    for (localObject = new i();; localObject = new g())
    {
      this.cLq.put(paramClass, localObject);
      return (a<T>)localObject;
      label51:
      if (!paramClass.equals(byte[].class)) {
        break;
      }
    }
    throw new IllegalArgumentException("No array pool found for: " + paramClass.getSimpleName());
  }
  
  private <T> T a(a parama, Class<T> paramClass)
  {
    a locala = E(paramClass);
    Object localObject = this.cLh.b(parama);
    if (localObject != null)
    {
      this.dI -= locala.au(localObject) * locala.Iv();
      b(locala.au(localObject), paramClass);
    }
    paramClass = (Class<T>)localObject;
    if (localObject == null)
    {
      if (Log.isLoggable(locala.getTag(), 2)) {
        Log.v(locala.getTag(), "Allocated " + parama.size + " bytes");
      }
      paramClass = locala.fg(parama.size);
    }
    return paramClass;
  }
  
  private void b(int paramInt, Class<?> paramClass)
  {
    paramClass = D(paramClass);
    Integer localInteger = (Integer)paramClass.get(Integer.valueOf(paramInt));
    if (localInteger == null) {
      throw new NullPointerException("Tried to decrement empty size, size: " + paramInt + ", this: " + this);
    }
    if (localInteger.intValue() == 1)
    {
      paramClass.remove(Integer.valueOf(paramInt));
      return;
    }
    paramClass.put(Integer.valueOf(paramInt), Integer.valueOf(localInteger.intValue() - 1));
  }
  
  private void fi(int paramInt)
  {
    while (this.dI > paramInt)
    {
      Object localObject = this.cLh.removeLast();
      io.intercom.a.a.a.i.h.checkNotNull(localObject, "Argument must not be null");
      a locala = E(localObject.getClass());
      this.dI -= locala.au(localObject) * locala.Iv();
      b(locala.au(localObject), localObject.getClass());
      if (Log.isLoggable(locala.getTag(), 2)) {
        Log.v(locala.getTag(), "evicted: " + locala.au(localObject));
      }
    }
  }
  
  public final <T> T C(Class<T> paramClass)
  {
    try
    {
      paramClass = a(this.cLo.c(8, paramClass), paramClass);
      return paramClass;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public final void Iw()
  {
    try
    {
      fi(0);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final <T> T a(int paramInt, Class<T> paramClass)
  {
    int k = 1;
    label138:
    for (;;)
    {
      try
      {
        Object localObject = (Integer)D(paramClass).ceilingKey(Integer.valueOf(paramInt));
        if (localObject != null)
        {
          if (this.dI == 0) {
            break label138;
          }
          if (this.maxSize / this.dI >= 2)
          {
            break label138;
            j = k;
            if (i == 0)
            {
              if (((Integer)localObject).intValue() <= paramInt * 8) {
                j = k;
              }
            }
            else
            {
              if (j == 0) {
                continue;
              }
              localObject = this.cLo.c(((Integer)localObject).intValue(), paramClass);
              paramClass = a((a)localObject, paramClass);
              return paramClass;
            }
          }
          else
          {
            i = 0;
            continue;
          }
        }
        int j = 0;
        continue;
        localObject = this.cLo.c(paramInt, paramClass);
        continue;
        int i = 1;
      }
      finally {}
    }
  }
  
  public final void fh(int paramInt)
  {
    if (paramInt >= 40) {}
    for (;;)
    {
      try
      {
        Iw();
        return;
      }
      finally {}
      if (paramInt >= 20) {
        fi(this.maxSize / 2);
      }
    }
  }
  
  public final <T> void put(T paramT)
  {
    for (;;)
    {
      int i;
      try
      {
        Object localObject2 = paramT.getClass();
        Object localObject1 = E((Class)localObject2);
        int k = ((a)localObject1).au(paramT);
        int j = k * ((a)localObject1).Iv();
        i = this.maxSize / 2;
        if (j <= i)
        {
          i = 1;
          if (i != 0) {}
        }
        else
        {
          i = 0;
          continue;
        }
        localObject1 = this.cLo.c(k, (Class)localObject2);
        this.cLh.a((m)localObject1, paramT);
        paramT = D((Class)localObject2);
        localObject2 = (Integer)paramT.get(Integer.valueOf(((a)localObject1).size));
        k = ((a)localObject1).size;
        if (localObject2 == null)
        {
          i = 1;
          paramT.put(Integer.valueOf(k), Integer.valueOf(i));
          this.dI += j;
          fi(this.maxSize);
          continue;
        }
        i = ((Integer)localObject2).intValue();
      }
      finally {}
      i += 1;
    }
  }
  
  private static final class a
    implements m
  {
    private final j.b cLr;
    Class<?> cLs;
    int size;
    
    a(j.b paramb)
    {
      this.cLr = paramb;
    }
    
    public final void Iy()
    {
      this.cLr.a(this);
    }
    
    public final boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if ((paramObject instanceof a))
      {
        paramObject = (a)paramObject;
        bool1 = bool2;
        if (this.size == ((a)paramObject).size)
        {
          bool1 = bool2;
          if (this.cLs == ((a)paramObject).cLs) {
            bool1 = true;
          }
        }
      }
      return bool1;
    }
    
    public final int hashCode()
    {
      int j = this.size;
      if (this.cLs != null) {}
      for (int i = this.cLs.hashCode();; i = 0) {
        return i + j * 31;
      }
    }
    
    public final String toString()
    {
      return "Key{size=" + this.size + "array=" + this.cLs + '}';
    }
  }
  
  private static final class b
    extends d<j.a>
  {
    final j.a c(int paramInt, Class<?> paramClass)
    {
      j.a locala = (j.a)IA();
      locala.size = paramInt;
      locala.cLs = paramClass;
      return locala;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/a/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */