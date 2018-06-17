package b;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public final class i
  extends t
{
  public t cUA;
  
  public i(t paramt)
  {
    if (paramt == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    this.cUA = paramt;
  }
  
  public final long Lk()
  {
    return this.cUA.Lk();
  }
  
  public final boolean Ll()
  {
    return this.cUA.Ll();
  }
  
  public final t Lm()
  {
    return this.cUA.Lm();
  }
  
  public final t Ln()
  {
    return this.cUA.Ln();
  }
  
  public final t aw(long paramLong)
  {
    return this.cUA.aw(paramLong);
  }
  
  public final t c(long paramLong, TimeUnit paramTimeUnit)
  {
    return this.cUA.c(paramLong, paramTimeUnit);
  }
  
  public final long d()
  {
    return this.cUA.d();
  }
  
  public final void g()
    throws IOException
  {
    this.cUA.g();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */