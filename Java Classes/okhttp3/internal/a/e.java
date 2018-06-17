package okhttp3.internal.a;

import d.c;
import d.g;
import d.r;
import java.io.IOException;

class e
  extends g
{
  private boolean hasErrors;
  
  e(r paramr)
  {
    super(paramr);
  }
  
  protected void MM() {}
  
  public final void b(c paramc, long paramLong)
    throws IOException
  {
    if (this.hasErrors)
    {
      paramc.ah(paramLong);
      return;
    }
    try
    {
      super.b(paramc, paramLong);
      return;
    }
    catch (IOException paramc)
    {
      this.hasErrors = true;
      MM();
    }
  }
  
  public void close()
    throws IOException
  {
    if (this.hasErrors) {
      return;
    }
    try
    {
      super.close();
      return;
    }
    catch (IOException localIOException)
    {
      this.hasErrors = true;
      MM();
    }
  }
  
  public void flush()
    throws IOException
  {
    if (this.hasErrors) {
      return;
    }
    try
    {
      super.flush();
      return;
    }
    catch (IOException localIOException)
    {
      this.hasErrors = true;
      MM();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */