package io.intercom.b;

import java.io.Closeable;
import java.io.IOException;

public abstract interface s
  extends Closeable
{
  public abstract void close()
    throws IOException;
  
  public abstract long read(c paramc, long paramLong)
    throws IOException;
  
  public abstract t timeout();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/b/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */