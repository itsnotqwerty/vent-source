package com.amazonaws.util;

public enum ClassLoaderHelper
{
  private static Class<?> a(String paramString, Class<?>[] paramArrayOfClass)
  {
    if (paramArrayOfClass != null)
    {
      int j = paramArrayOfClass.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramArrayOfClass[i].getClassLoader();
        if (localObject != null) {
          try
          {
            localObject = ((ClassLoader)localObject).loadClass(paramString);
            return (Class<?>)localObject;
          }
          catch (ClassNotFoundException localClassNotFoundException) {}
        }
        i += 1;
      }
    }
    return null;
  }
  
  private static Class<?> au(String paramString)
  {
    ClassLoader localClassLoader = Thread.currentThread().getContextClassLoader();
    if (localClassLoader == null) {
      return null;
    }
    try
    {
      paramString = localClassLoader.loadClass(paramString);
      return paramString;
    }
    catch (ClassNotFoundException paramString) {}
    return null;
  }
  
  public static Class<?> b(String paramString, Class<?>... paramVarArgs)
    throws ClassNotFoundException
  {
    Object localObject = a(paramString, paramVarArgs);
    paramVarArgs = (Class<?>[])localObject;
    if (localObject == null) {
      paramVarArgs = au(paramString);
    }
    localObject = paramVarArgs;
    if (paramVarArgs == null) {
      localObject = Class.forName(paramString);
    }
    return (Class<?>)localObject;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/ClassLoaderHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */