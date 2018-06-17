package com.google.a.b;

import com.google.a.b.b.b;
import com.google.a.c.a;
import com.google.a.l;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

public final class c
{
  private final Map<Type, com.google.a.h<?>> bgy;
  private final b bha = b.vG();
  
  public c(Map<Type, com.google.a.h<?>> paramMap)
  {
    this.bgy = paramMap;
  }
  
  private <T> i<T> m(final Class<? super T> paramClass)
  {
    try
    {
      paramClass = paramClass.getDeclaredConstructor(new Class[0]);
      if (!paramClass.isAccessible()) {
        this.bha.a(paramClass);
      }
      paramClass = new i()
      {
        public final T vo()
        {
          try
          {
            Object localObject = paramClass.newInstance(null);
            return (T)localObject;
          }
          catch (InstantiationException localInstantiationException)
          {
            throw new RuntimeException("Failed to invoke " + paramClass + " with no args", localInstantiationException);
          }
          catch (InvocationTargetException localInvocationTargetException)
          {
            throw new RuntimeException("Failed to invoke " + paramClass + " with no args", localInvocationTargetException.getTargetException());
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            throw new AssertionError(localIllegalAccessException);
          }
        }
      };
      return paramClass;
    }
    catch (NoSuchMethodException paramClass) {}
    return null;
  }
  
  public final <T> i<T> b(final a<T> parama)
  {
    final Type localType = parama.biJ;
    final Class localClass = parama.bkb;
    parama = (com.google.a.h)this.bgy.get(localType);
    Object localObject;
    if (parama != null) {
      localObject = new i()
      {
        public final T vo()
        {
          return (T)parama.vd();
        }
      };
    }
    do
    {
      return (i<T>)localObject;
      parama = (com.google.a.h)this.bgy.get(localClass);
      if (parama != null) {
        new i()
        {
          public final T vo()
          {
            return (T)parama.vd();
          }
        };
      }
      parama = m(localClass);
      localObject = parama;
    } while (parama != null);
    if (Collection.class.isAssignableFrom(localClass)) {
      if (SortedSet.class.isAssignableFrom(localClass)) {
        parama = new i()
        {
          public final T vo()
          {
            return new TreeSet();
          }
        };
      }
    }
    for (;;)
    {
      localObject = parama;
      if (parama != null) {
        break;
      }
      new i()
      {
        private final m bhe = m.vu();
        
        public final T vo()
        {
          try
          {
            Object localObject = this.bhe.r(localClass);
            return (T)localObject;
          }
          catch (Exception localException)
          {
            throw new RuntimeException("Unable to invoke no-args constructor for " + localType + ". Registering an InstanceCreator with Gson for this type may fix this problem.", localException);
          }
        }
      };
      if (EnumSet.class.isAssignableFrom(localClass))
      {
        parama = new i()
        {
          public final T vo()
          {
            if ((localType instanceof ParameterizedType))
            {
              Type localType = ((ParameterizedType)localType).getActualTypeArguments()[0];
              if ((localType instanceof Class)) {
                return EnumSet.noneOf((Class)localType);
              }
              throw new l("Invalid EnumSet type: " + localType.toString());
            }
            throw new l("Invalid EnumSet type: " + localType.toString());
          }
        };
      }
      else if (Set.class.isAssignableFrom(localClass))
      {
        parama = new i()
        {
          public final T vo()
          {
            return new LinkedHashSet();
          }
        };
      }
      else if (Queue.class.isAssignableFrom(localClass))
      {
        parama = new i()
        {
          public final T vo()
          {
            return new ArrayDeque();
          }
        };
      }
      else
      {
        parama = new i()
        {
          public final T vo()
          {
            return new ArrayList();
          }
        };
        continue;
        if (Map.class.isAssignableFrom(localClass))
        {
          if (ConcurrentNavigableMap.class.isAssignableFrom(localClass)) {
            parama = new i()
            {
              public final T vo()
              {
                return new ConcurrentSkipListMap();
              }
            };
          } else if (ConcurrentMap.class.isAssignableFrom(localClass)) {
            parama = new i()
            {
              public final T vo()
              {
                return new ConcurrentHashMap();
              }
            };
          } else if (SortedMap.class.isAssignableFrom(localClass)) {
            parama = new i()
            {
              public final T vo()
              {
                return new TreeMap();
              }
            };
          } else if (((localType instanceof ParameterizedType)) && (!String.class.isAssignableFrom(a.e(((ParameterizedType)localType).getActualTypeArguments()[0]).bkb))) {
            parama = new i()
            {
              public final T vo()
              {
                return new LinkedHashMap();
              }
            };
          } else {
            parama = new i()
            {
              public final T vo()
              {
                return new h();
              }
            };
          }
        }
        else {
          parama = null;
        }
      }
    }
  }
  
  public final String toString()
  {
    return this.bgy.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */