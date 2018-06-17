package io.intercom.okhttp3;

import io.intercom.b.d;
import io.intercom.b.f;
import io.intercom.b.l;
import io.intercom.b.s;
import io.intercom.okhttp3.internal.Util;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

public abstract class RequestBody
{
  public static RequestBody create(@Nullable MediaType paramMediaType, final f paramf)
  {
    new RequestBody()
    {
      public final long contentLength()
        throws IOException
      {
        return paramf.size();
      }
      
      @Nullable
      public final MediaType contentType()
      {
        return RequestBody.this;
      }
      
      public final void writeTo(d paramAnonymousd)
        throws IOException
      {
        paramAnonymousd.c(paramf);
      }
    };
  }
  
  public static RequestBody create(@Nullable MediaType paramMediaType, final File paramFile)
  {
    if (paramFile == null) {
      throw new NullPointerException("content == null");
    }
    new RequestBody()
    {
      public final long contentLength()
      {
        return paramFile.length();
      }
      
      @Nullable
      public final MediaType contentType()
      {
        return RequestBody.this;
      }
      
      public final void writeTo(d paramAnonymousd)
        throws IOException
      {
        Object localObject = null;
        try
        {
          s locals = l.source(paramFile);
          localObject = locals;
          paramAnonymousd.a(locals);
          Util.closeQuietly(locals);
          return;
        }
        finally
        {
          Util.closeQuietly((Closeable)localObject);
        }
      }
    };
  }
  
  public static RequestBody create(@Nullable MediaType paramMediaType, String paramString)
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
    return create(localMediaType, paramString.getBytes((Charset)localObject));
  }
  
  public static RequestBody create(@Nullable MediaType paramMediaType, byte[] paramArrayOfByte)
  {
    return create(paramMediaType, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static RequestBody create(@Nullable MediaType paramMediaType, final byte[] paramArrayOfByte, final int paramInt1, final int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("content == null");
    }
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    new RequestBody()
    {
      public final long contentLength()
      {
        return paramInt2;
      }
      
      @Nullable
      public final MediaType contentType()
      {
        return RequestBody.this;
      }
      
      public final void writeTo(d paramAnonymousd)
        throws IOException
      {
        paramAnonymousd.c(paramArrayOfByte, paramInt1, paramInt2);
      }
    };
  }
  
  public long contentLength()
    throws IOException
  {
    return -1L;
  }
  
  @Nullable
  public abstract MediaType contentType();
  
  public abstract void writeTo(d paramd)
    throws IOException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/RequestBody.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */