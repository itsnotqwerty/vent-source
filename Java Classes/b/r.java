package b;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

public abstract interface r
  extends Closeable, Flushable
{
  public abstract void a(c paramc, long paramLong)
    throws IOException;
  
  public abstract void close()
    throws IOException;
  
  public abstract void flush()
    throws IOException;
  
  public abstract t zA();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */