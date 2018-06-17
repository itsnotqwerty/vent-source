package b;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

final class o
  implements e
{
  public final c bKF;
  boolean c;
  public final s cUN;
  
  public o(s params)
  {
    this(params, new c());
  }
  
  private o(s params, c paramc)
  {
    if (params == null) {
      throw new IllegalArgumentException("source == null");
    }
    this.bKF = paramc;
    this.cUN = params;
  }
  
  private boolean ax(long paramLong)
    throws IOException
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    while (this.bKF.b < paramLong) {
      if (this.cUN.b(this.bKF, 2048L) == -1L) {
        return false;
      }
    }
    return true;
  }
  
  public final c KU()
  {
    return this.bKF;
  }
  
  public final byte KX()
    throws IOException
  {
    a(1L);
    return this.bKF.KX();
  }
  
  public final short KY()
    throws IOException
  {
    a(2L);
    return this.bKF.KY();
  }
  
  public final int KZ()
    throws IOException
  {
    a(4L);
    return this.bKF.KZ();
  }
  
  public final short La()
    throws IOException
  {
    a(2L);
    return u.b(this.bKF.KY());
  }
  
  public final int Lb()
    throws IOException
  {
    a(4L);
    return u.dU(this.bKF.KZ());
  }
  
  public final long Lc()
    throws IOException
  {
    a(1L);
    int i = 0;
    while (ax(i + 1))
    {
      byte b = this.bKF.ao(i);
      if (((b < 48) || (b > 57)) && ((b < 97) || (b > 102)) && ((b < 65) || (b > 70)))
      {
        if (i != 0) {
          break;
        }
        throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", new Object[] { Byte.valueOf(b) }));
      }
      i += 1;
    }
    return this.bKF.Lc();
  }
  
  public final String Lf()
    throws IOException
  {
    long l = f((byte)10);
    if (l == -1L)
    {
      c localc = new c();
      this.bKF.a(localc, 0L, Math.min(32L, this.bKF.b));
      throw new EOFException("\\n not found: size=" + this.bKF.b + " content=" + localc.Ld().d() + "...");
    }
    return this.bKF.ar(l);
  }
  
  public final byte[] Lg()
    throws IOException
  {
    this.bKF.a(this.cUN);
    return this.bKF.Lg();
  }
  
  public final void a(long paramLong)
    throws IOException
  {
    if (!ax(paramLong)) {
      throw new EOFException();
    }
  }
  
  public final f ap(long paramLong)
    throws IOException
  {
    a(paramLong);
    return this.bKF.ap(paramLong);
  }
  
  public final byte[] as(long paramLong)
    throws IOException
  {
    a(paramLong);
    return this.bKF.as(paramLong);
  }
  
  public final void at(long paramLong)
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    do
    {
      long l = Math.min(paramLong, this.bKF.b);
      this.bKF.at(l);
      paramLong -= l;
      if (paramLong <= 0L) {
        break;
      }
    } while ((this.bKF.b != 0L) || (this.cUN.b(this.bKF, 2048L) != -1L));
    throw new EOFException();
  }
  
  public final long b(c paramc, long paramLong)
    throws IOException
  {
    if (paramc == null) {
      throw new IllegalArgumentException("sink == null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    if ((this.bKF.b == 0L) && (this.cUN.b(this.bKF, 2048L) == -1L)) {
      return -1L;
    }
    paramLong = Math.min(paramLong, this.bKF.b);
    return this.bKF.b(paramc, paramLong);
  }
  
  public final void close()
    throws IOException
  {
    if (this.c) {
      return;
    }
    this.c = true;
    this.cUN.close();
    this.bKF.t();
  }
  
  public final long f(byte paramByte)
    throws IOException
  {
    long l2 = 0L;
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    do
    {
      l1 = l2;
      if (0L < this.bKF.b) {
        break;
      }
    } while (this.cUN.b(this.bKF, 2048L) != -1L);
    long l1 = -1L;
    return l1;
    do
    {
      l2 = this.bKF.a(paramByte, l1);
      l1 = l2;
      if (l2 != -1L) {
        break;
      }
      l1 = this.bKF.b;
    } while (this.cUN.b(this.bKF, 2048L) != -1L);
    return -1L;
  }
  
  public final InputStream h()
  {
    new InputStream()
    {
      public final int available()
        throws IOException
      {
        if (o.this.c) {
          throw new IOException("closed");
        }
        return (int)Math.min(o.this.bKF.b, 2147483647L);
      }
      
      public final void close()
        throws IOException
      {
        o.this.close();
      }
      
      public final int read()
        throws IOException
      {
        if (o.this.c) {
          throw new IOException("closed");
        }
        if ((o.this.bKF.b == 0L) && (o.this.cUN.b(o.this.bKF, 2048L) == -1L)) {
          return -1;
        }
        return o.this.bKF.KX() & 0xFF;
      }
      
      public final int read(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
        throws IOException
      {
        if (o.this.c) {
          throw new IOException("closed");
        }
        u.a(paramAnonymousArrayOfByte.length, paramAnonymousInt1, paramAnonymousInt2);
        if ((o.this.bKF.b == 0L) && (o.this.cUN.b(o.this.bKF, 2048L) == -1L)) {
          return -1;
        }
        return o.this.bKF.d(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      }
      
      public final String toString()
      {
        return o.this + ".inputStream()";
      }
    };
  }
  
  public final String toString()
  {
    return "buffer(" + this.cUN + ")";
  }
  
  public final boolean xi()
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    return (this.bKF.xi()) && (this.cUN.b(this.bKF, 2048L) == -1L);
  }
  
  public final t zA()
  {
    return this.cUN.zA();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */