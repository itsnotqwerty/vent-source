package android.arch.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class h
{
  private static Map<Class, Integer> aP = new HashMap();
  private static Map<Class, List<Constructor<? extends b>>> aQ = new HashMap();
  
  private static b a(Constructor<? extends b> paramConstructor, Object paramObject)
  {
    try
    {
      paramConstructor = (b)paramConstructor.newInstance(new Object[] { paramObject });
      return paramConstructor;
    }
    catch (IllegalAccessException paramConstructor)
    {
      throw new RuntimeException(paramConstructor);
    }
    catch (InstantiationException paramConstructor)
    {
      throw new RuntimeException(paramConstructor);
    }
    catch (InvocationTargetException paramConstructor)
    {
      throw new RuntimeException(paramConstructor);
    }
  }
  
  private static Constructor<? extends b> d(Class<?> paramClass)
  {
    for (;;)
    {
      try
      {
        localObject = paramClass.getPackage();
        String str = paramClass.getCanonicalName();
        if (localObject != null)
        {
          localObject = ((Package)localObject).getName();
          if (((String)localObject).isEmpty())
          {
            str = str.replace(".", "_") + "_LifecycleAdapter";
            if (((String)localObject).isEmpty())
            {
              localObject = str;
              paramClass = Class.forName((String)localObject).getDeclaredConstructor(new Class[] { paramClass });
              if (paramClass.isAccessible()) {
                break label146;
              }
              paramClass.setAccessible(true);
              return paramClass;
            }
          }
          else
          {
            str = str.substring(((String)localObject).length() + 1);
            continue;
          }
          localObject = (String)localObject + "." + str;
          continue;
          return paramClass;
        }
      }
      catch (ClassNotFoundException paramClass)
      {
        return null;
      }
      catch (NoSuchMethodException paramClass)
      {
        throw new RuntimeException(paramClass);
      }
      label146:
      Object localObject = "";
    }
  }
  
  private static int e(Class<?> paramClass)
  {
    int j = 0;
    if (aP.containsKey(paramClass)) {
      return ((Integer)aP.get(paramClass)).intValue();
    }
    Object localObject1;
    int i;
    boolean bool;
    label119:
    Object localObject2;
    int k;
    if (paramClass.getCanonicalName() != null)
    {
      localObject1 = d(paramClass);
      if (localObject1 != null)
      {
        aQ.put(paramClass, Collections.singletonList(localObject1));
        i = 2;
        aP.put(paramClass, Integer.valueOf(i));
        return i;
      }
      localObject1 = a.aq;
      if (((a)localObject1).as.containsKey(paramClass))
      {
        bool = ((Boolean)((a)localObject1).as.get(paramClass)).booleanValue();
        if (bool) {
          break label352;
        }
        localObject2 = paramClass.getSuperclass();
        localObject1 = null;
        if (f((Class)localObject2))
        {
          if (e((Class)localObject2) == 1) {
            break label352;
          }
          localObject1 = new ArrayList((Collection)aQ.get(localObject2));
        }
        localObject2 = paramClass.getInterfaces();
        k = localObject2.length;
        i = j;
        label184:
        if (i >= k) {
          break label330;
        }
        Class localClass = localObject2[i];
        if (!f(localClass)) {
          break label360;
        }
        if (e(localClass) == 1) {
          break label352;
        }
        if (localObject1 != null) {
          break label357;
        }
        localObject1 = new ArrayList();
        label226:
        ((List)localObject1).addAll((Collection)aQ.get(localClass));
      }
    }
    label308:
    label330:
    label352:
    label357:
    label360:
    for (;;)
    {
      i += 1;
      break label184;
      localObject2 = a.b(paramClass);
      k = localObject2.length;
      i = 0;
      for (;;)
      {
        if (i >= k) {
          break label308;
        }
        if ((l)localObject2[i].getAnnotation(l.class) != null)
        {
          ((a)localObject1).a(paramClass, (Method[])localObject2);
          bool = true;
          break;
        }
        i += 1;
      }
      ((a)localObject1).as.put(paramClass, Boolean.valueOf(false));
      bool = false;
      break label119;
      if (localObject1 != null)
      {
        aQ.put(paramClass, localObject1);
        i = 2;
        break;
      }
      i = 1;
      break;
      break label226;
    }
  }
  
  static GenericLifecycleObserver f(Object paramObject)
  {
    if ((paramObject instanceof FullLifecycleObserver)) {
      return new FullLifecycleObserverAdapter((FullLifecycleObserver)paramObject);
    }
    if ((paramObject instanceof GenericLifecycleObserver)) {
      return (GenericLifecycleObserver)paramObject;
    }
    Object localObject = paramObject.getClass();
    if (e((Class)localObject) == 2)
    {
      localObject = (List)aQ.get(localObject);
      if (((List)localObject).size() == 1) {
        return new SingleGeneratedAdapterObserver(a((Constructor)((List)localObject).get(0), paramObject));
      }
      b[] arrayOfb = new b[((List)localObject).size()];
      int i = 0;
      while (i < ((List)localObject).size())
      {
        arrayOfb[i] = a((Constructor)((List)localObject).get(i), paramObject);
        i += 1;
      }
      return new CompositeGeneratedAdaptersObserver(arrayOfb);
    }
    return new ReflectiveGenericLifecycleObserver(paramObject);
  }
  
  private static boolean f(Class<?> paramClass)
  {
    return (paramClass != null) && (d.class.isAssignableFrom(paramClass));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/arch/lifecycle/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */