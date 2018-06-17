package b;

import java.io.IOException;
import java.io.OutputStream;

final class n
  implements d
{
  public final c bKF;
  boolean c;
  public final r cUL;
  
  public n(r paramr)
  {
    this(paramr, new c());
  }
  
  private n(r paramr, c paramc)
  {
    if (paramr == null) {
      throw new IllegalArgumentException("sink == null");
    }
    this.bKF = paramc;
    this.cUL = paramr;
  }
  
  public final d K(byte[] paramArrayOfByte)
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.bKF.J(paramArrayOfByte);
    return Li();
  }
  
  public final c KU()
  {
    return this.bKF;
  }
  
  public final OutputStream KV()
  {
    new OutputStream()
    {
      public final void close()
        throws IOException
      {
        n.this.close();
      }
      
      public final void flush()
        throws IOException
      {
        if (!n.this.c) {
          n.this.flush();
        }
      }
      
      public final String toString()
      {
        return n.this + ".outputStream()";
      }
      
      public final void write(int paramAnonymousInt)
        throws IOException
      {
        if (n.this.c) {
          throw new IOException("closed");
        }
        n.this.bKF.fF((byte)paramAnonymousInt);
        n.this.Li();
      }
      
      public final void write(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
        throws IOException
      {
        if (n.this.c) {
          throw new IOException("closed");
        }
        n.this.bKF.e(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
        n.this.Li();
      }
    };
  }
  
  public final d KW()
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    long l = this.bKF.b;
    if (l > 0L) {
      this.cUL.a(this.bKF, l);
    }
    return this;
  }
  
  public final d Li()
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    Object localObject = this.bKF;
    long l2 = ((c)localObject).b;
    long l1;
    if (l2 == 0L) {
      l1 = 0L;
    }
    for (;;)
    {
      if (l1 > 0L) {
        this.cUL.a(this.bKF, l1);
      }
      return this;
      localObject = ((c)localObject).cUy.cUQ;
      l1 = l2;
      if (((p)localObject).c < 2048)
      {
        l1 = l2;
        if (((p)localObject).e) {
          l1 = l2 - (((p)localObject).c - ((p)localObject).b);
        }
      }
    }
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
      long l2 = params.b(this.bKF, 2048L);
      if (l2 == -1L) {
        break;
      }
      l1 += l2;
      Li();
    }
    return l1;
  }
  
  public final void a(c paramc, long paramLong)
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.bKF.a(paramc, paramLong);
    Li();
  }
  
  public final d av(long paramLong)
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.bKF.au(paramLong);
    return Li();
  }
  
  public final void close()
    throws IOException
  {
    if (this.c) {}
    do
    {
      return;
      localObject2 = null;
      localObject1 = localObject2;
      for (;;)
      {
        try
        {
          if (this.bKF.b > 0L)
          {
            this.cUL.a(this.bKF, this.bKF.b);
            localObject1 = localObject2;
          }
        }
        catch (Throwable localThrowable1)
        {
          continue;
        }
        try
        {
          this.cUL.close();
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
      this.c = true;
    } while (localObject2 == null);
    u.j((Throwable)localObject2);
  }
  
  public final d d(f paramf)
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.bKF.c(paramf);
    return Li();
  }
  
  public final d f(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.bKF.e(paramArrayOfByte, paramInt1, paramInt2);
    return Li();
  }
  
  public final d fJ(int paramInt)
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.bKF.fH(paramInt);
    return Li();
  }
  
  public final d fK(int paramInt)
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.bKF.fG(paramInt);
    return Li();
  }
  
  public final d fL(int paramInt)
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.bKF.fF(paramInt);
    return Li();
  }
  
  public final void flush()
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    if (this.bKF.b > 0L) {
      this.cUL.a(this.bKF, this.bKF.b);
    }
    this.cUL.flush();
  }
  
  public final d fm(String paramString)
    throws IOException
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.bKF.fl(paramString);
    return Li();
  }
  
  public final String toString()
  {
    return "buffer(" + this.cUL + ")";
  }
  
  public final t zA()
  {
    return this.cUL.zA();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */