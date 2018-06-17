package okhttp3.internal.e;

import java.io.IOException;

public final class n
  extends IOException
{
  public final b dbz;
  
  public n(b paramb)
  {
    super("stream was reset: " + paramb);
    this.dbz = paramb;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/e/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */