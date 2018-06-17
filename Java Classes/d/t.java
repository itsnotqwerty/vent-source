package d;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

public class t
{
  public static final t dcn = new t()
  {
    public final t aE(long paramAnonymousLong)
    {
      return this;
    }
    
    public final t d(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
    {
      return this;
    }
    
    public final void throwIfReached()
      throws IOException
    {}
  };
  private long deadlineNanoTime;
  private boolean hasDeadline;
  private long timeoutNanos;
  
  public t Np()
  {
    this.timeoutNanos = 0L;
    return this;
  }
  
  public t Nq()
  {
    this.hasDeadline = false;
    return this;
  }
  
  public t aE(long paramLong)
  {
    this.hasDeadline = true;
    this.deadlineNanoTime = paramLong;
    return this;
  }
  
  public t d(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("timeout < 0: " + paramLong);
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("unit == null");
    }
    this.timeoutNanos = paramTimeUnit.toNanos(paramLong);
    return this;
  }
  
  public long deadlineNanoTime()
  {
    if (!this.hasDeadline) {
      throw new IllegalStateException("No deadline");
    }
    return this.deadlineNanoTime;
  }
  
  public boolean hasDeadline()
  {
    return this.hasDeadline;
  }
  
  public void throwIfReached()
    throws IOException
  {
    if (Thread.interrupted()) {
      throw new InterruptedIOException("thread interrupted");
    }
    if ((this.hasDeadline) && (this.deadlineNanoTime - System.nanoTime() <= 0L)) {
      throw new InterruptedIOException("deadline reached");
    }
  }
  
  public long timeoutNanos()
  {
    return this.timeoutNanos;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */