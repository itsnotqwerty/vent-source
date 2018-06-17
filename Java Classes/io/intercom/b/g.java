package io.intercom.b;

import java.io.IOException;

public abstract class g
  implements r
{
  private final r delegate;
  
  public g(r paramr)
  {
    if (paramr == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    this.delegate = paramr;
  }
  
  public void close()
    throws IOException
  {
    this.delegate.close();
  }
  
  public final r delegate()
  {
    return this.delegate;
  }
  
  public void flush()
    throws IOException
  {
    this.delegate.flush();
  }
  
  public t timeout()
  {
    return this.delegate.timeout();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
  }
  
  public void write(c paramc, long paramLong)
    throws IOException
  {
    this.delegate.write(paramc, paramLong);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/b/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */