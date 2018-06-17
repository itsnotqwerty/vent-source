package io.intercom.b;

import java.io.IOException;
import java.nio.ByteBuffer;

final class m
  implements d
{
  public final c buffer = new c();
  public final r cUj;
  boolean closed;
  
  m(r paramr)
  {
    if (paramr == null) {
      throw new NullPointerException("sink == null");
    }
    this.cUj = paramr;
  }
  
  public final d G(byte[] paramArrayOfByte)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.buffer.F(paramArrayOfByte);
    return KD();
  }
  
  public final d KD()
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    long l = this.buffer.Kt();
    if (l > 0L) {
      this.cUj.write(this.buffer, l);
    }
    return this;
  }
  
  public final c Kp()
  {
    return this.buffer;
  }
  
  public final d Kq()
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    long l = this.buffer.size;
    if (l > 0L) {
      this.cUj.write(this.buffer, l);
    }
    return this;
  }
  
  public final long a(s params)
    throws IOException
  {
    if (params == null) {
      throw new IllegalArgumentException("source == null");
    }
    long l1 = 0L;
    for (;;)
    {
      long l2 = params.read(this.buffer, 8192L);
      if (l2 == -1L) {
        break;
      }
      l1 += l2;
      KD();
    }
    return l1;
  }
  
  public final d al(long paramLong)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.buffer.ak(paramLong);
    return KD();
  }
  
  public final d am(long paramLong)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.buffer.aj(paramLong);
    return KD();
  }
  
  public final d an(long paramLong)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.buffer.ai(paramLong);
    return KD();
  }
  
  public final d c(f paramf)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.buffer.a(paramf);
    return KD();
  }
  
  public final d c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.buffer.b(paramArrayOfByte, paramInt1, paramInt2);
    return KD();
  }
  
  public final void close()
    throws IOException
  {
    if (this.closed) {}
    do
    {
      return;
      localObject2 = null;
      localObject1 = localObject2;
      for (;;)
      {
        try
        {
          if (this.buffer.size > 0L)
          {
            this.cUj.write(this.buffer, this.buffer.size);
            localObject1 = localObject2;
          }
        }
        catch (Throwable localThrowable1)
        {
          continue;
        }
        try
        {
          this.cUj.close();
          localObject2 = localObject1;
        }
        catch (Throwable localThrowable2)
        {
          localObject2 = localObject1;
          if (localObject1 != null) {
            continue;
          }
          localObject2 = localThrowable2;
        }
      }
      this.closed = true;
    } while (localObject2 == null);
    u.h((Throwable)localObject2);
  }
  
  public final d fA(int paramInt)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.buffer.fw(paramInt);
    return KD();
  }
  
  public final d fB(int paramInt)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.buffer.fv(paramInt);
    return KD();
  }
  
  public final d fg(String paramString)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.buffer.ff(paramString);
    return KD();
  }
  
  public final void flush()
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    if (this.buffer.size > 0L) {
      this.cUj.write(this.buffer, this.buffer.size);
    }
    this.cUj.flush();
  }
  
  public final d fz(int paramInt)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.buffer.fx(paramInt);
    return KD();
  }
  
  public final boolean isOpen()
  {
    return !this.closed;
  }
  
  public final t timeout()
  {
    return this.cUj.timeout();
  }
  
  public final String toString()
  {
    return "buffer(" + this.cUj + ")";
  }
  
  public final int write(ByteBuffer paramByteBuffer)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    int i = this.buffer.write(paramByteBuffer);
    KD();
    return i;
  }
  
  public final void write(c paramc, long paramLong)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.buffer.write(paramc, paramLong);
    KD();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/b/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */