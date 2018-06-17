package io.intercom.b;

import java.io.IOException;

public abstract class h
  implements s
{
  private final s delegate;
  
  public h(s params)
  {
    if (params == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    this.delegate = params;
  }
  
  public void close()
    throws IOException
  {
    this.delegate.close();
  }
  
  public final s delegate()
  {
    return this.delegate;
  }
  
  public long read(c paramc, long paramLong)
    throws IOException
  {
    return this.delegate.read(paramc, paramLong);
  }
  
  public t timeout()
  {
    return this.delegate.timeout();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/b/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */