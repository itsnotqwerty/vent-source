package io.intercom.okhttp3.internal.cache;

import io.intercom.b.c;
import io.intercom.b.g;
import io.intercom.b.r;
import java.io.IOException;

class FaultHidingSink
  extends g
{
  private boolean hasErrors;
  
  FaultHidingSink(r paramr)
  {
    super(paramr);
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
      onException(localIOException);
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
      onException(localIOException);
    }
  }
  
  protected void onException(IOException paramIOException) {}
  
  public void write(c paramc, long paramLong)
    throws IOException
  {
    if (this.hasErrors)
    {
      paramc.ah(paramLong);
      return;
    }
    try
    {
      super.write(paramc, paramLong);
      return;
    }
    catch (IOException paramc)
    {
      this.hasErrors = true;
      onException(paramc);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/cache/FaultHidingSink.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */