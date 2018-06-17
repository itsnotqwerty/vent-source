package okhttp3;

import d.e;
import java.io.Closeable;
import java.io.IOException;
import javax.annotation.Nullable;

public abstract class z
  implements Closeable
{
  public static z O(byte[] paramArrayOfByte)
  {
    d.c localc = new d.c().P(paramArrayOfByte);
    long l = paramArrayOfByte.length;
    if (localc == null) {
      throw new NullPointerException("source == null");
    }
    new z()
    {
      @Nullable
      public final s LX()
      {
        return this.cZs;
      }
      
      public final e LY()
      {
        return this.cZy;
      }
      
      public final long contentLength()
      {
        return this.val$contentLength;
      }
    };
  }
  
  @Nullable
  public abstract s LX();
  
  public abstract e LY();
  
  public final byte[] bytes()
    throws IOException
  {
    long l = contentLength();
    if (l > 2147483647L) {
      throw new IOException("Cannot buffer entire body for content length: " + l);
    }
    e locale = LY();
    try
    {
      byte[] arrayOfByte1 = locale.KA();
      okhttp3.internal.c.closeQuietly(locale);
      if ((l != -1L) && (l != arrayOfByte1.length)) {
        throw new IOException("Content-Length (" + l + ") and stream length (" + arrayOfByte1.length + ") disagree");
      }
    }
    finally
    {
      okhttp3.internal.c.closeQuietly(locale);
    }
    return arrayOfByte2;
  }
  
  public void close()
  {
    okhttp3.internal.c.closeQuietly(LY());
  }
  
  public abstract long contentLength();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */