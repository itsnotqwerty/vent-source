package b;

import java.io.IOException;

public abstract class h
  implements s
{
  private final s cUx;
  
  public h(s params)
  {
    if (params == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    this.cUx = params;
  }
  
  public long b(c paramc, long paramLong)
    throws IOException
  {
    return this.cUx.b(paramc, paramLong);
  }
  
  public void close()
    throws IOException
  {
    this.cUx.close();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.cUx.toString() + ")";
  }
  
  public final t zA()
  {
    return this.cUx.zA();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */