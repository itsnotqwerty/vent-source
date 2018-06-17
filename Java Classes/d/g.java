package d;

import java.io.IOException;

public abstract class g
  implements r
{
  private final r dcc;
  
  public g(r paramr)
  {
    if (paramr == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    this.dcc = paramr;
  }
  
  public final t MK()
  {
    return this.dcc.MK();
  }
  
  public void b(c paramc, long paramLong)
    throws IOException
  {
    this.dcc.b(paramc, paramLong);
  }
  
  public void close()
    throws IOException
  {
    this.dcc.close();
  }
  
  public void flush()
    throws IOException
  {
    this.dcc.flush();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.dcc.toString() + ")";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */