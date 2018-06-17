package io.intercom.a.b.a.b;

import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class i
{
  private static final Map<Class<?>, Class<?>> bhM;
  private static final Map<Class<?>, Class<?>> bhN;
  
  static
  {
    HashMap localHashMap1 = new HashMap(16);
    HashMap localHashMap2 = new HashMap(16);
    a(localHashMap1, localHashMap2, Boolean.TYPE, Boolean.class);
    a(localHashMap1, localHashMap2, Byte.TYPE, Byte.class);
    a(localHashMap1, localHashMap2, Character.TYPE, Character.class);
    a(localHashMap1, localHashMap2, Double.TYPE, Double.class);
    a(localHashMap1, localHashMap2, Float.TYPE, Float.class);
    a(localHashMap1, localHashMap2, Integer.TYPE, Integer.class);
    a(localHashMap1, localHashMap2, Long.TYPE, Long.class);
    a(localHashMap1, localHashMap2, Short.TYPE, Short.class);
    a(localHashMap1, localHashMap2, Void.TYPE, Void.class);
    bhM = Collections.unmodifiableMap(localHashMap1);
    bhN = Collections.unmodifiableMap(localHashMap2);
  }
  
  private static void a(Map<Class<?>, Class<?>> paramMap1, Map<Class<?>, Class<?>> paramMap2, Class<?> paramClass1, Class<?> paramClass2)
  {
    paramMap1.put(paramClass1, paramClass2);
    paramMap2.put(paramClass2, paramClass1);
  }
  
  public static boolean d(Type paramType)
  {
    return bhM.containsKey(paramType);
  }
  
  public static <T> Class<T> q(Class<T> paramClass)
  {
    Class localClass = (Class)bhM.get(a.E(paramClass));
    if (localClass == null) {
      return paramClass;
    }
    return localClass;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */