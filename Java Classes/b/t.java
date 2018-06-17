package b;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

public class t
{
  public static final t cUH = new t()
  {
    public final t aw(long paramAnonymousLong)
    {
      return this;
    }
    
    public final t c(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
    {
      return this;
    }
    
    public final void g()
      throws IOException
    {}
  };
  private boolean a;
  private long c;
  private long d;
  
  public long Lk()
  {
    return this.d;
  }
  
  public boolean Ll()
  {
    return this.a;
  }
  
  public t Lm()
  {
    this.d = 0L;
    return this;
  }
  
  public t Ln()
  {
    this.a = false;
    return this;
  }
  
  public t aw(long paramLong)
  {
    this.a = true;
    this.c = paramLong;
    return this;
  }
  
  public t c(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("timeout < 0: " + paramLong);
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("unit == null");
    }
    this.d = paramTimeUnit.toNanos(paramLong);
    return this;
  }
  
  public long d()
  {
    if (!this.a) {
      throw new IllegalStateException("No deadline");
    }
    return this.c;
  }
  
  public void g()
    throws IOException
  {
    if (Thread.interrupted()) {
      throw new InterruptedIOException("thread interrupted");
    }
    if ((this.a) && (this.c - System.nanoTime() <= 0L)) {
      throw new InterruptedIOException("deadline reached");
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */