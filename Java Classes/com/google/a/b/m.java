package com.google.a.b;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

public abstract class m
{
  static void s(Class<?> paramClass)
  {
    int i = paramClass.getModifiers();
    if (Modifier.isInterface(i)) {
      throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: " + paramClass.getName());
    }
    if (Modifier.isAbstract(i)) {
      throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: " + paramClass.getName());
    }
  }
  
  public static m vu()
  {
    try
    {
      Object localObject1 = Class.forName("sun.misc.Unsafe");
      final Object localObject4 = ((Class)localObject1).getDeclaredField("theUnsafe");
      ((Field)localObject4).setAccessible(true);
      localObject4 = ((Field)localObject4).get(null);
      localObject1 = new m()
      {
        public final <T> T r(Class<T> paramAnonymousClass)
          throws Exception
        {
          s(paramAnonymousClass);
          return (T)this.bhO.invoke(localObject4, new Object[] { paramAnonymousClass });
        }
      };
      return (m)localObject1;
    }
    catch (Exception localException1)
    {
      try
      {
        Object localObject2 = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", new Class[] { Class.class });
        ((Method)localObject2).setAccessible(true);
        final int i = ((Integer)((Method)localObject2).invoke(null, new Object[] { Object.class })).intValue();
        localObject2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", new Class[] { Class.class, Integer.TYPE });
        ((Method)localObject2).setAccessible(true);
        localObject2 = new m()
        {
          public final <T> T r(Class<T> paramAnonymousClass)
            throws Exception
          {
            s(paramAnonymousClass);
            return (T)this.bhQ.invoke(null, new Object[] { paramAnonymousClass, Integer.valueOf(i) });
          }
        };
        return (m)localObject2;
      }
      catch (Exception localException2)
      {
        try
        {
          Object localObject3 = ObjectInputStream.class.getDeclaredMethod("newInstance", new Class[] { Class.class, Class.class });
          ((Method)localObject3).setAccessible(true);
          localObject3 = new m()
          {
            public final <T> T r(Class<T> paramAnonymousClass)
              throws Exception
            {
              s(paramAnonymousClass);
              return (T)this.bhQ.invoke(null, new Object[] { paramAnonymousClass, Object.class });
            }
          };
          return (m)localObject3;
        }
        catch (Exception localException3) {}
      }
    }
    new m()
    {
      public final <T> T r(Class<T> paramAnonymousClass)
      {
        throw new UnsupportedOperationException("Cannot allocate " + paramAnonymousClass);
      }
    };
  }
  
  public abstract <T> T r(Class<T> paramClass)
    throws Exception;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */