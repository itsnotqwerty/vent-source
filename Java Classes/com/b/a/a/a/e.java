package com.b.a.a.a;

import b.c;
import b.d;
import b.r;
import com.b.a.a.b;
import com.b.a.ac.a;
import com.b.a.o;
import com.b.a.t.a;
import com.b.a.y;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;

public final class e
{
  final com.b.a.m bIN;
  private final Socket bIO;
  final b.e bIP;
  final d bIQ;
  final o bIf;
  int f = 0;
  int g = 0;
  
  public e(o paramo, com.b.a.m paramm, Socket paramSocket)
    throws IOException
  {
    this.bIf = paramo;
    this.bIN = paramm;
    this.bIO = paramSocket;
    this.bIP = b.m.b(b.m.g(paramSocket));
    this.bIQ = b.m.b(b.m.f(paramSocket));
  }
  
  public final b.s P(long paramLong)
    throws IOException
  {
    if (this.f != 4) {
      throw new IllegalStateException("state: " + this.f);
    }
    this.f = 5;
    return new e(paramLong);
  }
  
  public final void a(t.a parama)
    throws IOException
  {
    for (;;)
    {
      String str = this.bIP.Lf();
      if (str.length() == 0) {
        break;
      }
      b.bIs.a(parama, str);
    }
  }
  
  public final void a(com.b.a.t paramt, String paramString)
    throws IOException
  {
    if (this.f != 0) {
      throw new IllegalStateException("state: " + this.f);
    }
    this.bIQ.fm(paramString).fm("\r\n");
    int i = 0;
    int j = paramt.a.length / 2;
    while (i < j)
    {
      this.bIQ.fm(paramt.dV(i)).fm(": ").fm(paramt.dW(i)).fm("\r\n");
      i += 1;
    }
    this.bIQ.fm("\r\n");
    this.f = 1;
  }
  
  public final void aA(int paramInt1, int paramInt2)
  {
    if (paramInt1 != 0) {
      this.bIP.zA().c(paramInt1, TimeUnit.MILLISECONDS);
    }
    if (paramInt2 != 0) {
      this.bIQ.zA().c(paramInt2, TimeUnit.MILLISECONDS);
    }
  }
  
  public final void d()
    throws IOException
  {
    this.bIQ.flush();
  }
  
  public final boolean f()
  {
    try
    {
      int i = this.bIO.getSoTimeout();
      try
      {
        this.bIO.setSoTimeout(1);
        boolean bool = this.bIP.xi();
        return !bool;
      }
      finally
      {
        this.bIO.setSoTimeout(i);
      }
      return false;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      return true;
    }
    catch (IOException localIOException) {}
  }
  
  public final ac.a zz()
    throws IOException
  {
    if ((this.f != 1) && (this.f != 3)) {
      throw new IllegalStateException("state: " + this.f);
    }
    try
    {
      s locals;
      do
      {
        locals = s.dG(this.bIP.Lf());
        localObject = new ac.a();
        ((ac.a)localObject).bMk = locals.bJR;
        ((ac.a)localObject).c = locals.b;
        ((ac.a)localObject).d = locals.c;
        t.a locala = new t.a();
        a(locala);
        locala.M(j.d, locals.bJR.toString());
        ((ac.a)localObject).e(locala.Ac());
      } while (locals.b == 100);
      this.f = 4;
      return (ac.a)localObject;
    }
    catch (EOFException localEOFException)
    {
      Object localObject = new IOException("unexpected end of stream on " + this.bIN + " (recycle count=" + b.bIs.c(this.bIN) + ")");
      ((IOException)localObject).initCause(localEOFException);
      throw ((Throwable)localObject);
    }
  }
  
  private abstract class a
    implements b.s
  {
    protected boolean b;
    protected final b.i bIR = new b.i(e.this.bIP.zA());
    
    private a() {}
    
    protected final void a(boolean paramBoolean)
      throws IOException
    {
      if (e.this.f != 5) {
        throw new IllegalStateException("state: " + e.this.f);
      }
      e.a(this.bIR);
      e.this.f = 0;
      if ((paramBoolean) && (e.this.g == 1))
      {
        e.this.g = 0;
        b.bIs.a(e.this.bIf, e.this.bIN);
      }
      while (e.this.g != 2) {
        return;
      }
      e.this.f = 6;
      e.this.bIN.bIi.close();
    }
    
    protected final void b()
    {
      com.b.a.a.i.a(e.this.bIN.bIi);
      e.this.f = 6;
    }
    
    public final b.t zA()
    {
      return this.bIR;
    }
  }
  
  private final class b
    implements r
  {
    private final b.i bIT = new b.i(e.this.bIQ.zA());
    private boolean c;
    
    private b() {}
    
    public final void a(c paramc, long paramLong)
      throws IOException
    {
      if (this.c) {
        throw new IllegalStateException("closed");
      }
      if (paramLong == 0L) {
        return;
      }
      e.this.bIQ.av(paramLong);
      e.this.bIQ.fm("\r\n");
      e.this.bIQ.a(paramc, paramLong);
      e.this.bIQ.fm("\r\n");
    }
    
    /* Error */
    public final void close()
      throws IOException
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 49	com/b/a/a/a/e$b:c	Z
      //   6: istore_1
      //   7: iload_1
      //   8: ifeq +6 -> 14
      //   11: aload_0
      //   12: monitorexit
      //   13: return
      //   14: aload_0
      //   15: iconst_1
      //   16: putfield 49	com/b/a/a/a/e$b:c	Z
      //   19: aload_0
      //   20: getfield 19	com/b/a/a/a/e$b:bIU	Lcom/b/a/a/a/e;
      //   23: getfield 28	com/b/a/a/a/e:bIQ	Lb/d;
      //   26: ldc 72
      //   28: invokeinterface 66 2 0
      //   33: pop
      //   34: aload_0
      //   35: getfield 39	com/b/a/a/a/e$b:bIT	Lb/i;
      //   38: invokestatic 75	com/b/a/a/a/e:a	(Lb/i;)V
      //   41: aload_0
      //   42: getfield 19	com/b/a/a/a/e$b:bIU	Lcom/b/a/a/a/e;
      //   45: iconst_3
      //   46: putfield 79	com/b/a/a/a/e:f	I
      //   49: goto -38 -> 11
      //   52: astore_2
      //   53: aload_0
      //   54: monitorexit
      //   55: aload_2
      //   56: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	57	0	this	b
      //   6	2	1	bool	boolean
      //   52	4	2	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   2	7	52	finally
      //   14	49	52	finally
    }
    
    /* Error */
    public final void flush()
      throws IOException
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 49	com/b/a/a/a/e$b:c	Z
      //   6: istore_1
      //   7: iload_1
      //   8: ifeq +6 -> 14
      //   11: aload_0
      //   12: monitorexit
      //   13: return
      //   14: aload_0
      //   15: getfield 19	com/b/a/a/a/e$b:bIU	Lcom/b/a/a/a/e;
      //   18: getfield 28	com/b/a/a/a/e:bIQ	Lb/d;
      //   21: invokeinterface 82 1 0
      //   26: goto -15 -> 11
      //   29: astore_2
      //   30: aload_0
      //   31: monitorexit
      //   32: aload_2
      //   33: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	34	0	this	b
      //   6	2	1	bool	boolean
      //   29	4	2	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   2	7	29	finally
      //   14	26	29	finally
    }
    
    public final b.t zA()
    {
      return this.bIT;
    }
  }
  
  private final class c
    extends e.a
  {
    private final g bIV;
    private long e = -1L;
    private boolean f = true;
    
    c(g paramg)
      throws IOException
    {
      super((byte)0);
      this.bIV = paramg;
    }
    
    public final long b(c paramc, long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (this.b) {
        throw new IllegalStateException("closed");
      }
      if (!this.f) {}
      do
      {
        return -1L;
        if ((this.e != 0L) && (this.e != -1L)) {
          break;
        }
        if (this.e != -1L) {
          e.this.bIP.Lf();
        }
        Object localObject;
        try
        {
          this.e = e.this.bIP.Lc();
          localObject = e.this.bIP.Lf().trim();
          if ((this.e < 0L) || ((!((String)localObject).isEmpty()) && (!((String)localObject).startsWith(";")))) {
            throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.e + (String)localObject + "\"");
          }
        }
        catch (NumberFormatException paramc)
        {
          throw new ProtocolException(paramc.getMessage());
        }
        if (this.e == 0L)
        {
          this.f = false;
          localObject = new t.a();
          e.this.a((t.a)localObject);
          this.bIV.a(((t.a)localObject).Ac());
          a(true);
        }
      } while (!this.f);
      paramLong = e.this.bIP.b(paramc, Math.min(paramLong, this.e));
      if (paramLong == -1L)
      {
        b();
        throw new IOException("unexpected end of stream");
      }
      this.e -= paramLong;
      return paramLong;
    }
    
    public final void close()
      throws IOException
    {
      if (this.b) {
        return;
      }
      if ((this.f) && (!com.b.a.a.i.a(this, TimeUnit.MILLISECONDS))) {
        b();
      }
      this.b = true;
    }
  }
  
  private final class d
    implements r
  {
    private final b.i bIT = new b.i(e.this.bIQ.zA());
    private boolean c;
    private long d;
    
    private d(long paramLong)
    {
      this.d = paramLong;
    }
    
    public final void a(c paramc, long paramLong)
      throws IOException
    {
      if (this.c) {
        throw new IllegalStateException("closed");
      }
      com.b.a.a.i.d(paramc.b, paramLong);
      if (paramLong > this.d) {
        throw new ProtocolException("expected " + this.d + " bytes but received " + paramLong);
      }
      e.this.bIQ.a(paramc, paramLong);
      this.d -= paramLong;
    }
    
    public final void close()
      throws IOException
    {
      if (this.c) {
        return;
      }
      this.c = true;
      if (this.d > 0L) {
        throw new ProtocolException("unexpected end of stream");
      }
      e.a(this.bIT);
      e.this.f = 3;
    }
    
    public final void flush()
      throws IOException
    {
      if (this.c) {
        return;
      }
      e.this.bIQ.flush();
    }
    
    public final b.t zA()
    {
      return this.bIT;
    }
  }
  
  private final class e
    extends e.a
  {
    private long e;
    
    public e(long paramLong)
      throws IOException
    {
      super((byte)0);
      this.e = paramLong;
      if (this.e == 0L) {
        a(true);
      }
    }
    
    public final long b(c paramc, long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (this.b) {
        throw new IllegalStateException("closed");
      }
      if (this.e == 0L) {
        return -1L;
      }
      paramLong = e.this.bIP.b(paramc, Math.min(this.e, paramLong));
      if (paramLong == -1L)
      {
        b();
        throw new ProtocolException("unexpected end of stream");
      }
      this.e -= paramLong;
      if (this.e == 0L) {
        a(true);
      }
      return paramLong;
    }
    
    public final void close()
      throws IOException
    {
      if (this.b) {
        return;
      }
      if ((this.e != 0L) && (!com.b.a.a.i.a(this, TimeUnit.MILLISECONDS))) {
        b();
      }
      this.b = true;
    }
  }
  
  private final class f
    extends e.a
  {
    private boolean e;
    
    private f()
    {
      super((byte)0);
    }
    
    public final long b(c paramc, long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (this.b) {
        throw new IllegalStateException("closed");
      }
      if (this.e) {
        return -1L;
      }
      paramLong = e.this.bIP.b(paramc, paramLong);
      if (paramLong == -1L)
      {
        this.e = true;
        a(false);
        return -1L;
      }
      return paramLong;
    }
    
    public final void close()
      throws IOException
    {
      if (this.b) {
        return;
      }
      if (!this.e) {
        b();
      }
      this.b = true;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */