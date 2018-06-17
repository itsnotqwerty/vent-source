package d;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public final class i
  extends t
{
  public t dce;
  
  public i(t paramt)
  {
    if (paramt == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    this.dce = paramt;
  }
  
  public final t Np()
  {
    return this.dce.Np();
  }
  
  public final t Nq()
  {
    return this.dce.Nq();
  }
  
  public final t aE(long paramLong)
  {
    return this.dce.aE(paramLong);
  }
  
  public final t d(long paramLong, TimeUnit paramTimeUnit)
  {
    return this.dce.d(paramLong, paramTimeUnit);
  }
  
  public final long deadlineNanoTime()
  {
    return this.dce.deadlineNanoTime();
  }
  
  public final boolean hasDeadline()
  {
    return this.dce.hasDeadline();
  }
  
  public final void throwIfReached()
    throws IOException
  {
    this.dce.throwIfReached();
  }
  
  public final long timeoutNanos()
  {
    return this.dce.timeoutNanos();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */