package io.intercom.a.a.a.a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

final class b
  implements Closeable
{
  private byte[] buf;
  final Charset charset;
  int end;
  private final InputStream in;
  private int pos;
  
  public b(InputStream paramInputStream, Charset paramCharset)
  {
    this(paramInputStream, paramCharset, (byte)0);
  }
  
  private b(InputStream paramInputStream, Charset paramCharset, byte paramByte)
  {
    if ((paramInputStream == null) || (paramCharset == null)) {
      throw new NullPointerException();
    }
    if (!paramCharset.equals(c.US_ASCII)) {
      throw new IllegalArgumentException("Unsupported encoding");
    }
    this.in = paramInputStream;
    this.charset = paramCharset;
    this.buf = new byte[' '];
  }
  
  private void HH()
    throws IOException
  {
    int i = this.in.read(this.buf, 0, this.buf.length);
    if (i == -1) {
      throw new EOFException();
    }
    this.pos = 0;
    this.end = i;
  }
  
  public final void close()
    throws IOException
  {
    synchronized (this.in)
    {
      if (this.buf != null)
      {
        this.buf = null;
        this.in.close();
      }
      return;
    }
  }
  
  public final String readLine()
    throws IOException
  {
    synchronized (this.in)
    {
      if (this.buf == null) {
        throw new IOException("LineReader is closed");
      }
    }
    if (this.pos >= this.end) {
      HH();
    }
    int i = this.pos;
    for (;;)
    {
      if (i != this.end)
      {
        if (this.buf[i] != 10) {
          break label272;
        }
        if ((i == this.pos) || (this.buf[(i - 1)] != 13)) {
          break label267;
        }
      }
      label267:
      for (int j = i - 1;; j = i)
      {
        Object localObject2 = new String(this.buf, this.pos, j - this.pos, this.charset.name());
        this.pos = (i + 1);
        return (String)localObject2;
        localObject2 = new ByteArrayOutputStream(this.end - this.pos + 80)
        {
          public final String toString()
          {
            if ((this.count > 0) && (this.buf[(this.count - 1)] == 13)) {}
            for (int i = this.count - 1;; i = this.count) {
              try
              {
                String str = new String(this.buf, 0, i, b.this.charset.name());
                return str;
              }
              catch (UnsupportedEncodingException localUnsupportedEncodingException)
              {
                throw new AssertionError(localUnsupportedEncodingException);
              }
            }
          }
        };
        for (;;)
        {
          ((ByteArrayOutputStream)localObject2).write(this.buf, this.pos, this.end - this.pos);
          this.end = -1;
          HH();
          i = this.pos;
          while (i != this.end)
          {
            if (this.buf[i] == 10)
            {
              if (i != this.pos) {
                ((ByteArrayOutputStream)localObject2).write(this.buf, this.pos, i - this.pos);
              }
              this.pos = (i + 1);
              localObject2 = ((ByteArrayOutputStream)localObject2).toString();
              return (String)localObject2;
            }
            i += 1;
          }
        }
      }
      label272:
      i += 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */