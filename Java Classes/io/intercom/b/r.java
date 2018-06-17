package io.intercom.b;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

public abstract interface r
  extends Closeable, Flushable
{
  public abstract void close()
    throws IOException;
  
  public abstract void flush()
    throws IOException;
  
  public abstract t timeout();
  
  public abstract void write(c paramc, long paramLong)
    throws IOException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/b/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */