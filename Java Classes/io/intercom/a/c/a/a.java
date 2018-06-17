package io.intercom.a.c.a;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

final class a
{
  private static final ConcurrentMap<Class<?>, Map<Class<?>, Method>> cTH = new ConcurrentHashMap();
  private static final ConcurrentMap<Class<?>, Map<Class<?>, Set<Method>>> cTI = new ConcurrentHashMap();
  
  private static void a(Class<?> paramClass, Map<Class<?>, Method> paramMap, Map<Class<?>, Set<Method>> paramMap1)
  {
    Method[] arrayOfMethod = paramClass.getDeclaredMethods();
    int j = arrayOfMethod.length;
    int i = 0;
    if (i < j)
    {
      Method localMethod = arrayOfMethod[i];
      Object localObject1;
      if (!localMethod.isBridge())
      {
        if (!localMethod.isAnnotationPresent(h.class)) {
          break label261;
        }
        localObject1 = localMethod.getParameterTypes();
        if (localObject1.length != 1) {
          throw new IllegalArgumentException("Method " + localMethod + " has @Subscribe annotation but requires " + localObject1.length + " arguments.  Methods must require a single argument.");
        }
        Object localObject2 = localObject1[0];
        if (((Class)localObject2).isInterface()) {
          throw new IllegalArgumentException("Method " + localMethod + " has @Subscribe annotation on " + localObject2 + " which is an interface.  Subscription must be on a concrete class type.");
        }
        if ((localMethod.getModifiers() & 0x1) == 0) {
          throw new IllegalArgumentException("Method " + localMethod + " has @Subscribe annotation on " + localObject2 + " but is not 'public'.");
        }
        Set localSet = (Set)paramMap1.get(localObject2);
        localObject1 = localSet;
        if (localSet == null)
        {
          localObject1 = new HashSet();
          paramMap1.put(localObject2, localObject1);
        }
        ((Set)localObject1).add(localMethod);
      }
      for (;;)
      {
        i += 1;
        break;
        label261:
        if (localMethod.isAnnotationPresent(g.class))
        {
          localObject1 = localMethod.getParameterTypes();
          if (localObject1.length != 0) {
            throw new IllegalArgumentException("Method " + localMethod + "has @Produce annotation but requires " + localObject1.length + " arguments.  Methods must require zero arguments.");
          }
          if (localMethod.getReturnType() == Void.class) {
            throw new IllegalArgumentException("Method " + localMethod + " has a return type of void.  Must declare a non-void type.");
          }
          localObject1 = localMethod.getReturnType();
          if (((Class)localObject1).isInterface()) {
            throw new IllegalArgumentException("Method " + localMethod + " has @Produce annotation on " + localObject1 + " which is an interface.  Producers must return a concrete class type.");
          }
          if (localObject1.equals(Void.TYPE)) {
            throw new IllegalArgumentException("Method " + localMethod + " has @Produce annotation but has no return type.");
          }
          if ((localMethod.getModifiers() & 0x1) == 0) {
            throw new IllegalArgumentException("Method " + localMethod + " has @Produce annotation on " + localObject1 + " but is not 'public'.");
          }
          if (paramMap.containsKey(localObject1)) {
            throw new IllegalArgumentException("Producer for type " + localObject1 + " has already been registered.");
          }
          paramMap.put(localObject1, localMethod);
        }
      }
    }
    cTH.put(paramClass, paramMap);
    cTI.put(paramClass, paramMap1);
  }
  
  static Map<Class<?>, e> aF(Object paramObject)
  {
    Object localObject3 = paramObject.getClass();
    HashMap localHashMap = new HashMap();
    Object localObject2 = (Map)cTH.get(localObject3);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new HashMap();
      a((Class)localObject3, (Map)localObject1, new HashMap());
    }
    if (!((Map)localObject1).isEmpty())
    {
      localObject1 = ((Map)localObject1).entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = new e(paramObject, (Method)((Map.Entry)localObject2).getValue());
        localHashMap.put(((Map.Entry)localObject2).getKey(), localObject3);
      }
    }
    return localHashMap;
  }
  
  static Map<Class<?>, Set<d>> aG(Object paramObject)
  {
    Object localObject3 = paramObject.getClass();
    HashMap localHashMap = new HashMap();
    Object localObject2 = (Map)cTI.get(localObject3);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new HashMap();
      a((Class)localObject3, new HashMap(), (Map)localObject1);
    }
    if (!((Map)localObject1).isEmpty())
    {
      localObject1 = ((Map)localObject1).entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = new HashSet();
        Iterator localIterator = ((Set)((Map.Entry)localObject2).getValue()).iterator();
        while (localIterator.hasNext()) {
          ((Set)localObject3).add(new d(paramObject, (Method)localIterator.next()));
        }
        localHashMap.put(((Map.Entry)localObject2).getKey(), localObject3);
      }
    }
    return localHashMap;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/c/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */