package android.arch.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class a
{
  static a aq = new a();
  private final Map<Class, a> ar = new HashMap();
  final Map<Class, Boolean> as = new HashMap();
  
  private static void a(Map<b, c.a> paramMap, b paramb, c.a parama, Class paramClass)
  {
    c.a locala = (c.a)paramMap.get(paramb);
    if ((locala != null) && (parama != locala))
    {
      paramMap = paramb.aw;
      throw new IllegalArgumentException("Method " + paramMap.getName() + " in " + paramClass.getName() + " already declared with different @OnLifecycleEvent value: previous value " + locala + ", new value " + parama);
    }
    if (locala == null) {
      paramMap.put(paramb, parama);
    }
  }
  
  static Method[] b(Class paramClass)
  {
    try
    {
      paramClass = paramClass.getDeclaredMethods();
      return paramClass;
    }
    catch (NoClassDefFoundError paramClass)
    {
      throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", paramClass);
    }
  }
  
  final a a(Class paramClass, Method[] paramArrayOfMethod)
  {
    Object localObject1 = paramClass.getSuperclass();
    HashMap localHashMap = new HashMap();
    if (localObject1 != null)
    {
      localObject1 = c((Class)localObject1);
      if (localObject1 != null) {
        localHashMap.putAll(((a)localObject1).au);
      }
    }
    localObject1 = paramClass.getInterfaces();
    int j = localObject1.length;
    int i = 0;
    Object localObject2;
    Object localObject3;
    while (i < j)
    {
      localObject2 = c(localObject1[i]).au.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject2).next();
        a(localHashMap, (b)((Map.Entry)localObject3).getKey(), (c.a)((Map.Entry)localObject3).getValue(), paramClass);
      }
      i += 1;
    }
    if (paramArrayOfMethod != null) {}
    boolean bool;
    for (;;)
    {
      int k = paramArrayOfMethod.length;
      j = 0;
      bool = false;
      if (j >= k) {
        break label339;
      }
      localObject1 = paramArrayOfMethod[j];
      localObject3 = (l)((Method)localObject1).getAnnotation(l.class);
      if (localObject3 == null) {
        break label379;
      }
      localObject2 = ((Method)localObject1).getParameterTypes();
      if (localObject2.length <= 0) {
        break label382;
      }
      if (localObject2[0].isAssignableFrom(e.class)) {
        break;
      }
      throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
      paramArrayOfMethod = b(paramClass);
    }
    label339:
    label379:
    label382:
    for (i = 1;; i = 0)
    {
      localObject3 = ((l)localObject3).ae();
      if (localObject2.length > 1)
      {
        if (!localObject2[1].isAssignableFrom(c.a.class)) {
          throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
        }
        if (localObject3 != c.a.ON_ANY) {
          throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
        }
        i = 2;
      }
      if (localObject2.length > 2) {
        throw new IllegalArgumentException("cannot have more than 2 params");
      }
      a(localHashMap, new b(i, (Method)localObject1), (c.a)localObject3, paramClass);
      bool = true;
      for (;;)
      {
        j += 1;
        break;
        paramArrayOfMethod = new a(localHashMap);
        this.ar.put(paramClass, paramArrayOfMethod);
        this.as.put(paramClass, Boolean.valueOf(bool));
        return paramArrayOfMethod;
      }
    }
  }
  
  final a c(Class paramClass)
  {
    a locala = (a)this.ar.get(paramClass);
    if (locala != null) {
      return locala;
    }
    return a(paramClass, null);
  }
  
  static final class a
  {
    final Map<c.a, List<a.b>> at;
    final Map<a.b, c.a> au;
    
    a(Map<a.b, c.a> paramMap)
    {
      this.au = paramMap;
      this.at = new HashMap();
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        c.a locala = (c.a)localEntry.getValue();
        List localList = (List)this.at.get(locala);
        paramMap = localList;
        if (localList == null)
        {
          paramMap = new ArrayList();
          this.at.put(locala, paramMap);
        }
        paramMap.add(localEntry.getKey());
      }
    }
    
    static void a(List<a.b> paramList, e parame, c.a parama, Object paramObject)
    {
      int i;
      if (paramList != null) {
        i = paramList.size() - 1;
      }
      for (;;)
      {
        if (i >= 0)
        {
          a.b localb = (a.b)paramList.get(i);
          try
          {
            switch (localb.av)
            {
            case 0: 
              localb.aw.invoke(paramObject, new Object[0]);
            }
          }
          catch (InvocationTargetException paramList)
          {
            throw new RuntimeException("Failed to call observer method", paramList.getCause());
            localb.aw.invoke(paramObject, new Object[] { parame });
          }
          catch (IllegalAccessException paramList)
          {
            throw new RuntimeException(paramList);
          }
          localb.aw.invoke(paramObject, new Object[] { parame, parama });
        }
        else
        {
          return;
        }
        i -= 1;
      }
    }
  }
  
  static final class b
  {
    final int av;
    final Method aw;
    
    b(int paramInt, Method paramMethod)
    {
      this.av = paramInt;
      this.aw = paramMethod;
      this.aw.setAccessible(true);
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if ((paramObject == null) || (getClass() != paramObject.getClass())) {
          return false;
        }
        paramObject = (b)paramObject;
      } while ((this.av == ((b)paramObject).av) && (this.aw.getName().equals(((b)paramObject).aw.getName())));
      return false;
    }
    
    public final int hashCode()
    {
      return this.av * 31 + this.aw.getName().hashCode();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/arch/lifecycle/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */