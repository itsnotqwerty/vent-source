package com.b.a;

import b.e;
import com.b.a.a.i;
import java.io.Closeable;
import java.io.IOException;
import java.nio.charset.Charset;

public abstract class b
  implements Closeable
{
  public abstract long b()
    throws IOException;
  
  public void close()
    throws IOException
  {
    zp().close();
  }
  
  public final String f()
    throws IOException
  {
    byte[] arrayOfByte = yf();
    w localw = zo();
    if (localw != null)
    {
      localCharset = i.bII;
      if (localw.f == null) {}
    }
    for (Charset localCharset = Charset.forName(localw.f);; localCharset = i.bII) {
      return new String(arrayOfByte, localCharset.name());
    }
  }
  
  public final byte[] yf()
    throws IOException
  {
    long l = b();
    if (l > 2147483647L) {
      throw new IOException("Cannot buffer entire body for content length: " + l);
    }
    e locale = zp();
    try
    {
      byte[] arrayOfByte1 = locale.Lg();
      i.a(locale);
      if ((l != -1L) && (l != arrayOfByte1.length)) {
        throw new IOException("Content-Length and stream length disagree");
      }
    }
    finally
    {
      i.a(locale);
    }
    return arrayOfByte2;
  }
  
  public abstract w zo();
  
  public abstract e zp()
    throws IOException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */