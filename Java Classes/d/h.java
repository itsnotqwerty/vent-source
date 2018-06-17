package d;

import java.io.IOException;

public abstract class h
  implements s
{
  protected final s dcd;
  
  public h(s params)
  {
    if (params == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    this.dcd = params;
  }
  
  public final t MK()
  {
    return this.dcd.MK();
  }
  
  public long a(c paramc, long paramLong)
    throws IOException
  {
    return this.dcd.a(paramc, paramLong);
  }
  
  public void close()
    throws IOException
  {
    this.dcd.close();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.dcd.toString() + ")";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */