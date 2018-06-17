package io.intercom.okhttp3;

import io.intercom.b.c;
import io.intercom.b.e;
import io.intercom.okhttp3.internal.Util;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

public abstract class ResponseBody
  implements Closeable
{
  private Reader reader;
  
  private Charset charset()
  {
    MediaType localMediaType = contentType();
    if (localMediaType != null) {
      return localMediaType.charset(Util.UTF_8);
    }
    return Util.UTF_8;
  }
  
  public static ResponseBody create(@Nullable MediaType paramMediaType, final long paramLong, e parame)
  {
    if (parame == null) {
      throw new NullPointerException("source == null");
    }
    new ResponseBody()
    {
      public final long contentLength()
      {
        return paramLong;
      }
      
      @Nullable
      public final MediaType contentType()
      {
        return ResponseBody.this;
      }
      
      public final e source()
      {
        return this.val$content;
      }
    };
  }
  
  public static ResponseBody create(@Nullable MediaType paramMediaType, String paramString)
  {
    Object localObject = Util.UTF_8;
    MediaType localMediaType = paramMediaType;
    if (paramMediaType != null)
    {
      Charset localCharset = paramMediaType.charset();
      localObject = localCharset;
      localMediaType = paramMediaType;
      if (localCharset == null)
      {
        localObject = Util.UTF_8;
        localMediaType = MediaType.parse(paramMediaType + "; charset=utf-8");
      }
    }
    paramMediaType = new c().a(paramString, 0, paramString.length(), (Charset)localObject);
    return create(localMediaType, paramMediaType.size, paramMediaType);
  }
  
  public static ResponseBody create(@Nullable MediaType paramMediaType, byte[] paramArrayOfByte)
  {
    c localc = new c().F(paramArrayOfByte);
    return create(paramMediaType, paramArrayOfByte.length, localc);
  }
  
  public final InputStream byteStream()
  {
    return source().Ks();
  }
  
  public final byte[] bytes()
    throws IOException
  {
    long l = contentLength();
    if (l > 2147483647L) {
      throw new IOException("Cannot buffer entire body for content length: " + l);
    }
    e locale = source();
    try
    {
      byte[] arrayOfByte1 = locale.KA();
      Util.closeQuietly(locale);
      if ((l != -1L) && (l != arrayOfByte1.length)) {
        throw new IOException("Content-Length (" + l + ") and stream length (" + arrayOfByte1.length + ") disagree");
      }
    }
    finally
    {
      Util.closeQuietly(locale);
    }
    return arrayOfByte2;
  }
  
  public final Reader charStream()
  {
    Object localObject = this.reader;
    if (localObject != null) {
      return (Reader)localObject;
    }
    localObject = new BomAwareReader(source(), charset());
    this.reader = ((Reader)localObject);
    return (Reader)localObject;
  }
  
  public void close()
  {
    Util.closeQuietly(source());
  }
  
  public abstract long contentLength();
  
  @Nullable
  public abstract MediaType contentType();
  
  public abstract e source();
  
  public final String string()
    throws IOException
  {
    e locale = source();
    try
    {
      String str = locale.a(Util.bomAwareCharset(locale, charset()));
      return str;
    }
    finally
    {
      Util.closeQuietly(locale);
    }
  }
  
  static final class BomAwareReader
    extends Reader
  {
    private final Charset charset;
    private boolean closed;
    private Reader delegate;
    private final e source;
    
    BomAwareReader(e parame, Charset paramCharset)
    {
      this.source = parame;
      this.charset = paramCharset;
    }
    
    public final void close()
      throws IOException
    {
      this.closed = true;
      if (this.delegate != null)
      {
        this.delegate.close();
        return;
      }
      this.source.close();
    }
    
    public final int read(char[] paramArrayOfChar, int paramInt1, int paramInt2)
      throws IOException
    {
      if (this.closed) {
        throw new IOException("Stream closed");
      }
      Reader localReader = this.delegate;
      Object localObject = localReader;
      if (localReader == null)
      {
        localObject = Util.bomAwareCharset(this.source, this.charset);
        localObject = new InputStreamReader(this.source.Ks(), (Charset)localObject);
        this.delegate = ((Reader)localObject);
      }
      return ((Reader)localObject).read(paramArrayOfChar, paramInt1, paramInt2);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/ResponseBody.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */