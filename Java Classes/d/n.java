package d;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

final class n
  implements e
{
  boolean closed;
  public final c dch = new c();
  public final s dcj;
  
  n(s params)
  {
    if (params == null) {
      throw new NullPointerException("source == null");
    }
    this.dcj = params;
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
        long l = this.dch.a(paramByte, paramLong1, paramLong2);
        if (l != -1L) {
          return l;
        }
        l = this.dch.size;
        if ((l < paramLong2) && (this.dcj.a(this.dch, 8192L) != -1L)) {
          break;
        }
        return -1L;
      }
      return -1L;
    }
  }
  
  private boolean aa(long paramLong)
    throws IOException
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    while (this.dch.size < paramLong) {
      if (this.dcj.a(this.dch, 8192L) == -1L) {
        return false;
      }
    }
    return true;
  }
  
  public final byte[] KA()
    throws IOException
  {
    this.dch.a(this.dcj);
    return this.dch.KA();
  }
  
  public final long KB()
    throws IOException
  {
    return a((byte)0, 0L, Long.MAX_VALUE);
  }
  
  public final boolean Kr()
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    return (this.dch.Kr()) && (this.dcj.a(this.dch, 8192L) == -1L);
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
        return (int)Math.min(n.this.dch.size, 2147483647L);
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
        if ((n.this.dch.size == 0L) && (n.this.dcj.a(n.this.dch, 8192L) == -1L)) {
          return -1;
        }
        return n.this.dch.readByte() & 0xFF;
      }
      
      public final int read(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
        throws IOException
      {
        if (n.this.closed) {
          throw new IOException("closed");
        }
        u.checkOffsetAndCount(paramAnonymousArrayOfByte.length, paramAnonymousInt1, paramAnonymousInt2);
        if ((n.this.dch.size == 0L) && (n.this.dcj.a(n.this.dch, 8192L) == -1L)) {
          return -1;
        }
        return n.this.dch.read(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
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
    return u.a(this.dch.readShort());
  }
  
  public final int Kv()
    throws IOException
  {
    Z(4L);
    return u.fD(this.dch.readInt());
  }
  
  public final long Kw()
    throws IOException
  {
    Z(1L);
    int i = 0;
    while (aa(i + 1))
    {
      byte b = this.dch.ab(i);
      if (((b < 48) || (b > 57)) && ((i != 0) || (b != 45)))
      {
        if (i != 0) {
          break;
        }
        throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", new Object[] { Byte.valueOf(b) }));
      }
      i += 1;
    }
    return this.dch.Kw();
  }
  
  public final long Kx()
    throws IOException
  {
    Z(1L);
    int i = 0;
    while (aa(i + 1))
    {
      byte b = this.dch.ab(i);
      if (((b < 48) || (b > 57)) && ((b < 97) || (b > 102)) && ((b < 65) || (b > 70)))
      {
        if (i != 0) {
          break;
        }
        throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", new Object[] { Byte.valueOf(b) }));
      }
      i += 1;
    }
    return this.dch.Kx();
  }
  
  public final String Kz()
    throws IOException
  {
    return ae(Long.MAX_VALUE);
  }
  
  public final t MK()
  {
    return this.dcj.MK();
  }
  
  public final c Nj()
  {
    return this.dch;
  }
  
  public final void Z(long paramLong)
    throws IOException
  {
    if (!aa(paramLong)) {
      throw new EOFException();
    }
  }
  
  public final long a(c paramc, long paramLong)
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
    if ((this.dch.size == 0L) && (this.dcj.a(this.dch, 8192L) == -1L)) {
      return -1L;
    }
    paramLong = Math.min(paramLong, this.dch.size);
    return this.dch.a(paramc, paramLong);
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
      return this.dch.af(l2);
    }
    if ((l1 < Long.MAX_VALUE) && (aa(l1)) && (this.dch.ab(l1 - 1L) == 13) && (aa(1L + l1)) && (this.dch.ab(l1) == 10)) {
      return this.dch.af(l1);
    }
    c localc = new c();
    this.dch.a(localc, 0L, Math.min(32L, this.dch.size));
    throw new EOFException("\\n not found: limit=" + Math.min(this.dch.size, paramLong) + " content=" + localc.MT().KJ() + '…');
  }
  
  public final byte[] ag(long paramLong)
    throws IOException
  {
    Z(paramLong);
    return this.dch.ag(paramLong);
  }
  
  public final void ah(long paramLong)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    do
    {
      long l = Math.min(paramLong, this.dch.size);
      this.dch.ah(l);
      paramLong -= l;
      if (paramLong <= 0L) {
        break;
      }
    } while ((this.dch.size != 0L) || (this.dcj.a(this.dch, 8192L) != -1L));
    throw new EOFException();
  }
  
  public final f az(long paramLong)
    throws IOException
  {
    Z(paramLong);
    return this.dch.az(paramLong);
  }
  
  public final void close()
    throws IOException
  {
    if (this.closed) {
      return;
    }
    this.closed = true;
    this.dcj.close();
    this.dch.clear();
  }
  
  public final boolean isOpen()
  {
    return !this.closed;
  }
  
  public final int read(ByteBuffer paramByteBuffer)
    throws IOException
  {
    if ((this.dch.size == 0L) && (this.dcj.a(this.dch, 8192L) == -1L)) {
      return -1;
    }
    return this.dch.read(paramByteBuffer);
  }
  
  public final byte readByte()
    throws IOException
  {
    Z(1L);
    return this.dch.readByte();
  }
  
  public final void readFully(byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      Z(paramArrayOfByte.length);
      this.dch.readFully(paramArrayOfByte);
      return;
    }
    catch (EOFException localEOFException)
    {
      int i = 0;
      while (this.dch.size > 0L)
      {
        int j = this.dch.read(paramArrayOfByte, i, (int)this.dch.size);
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
    return this.dch.readInt();
  }
  
  public final short readShort()
    throws IOException
  {
    Z(2L);
    return this.dch.readShort();
  }
  
  public final String toString()
  {
    return "buffer(" + this.dcj + ")";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */