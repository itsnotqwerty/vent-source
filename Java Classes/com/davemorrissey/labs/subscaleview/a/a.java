package com.davemorrissey.labs.subscaleview.a;

public final class a<T>
  implements b<T>
{
  private Class<? extends T> axf;
  
  public a(Class<? extends T> paramClass)
  {
    this.axf = paramClass;
  }
  
  public final T kB()
    throws IllegalAccessException, InstantiationException
  {
    return (T)this.axf.newInstance();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/davemorrissey/labs/subscaleview/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */