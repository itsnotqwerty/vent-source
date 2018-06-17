package com.b.a.a;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class f<T>
{
  private final String b;
  private final Class<?> bIu;
  private final Class[] bIv;
  
  public f(Class<?> paramClass, String paramString, Class... paramVarArgs)
  {
    this.bIu = paramClass;
    this.b = paramString;
    this.bIv = paramVarArgs;
  }
  
  private Object a(T paramT, Object... paramVarArgs)
    throws InvocationTargetException
  {
    Method localMethod = v(paramT.getClass());
    if (localMethod == null) {
      return null;
    }
    try
    {
      paramT = localMethod.invoke(paramT, paramVarArgs);
      return paramT;
    }
    catch (IllegalAccessException paramT) {}
    return null;
  }
  
  private static Method a(Class<?> paramClass, String paramString, Class[] paramArrayOfClass)
  {
    try
    {
      paramClass = paramClass.getMethod(paramString, paramArrayOfClass);
      int i;
      return paramClass;
    }
    catch (NoSuchMethodException paramClass)
    {
      try
      {
        i = paramClass.getModifiers();
        if ((i & 0x1) != 0) {
          return paramClass;
        }
        return null;
      }
      catch (NoSuchMethodException paramString)
      {
        return paramClass;
      }
      paramClass = paramClass;
      return null;
    }
  }
  
  private Object c(T paramT, Object... paramVarArgs)
    throws InvocationTargetException
  {
    Method localMethod = v(paramT.getClass());
    if (localMethod == null) {
      throw new AssertionError("Method " + this.b + " not supported for object " + paramT);
    }
    try
    {
      paramT = localMethod.invoke(paramT, paramVarArgs);
      return paramT;
    }
    catch (IllegalAccessException paramT)
    {
      paramVarArgs = new AssertionError("Unexpectedly could not call: " + localMethod);
      paramVarArgs.initCause(paramT);
      throw paramVarArgs;
    }
  }
  
  private Method v(Class<?> paramClass)
  {
    if (this.b != null)
    {
      paramClass = a(paramClass, this.b, this.bIv);
      if ((paramClass == null) || (this.bIu == null) || (this.bIu.isAssignableFrom(paramClass.getReturnType()))) {}
    }
    else
    {
      return null;
    }
    return paramClass;
  }
  
  public final boolean a(T paramT)
  {
    return v(paramT.getClass()) != null;
  }
  
  public final Object b(T paramT, Object... paramVarArgs)
  {
    try
    {
      paramT = a(paramT, paramVarArgs);
      return paramT;
    }
    catch (InvocationTargetException paramT)
    {
      paramT = paramT.getTargetException();
      if ((paramT instanceof RuntimeException)) {
        throw ((RuntimeException)paramT);
      }
      paramVarArgs = new AssertionError("Unexpected exception");
      paramVarArgs.initCause(paramT);
      throw paramVarArgs;
    }
  }
  
  public final Object d(T paramT, Object... paramVarArgs)
  {
    try
    {
      paramT = c(paramT, paramVarArgs);
      return paramT;
    }
    catch (InvocationTargetException paramT)
    {
      paramT = paramT.getTargetException();
      if ((paramT instanceof RuntimeException)) {
        throw ((RuntimeException)paramT);
      }
      paramVarArgs = new AssertionError("Unexpected exception");
      paramVarArgs.initCause(paramT);
      throw paramVarArgs;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */