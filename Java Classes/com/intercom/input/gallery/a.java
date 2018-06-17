package com.intercom.input.gallery;

public final class a
{
  public static <T> T u(Class<? extends T> paramClass)
  {
    try
    {
      Object localObject = paramClass.newInstance();
      return (T)localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new RuntimeException("Could not instantiate " + paramClass, localInstantiationException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException("Could not instantiate" + paramClass + ", make sure the class is public and static", localIllegalAccessException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */