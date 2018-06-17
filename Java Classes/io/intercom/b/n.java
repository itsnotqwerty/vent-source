package io.intercom.b;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

final class n
  implements e
{
  public final c buffer = new c();
  public final s cUk;
  boolean closed;
  
  n(s params)
  {
    if (params == null) {
      throw new NullPointerException("source == null");
    }
    this.cUk = params;
  }
  
  private long a(byte paramByte, long paramLong1, long paramLong2)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    if ((0L < 0L) || (paramLong2 < 0L))
    {
      throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", new Object[] { Long.valueOf(0L), Long.valueOf(paramLong2) }));
      Object localObject;
      paramLong1 = Math.max(paramLong1, localObject);
    }
    for (;;)
    {
      if (paramLong1 < paramLong2)
      {
        long l = this.buffer.a(paramByte, paramLong1, paramLong2);
        if (l != -1L) {
          return l;
        }
        l = this.buffer.size;
        if ((l < paramLong2) && (this.cUk.read(this.buffer, 8192L) != -1L)) {
          break;
        }
        return -1L;
      }
      return -1L;
    }
  }
  
  public final byte[] KA()
    throws IOException
  {
    this.buffer.a(this.cUk);
    return this.buffer.KA();
  }
  
  public final long KB()
    throws IOException
  {
    return a((byte)0, 0L, Long.MAX_VALUE);
  }
  
  public final c Kp()
  {
    return this.buffer;
  }
  
  public final boolean Kr()
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    return (this.buffer.Kr()) && (this.cUk.read(this.buffer, 8192L) == -1L);
  }
  
  public final InputStream Ks()
  {
    new InputStream()
    {
      public final int available()
        throws IOException
      {
        if (n.this.closed) {
          throw new IOException("closed");
        }
        return (int)Math.min(n.this.buffer.size, 2147483647L);
      }
      
      public final void close()
        throws IOException
      {
        n.this.close();
      }
      
      public final int read()
        throws IOException
      {
        if (n.this.closed) {
          throw new IOException("closed");
        }
        if ((n.this.buffer.size == 0L) && (n.this.cUk.read(n.this.buffer, 8192L) == -1L)) {
          return -1;
        }
        return n.this.buffer.readByte() & 0xFF;
      }
      
      public final int read(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
        throws IOException
      {
        if (n.this.closed) {
          throw new IOException("closed");
        }
        u.checkOffsetAndCount(paramAnonymousArrayOfByte.length, paramAnonymousInt1, paramAnonymousInt2);
        if ((n.this.buffer.size == 0L) && (n.this.cUk.read(n.this.buffer, 8192L) == -1L)) {
          return -1;
        }
        return n.this.buffer.read(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      }
      
      public final String toString()
      {
        return n.this + ".inputStream()";
      }
    };
  }
  
  public final short Ku()
    throws IOException
  {
    Z(2L);
    return u.a(this.buffer.readShort());
  }
  
  public final int Kv()
    throws IOException
  {
    Z(4L);
    return u.fD(this.buffer.readInt());
  }
  
  public final long Kw()
    throws IOException
  {
    Z(1L);
    int i = 0;
    while (aa(i + 1))
    {
      byte b = this.buffer.ab(i);
      if (((b < 48) || (b > 57)) && ((i != 0) || (b != 45)))
      {
        if (i != 0) {
          break;
        }
        throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", new Object[] { Byte.valueOf(b) }));
      }
      i += 1;
    }
    return this.buffer.Kw();
  }
  
  public final long Kx()
    throws IOException
  {
    Z(1L);
    int i = 0;
    while (aa(i + 1))
    {
      byte b = this.buffer.ab(i);
      if (((b < 48) || (b > 57)) && ((b < 97) || (b > 102)) && ((b < 65) || (b > 70)))
      {
        if (i != 0) {
          break;
        }
        throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", new Object[] { Byte.valueOf(b) }));
      }
      i += 1;
    }
    return this.buffer.Kx();
  }
  
  public final String Kz()
    throws IOException
  {
    return ae(Long.MAX_VALUE);
  }
  
  public final void Z(long paramLong)
    throws IOException
  {
    if (!aa(paramLong)) {
      throw new EOFException();
    }
  }
  
  public final long a(r paramr)
    throws IOException
  {
    long l1 = 0L;
    while (this.cUk.read(this.buffer, 8192L) != -1L)
    {
      l2 = this.buffer.Kt();
      if (l2 > 0L)
      {
        l1 += l2;
        paramr.write(this.buffer, l2);
      }
    }
    long l2 = l1;
    if (this.buffer.size > 0L)
    {
      l2 = l1 + this.buffer.size;
      paramr.write(this.buffer, this.buffer.size);
    }
    return l2;
  }
  
  public final String a(Charset paramCharset)
    throws IOException
  {
    if (paramCharset == null) {
      throw new IllegalArgumentException("charset == null");
    }
    this.buffer.a(this.cUk);
    return this.buffer.a(paramCharset);
  }
  
  public final void a(c paramc, long paramLong)
    throws IOException
  {
    try
    {
      Z(paramLong);
      this.buffer.a(paramc, paramLong);
      return;
    }
    catch (EOFException localEOFException)
    {
      paramc.a(this.buffer);
      throw localEOFException;
    }
  }
  
  public final boolean aa(long paramLong)
    throws IOException
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    while (this.buffer.size < paramLong) {
      if (this.cUk.read(this.buffer, 8192L) == -1L) {
        return false;
      }
    }
    return true;
  }
  
  public final f ac(long paramLong)
    throws IOException
  {
    Z(paramLong);
    return this.buffer.ac(paramLong);
  }
  
  public final String ae(long paramLong)
    throws IOException
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("limit < 0: " + paramLong);
    }
    if (paramLong == Long.MAX_VALUE) {}
    for (long l1 = Long.MAX_VALUE;; l1 = paramLong + 1L)
    {
      long l2 = a((byte)10, 0L, l1);
      if (l2 == -1L) {
        break;
      }
      return this.buffer.af(l2);
    }
    if ((l1 < Long.MAX_VALUE) && (aa(l1)) && (this.buffer.ab(l1 - 1L) == 13) && (aa(1L + l1)) && (this.buffer.ab(l1) == 10)) {
      return this.buffer.af(l1);
    }
    c localc = new c();
    this.buffer.a(localc, 0L, Math.min(32L, this.buffer.size));
    throw new EOFException("\\n not found: limit=" + Math.min(this.buffer.size, paramLong) + " content=" + localc.readByteString().KJ() + '…');
  }
  
  public final byte[] ag(long paramLong)
    throws IOException
  {
    Z(paramLong);
    return this.buffer.ag(paramLong);
  }
  
  public final void ah(long paramLong)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    do
    {
      long l = Math.min(paramLong, this.buffer.size);
      this.buffer.ah(l);
      paramLong -= l;
      if (paramLong <= 0L) {
        break;
      }
    } while ((this.buffer.size != 0L) || (this.cUk.read(this.buffer, 8192L) != -1L));
    throw new EOFException();
  }
  
  public final boolean b(f paramf)
    throws IOException
  {
    int j = paramf.size();
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    if ((0L < 0L) || (j < 0) || (paramf.size() + 0 < j)) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label94;
      }
      long l = i + 0L;
      if ((!aa(1L + l)) || (this.buffer.ab(l) != paramf.getByte(i + 0))) {
        break;
      }
      i += 1;
    }
    label94:
    return true;
  }
  
  public final void close()
    throws IOException
  {
    if (this.closed) {
      return;
    }
    this.closed = true;
    this.cUk.close();
    this.buffer.clear();
  }
  
  public final boolean isOpen()
  {
    return !this.closed;
  }
  
  public final int read(ByteBuffer paramByteBuffer)
    throws IOException
  {
    if ((this.buffer.size == 0L) && (this.cUk.read(this.buffer, 8192L) == -1L)) {
      return -1;
    }
    return this.buffer.read(paramByteBuffer);
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    u.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    if ((this.buffer.size == 0L) && (this.cUk.read(this.buffer, 8192L) == -1L)) {
      return -1;
    }
    paramInt2 = (int)Math.min(paramInt2, this.buffer.size);
    return this.buffer.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public final long read(c paramc, long paramLong)
    throws IOException
  {
    if (paramc == null) {
      throw new IllegalArgumentException("sink == null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    if ((this.buffer.size == 0L) && (this.cUk.read(this.buffer, 8192L) == -1L)) {
      return -1L;
    }
    paramLong = Math.min(paramLong, this.buffer.size);
    return this.buffer.read(paramc, paramLong);
  }
  
  public final byte readByte()
    throws IOException
  {
    Z(1L);
    return this.buffer.readByte();
  }
  
  public final void readFully(byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      Z(paramArrayOfByte.length);
      this.buffer.readFully(paramArrayOfByte);
      return;
    }
    catch (EOFException localEOFException)
    {
      int i = 0;
      while (this.buffer.size > 0L)
      {
        int j = this.buffer.read(paramArrayOfByte, i, (int)this.buffer.size);
        if (j == -1) {
          throw new AssertionError();
        }
        i += j;
      }
      throw localEOFException;
    }
  }
  
  public final int readInt()
    throws IOException
  {
    Z(4L);
    return this.buffer.readInt();
  }
  
  public final long readLong()
    throws IOException
  {
    Z(8L);
    return this.buffer.readLong();
  }
  
  public final short readShort()
    throws IOException
  {
    Z(2L);
    return this.buffer.readShort();
  }
  
  public final t timeout()
  {
    return this.cUk.timeout();
  }
  
  public final String toString()
  {
    return "buffer(" + this.cUk + ")";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/b/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */