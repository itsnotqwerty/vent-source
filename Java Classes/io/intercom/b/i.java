package io.intercom.b;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public final class i
  extends t
{
  public t cUa;
  
  public i(t paramt)
  {
    if (paramt == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    this.cUa = paramt;
  }
  
  public final t clearDeadline()
  {
    return this.cUa.clearDeadline();
  }
  
  public final t clearTimeout()
  {
    return this.cUa.clearTimeout();
  }
  
  public final long deadlineNanoTime()
  {
    return this.cUa.deadlineNanoTime();
  }
  
  public final t deadlineNanoTime(long paramLong)
  {
    return this.cUa.deadlineNanoTime(paramLong);
  }
  
  public final boolean hasDeadline()
  {
    return this.cUa.hasDeadline();
  }
  
  public final void throwIfReached()
    throws IOException
  {
    this.cUa.throwIfReached();
  }
  
  public final t timeout(long paramLong, TimeUnit paramTimeUnit)
  {
    return this.cUa.timeout(paramLong, paramTimeUnit);
  }
  
  public final long timeoutNanos()
  {
    return this.cUa.timeoutNanos();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/b/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */