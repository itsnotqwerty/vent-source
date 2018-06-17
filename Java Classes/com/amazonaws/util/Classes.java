package com.amazonaws.util;

public enum Classes
{
  public static Class<?> a(Class<?> paramClass, Object paramObject)
  {
    if ((paramObject == null) || (paramObject == Object.class))
    {
      paramObject = null;
      return (Class<?>)paramObject;
    }
    if (paramClass.isInterface()) {
      return null;
    }
    Class localClass;
    for (paramObject = paramObject.getClass();; paramObject = localClass)
    {
      localClass = ((Class)paramObject).getSuperclass();
      if (localClass == paramClass) {
        break;
      }
      if (localClass == null) {
        return null;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/Classes.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */