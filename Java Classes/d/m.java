package d;

import java.io.IOException;
import java.nio.ByteBuffer;

final class m
  implements d
{
  boolean closed;
  public final c dch = new c();
  public final r dci;
  
  m(r paramr)
  {
    if (paramr == null) {
      throw new NullPointerException("sink == null");
    }
    this.dci = paramr;
  }
  
  public final t MK()
  {
    return this.dci.MK();
  }
  
  public final c Nj()
  {
    return this.dch;
  }
  
  public final d Nk()
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    Object localObject = this.dch;
    long l2 = ((c)localObject).size;
    long l1;
    if (l2 == 0L) {
      l1 = 0L;
    }
    for (;;)
    {
      if (l1 > 0L) {
        this.dci.b(this.dch, l1);
      }
      return this;
      localObject = ((c)localObject).dbZ.dcm;
      l1 = l2;
      if (((o)localObject).limit < 8192)
      {
        l1 = l2;
        if (((o)localObject).cUn) {
          l1 = l2 - (((o)localObject).limit - ((o)localObject).pos);
        }
      }
    }
  }
  
  public final d Q(byte[] paramArrayOfByte)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.dch.P(paramArrayOfByte);
    return Nk();
  }
  
  public final d aC(long paramLong)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.dch.aB(paramLong);
    return Nk();
  }
  
  public final d aD(long paramLong)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.dch.aA(paramLong);
    return Nk();
  }
  
  public final void b(c paramc, long paramLong)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.dch.b(paramc, paramLong);
    Nk();
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
          if (this.dch.size > 0L)
          {
            this.dci.b(this.dch, this.dch.size);
            localObject1 = localObject2;
          }
        }
        catch (Throwable localThrowable1)
        {
          continue;
        }
        try
        {
          this.dci.close();
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
  
  public final d fF(String paramString)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.dch.fE(paramString);
    return Nk();
  }
  
  public final d fZ(int paramInt)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.dch.fX(paramInt);
    return Nk();
  }
  
  public final void flush()
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    if (this.dch.size > 0L) {
      this.dci.b(this.dch, this.dch.size);
    }
    this.dci.flush();
  }
  
  public final d ga(int paramInt)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.dch.fW(paramInt);
    return Nk();
  }
  
  public final d gb(int paramInt)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.dch.fV(paramInt);
    return Nk();
  }
  
  public final boolean isOpen()
  {
    return !this.closed;
  }
  
  public final d j(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    this.dch.i(paramArrayOfByte, paramInt1, paramInt2);
    return Nk();
  }
  
  public final String toString()
  {
    return "buffer(" + this.dci + ")";
  }
  
  public final int write(ByteBuffer paramByteBuffer)
    throws IOException
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    int i = this.dch.write(paramByteBuffer);
    Nk();
    return i;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */