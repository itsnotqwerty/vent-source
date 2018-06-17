package io.intercom.a.a.a.c.d;

import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.i.h;

public class a<T>
  implements u<T>
{
  protected final T data;
  
  public a(T paramT)
  {
    this.data = h.checkNotNull(paramT, "Argument must not be null");
  }
  
  public final Class<T> Iu()
  {
    return this.data.getClass();
  }
  
  public final T get()
  {
    return (T)this.data;
  }
  
  public final int getSize()
  {
    return 1;
  }
  
  public final void recycle() {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */