package okhttp3.internal.d;

import d.d;
import d.l;
import d.r;
import d.s;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.util.concurrent.TimeUnit;
import okhttp3.aa;
import okhttp3.internal.b.g;
import okhttp3.internal.c.h;
import okhttp3.internal.c.k;
import okhttp3.n;
import okhttp3.p;
import okhttp3.p.a;
import okhttp3.q;
import okhttp3.w;
import okhttp3.y;
import okhttp3.y.a;
import okhttp3.z;

public final class a
  implements okhttp3.internal.c.c
{
  final okhttp3.t cgQ;
  final d.e dad;
  final d dae;
  final g dak;
  private long headerLimit = 262144L;
  int state = 0;
  
  public a(okhttp3.t paramt, g paramg, d.e parame, d paramd)
  {
    this.cgQ = paramt;
    this.dak = paramg;
    this.dad = parame;
    this.dae = paramd;
  }
  
  static void a(d.i parami)
  {
    d.t localt1 = parami.dce;
    d.t localt2 = d.t.dcn;
    if (localt2 == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    parami.dce = localt2;
    localt1.Nq();
    localt1.Np();
  }
  
  private String readHeaderLine()
    throws IOException
  {
    String str = this.dad.ae(this.headerLimit);
    this.headerLimit -= str.length();
    return str;
  }
  
  public final p MS()
    throws IOException
  {
    p.a locala = new p.a();
    for (;;)
    {
      String str = readHeaderLine();
      if (str.length() == 0) {
        break;
      }
      okhttp3.internal.a.cZG.a(locala, str);
    }
    return locala.MB();
  }
  
  public final r a(w paramw, long paramLong)
  {
    if ("chunked".equalsIgnoreCase(paramw.header("Transfer-Encoding")))
    {
      if (this.state != 1) {
        throw new IllegalStateException("state: " + this.state);
      }
      this.state = 2;
      return new b();
    }
    if (paramLong != -1L)
    {
      if (this.state != 1) {
        throw new IllegalStateException("state: " + this.state);
      }
      this.state = 2;
      return new d(paramLong);
    }
    throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
  }
  
  public final void a(p paramp, String paramString)
    throws IOException
  {
    if (this.state != 0) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.dae.fF(paramString).fF("\r\n");
    int i = 0;
    int j = paramp.namesAndValues.length / 2;
    while (i < j)
    {
      this.dae.fF(paramp.name(i)).fF(": ").fF(paramp.value(i)).fF("\r\n");
      i += 1;
    }
    this.dae.fF("\r\n");
    this.state = 1;
  }
  
  public final s ay(long paramLong)
    throws IOException
  {
    if (this.state != 4) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 5;
    return new e(paramLong);
  }
  
  public final y.a bz(boolean paramBoolean)
    throws IOException
  {
    if ((this.state != 1) && (this.state != 3)) {
      throw new IllegalStateException("state: " + this.state);
    }
    Object localObject;
    try
    {
      k localk = k.fD(readHeaderLine());
      localObject = new y.a();
      ((y.a)localObject).cWq = localk.cWq;
      ((y.a)localObject).code = localk.code;
      ((y.a)localObject).message = localk.message;
      localObject = ((y.a)localObject).c(MS());
      if ((paramBoolean) && (localk.code == 100)) {
        return null;
      }
      if (localk.code == 100)
      {
        this.state = 3;
        return (y.a)localObject;
      }
    }
    catch (EOFException localEOFException)
    {
      localObject = new IOException("unexpected end of stream on " + this.dak);
      ((IOException)localObject).initCause(localEOFException);
      throw ((Throwable)localObject);
    }
    this.state = 4;
    return (y.a)localObject;
  }
  
  public final void d(w paramw)
    throws IOException
  {
    Object localObject = this.dak.MR().dab.proxy.type();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramw.method);
    localStringBuilder.append(' ');
    int i;
    if ((!paramw.cVX.isHttps()) && (localObject == Proxy.Type.HTTP))
    {
      i = 1;
      if (i == 0) {
        break label107;
      }
      localStringBuilder.append(paramw.cVX);
    }
    for (;;)
    {
      localStringBuilder.append(" HTTP/1.1");
      localObject = localStringBuilder.toString();
      a(paramw.cZo, (String)localObject);
      return;
      i = 0;
      break;
      label107:
      localStringBuilder.append(okhttp3.internal.c.i.d(paramw.cVX));
    }
  }
  
  public final z e(y paramy)
    throws IOException
  {
    Object localObject = this.dak.cZl;
    localObject = this.dak.daf;
    n.Mv();
    localObject = paramy.header("Content-Type", null);
    if (!okhttp3.internal.c.e.i(paramy)) {
      return new h((String)localObject, 0L, l.b(ay(0L)));
    }
    if ("chunked".equalsIgnoreCase(paramy.header("Transfer-Encoding", null)))
    {
      paramy = paramy.cZt.cVX;
      if (this.state != 4) {
        throw new IllegalStateException("state: " + this.state);
      }
      this.state = 5;
      return new h((String)localObject, -1L, l.b(new c(paramy)));
    }
    long l = okhttp3.internal.c.e.f(paramy);
    if (l != -1L) {
      return new h((String)localObject, l, l.b(ay(l)));
    }
    if (this.state != 4) {
      throw new IllegalStateException("state: " + this.state);
    }
    if (this.dak == null) {
      throw new IllegalStateException("streamAllocation == null");
    }
    this.state = 5;
    this.dak.noNewStreams();
    return new h((String)localObject, -1L, l.b(new f()));
  }
  
  public final void finishRequest()
    throws IOException
  {
    this.dae.flush();
  }
  
  public final void flushRequest()
    throws IOException
  {
    this.dae.flush();
  }
  
  private abstract class a
    implements s
  {
    protected long bytesRead = 0L;
    protected boolean closed;
    protected final d.i dam = new d.i(a.this.dad.MK());
    
    private a() {}
    
    public final d.t MK()
    {
      return this.dam;
    }
    
    public long a(d.c paramc, long paramLong)
      throws IOException
    {
      try
      {
        paramLong = a.this.dad.a(paramc, paramLong);
        if (paramLong > 0L) {
          this.bytesRead += paramLong;
        }
        return paramLong;
      }
      catch (IOException paramc)
      {
        endOfInput(false, paramc);
        throw paramc;
      }
    }
    
    protected final void endOfInput(boolean paramBoolean, IOException paramIOException)
      throws IOException
    {
      if (a.this.state == 6) {}
      do
      {
        return;
        if (a.this.state != 5) {
          throw new IllegalStateException("state: " + a.this.state);
        }
        a.a(this.dam);
        a.this.state = 6;
      } while (a.this.dak == null);
      g localg = a.this.dak;
      if (!paramBoolean) {}
      for (paramBoolean = true;; paramBoolean = false)
      {
        localg.a(paramBoolean, a.this, paramIOException);
        return;
      }
    }
  }
  
  private final class b
    implements r
  {
    private boolean closed;
    private final d.i dam = new d.i(a.this.dae.MK());
    
    b() {}
    
    public final d.t MK()
    {
      return this.dam;
    }
    
    public final void b(d.c paramc, long paramLong)
      throws IOException
    {
      if (this.closed) {
        throw new IllegalStateException("closed");
      }
      if (paramLong == 0L) {
        return;
      }
      a.this.dae.aC(paramLong);
      a.this.dae.fF("\r\n");
      a.this.dae.b(paramc, paramLong);
      a.this.dae.fF("\r\n");
    }
    
    /* Error */
    public final void close()
      throws IOException
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 45	okhttp3/internal/d/a$b:closed	Z
      //   6: istore_1
      //   7: iload_1
      //   8: ifeq +6 -> 14
      //   11: aload_0
      //   12: monitorexit
      //   13: return
      //   14: aload_0
      //   15: iconst_1
      //   16: putfield 45	okhttp3/internal/d/a$b:closed	Z
      //   19: aload_0
      //   20: getfield 19	okhttp3/internal/d/a$b:dan	Lokhttp3/internal/d/a;
      //   23: getfield 28	okhttp3/internal/d/a:dae	Ld/d;
      //   26: ldc 67
      //   28: invokeinterface 61 2 0
      //   33: pop
      //   34: aload_0
      //   35: getfield 39	okhttp3/internal/d/a$b:dam	Ld/i;
      //   38: invokestatic 71	okhttp3/internal/d/a:a	(Ld/i;)V
      //   41: aload_0
      //   42: getfield 19	okhttp3/internal/d/a$b:dan	Lokhttp3/internal/d/a;
      //   45: iconst_3
      //   46: putfield 75	okhttp3/internal/d/a:state	I
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
      //   3: getfield 45	okhttp3/internal/d/a$b:closed	Z
      //   6: istore_1
      //   7: iload_1
      //   8: ifeq +6 -> 14
      //   11: aload_0
      //   12: monitorexit
      //   13: return
      //   14: aload_0
      //   15: getfield 19	okhttp3/internal/d/a$b:dan	Lokhttp3/internal/d/a;
      //   18: getfield 28	okhttp3/internal/d/a:dae	Ld/d;
      //   21: invokeinterface 78 1 0
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
  }
  
  private final class c
    extends a.a
  {
    private long bytesRemainingInChunk = -1L;
    private final q cVX;
    private boolean hasMoreChunks = true;
    
    c(q paramq)
    {
      super((byte)0);
      this.cVX = paramq;
    }
    
    public final long a(d.c paramc, long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (this.closed) {
        throw new IllegalStateException("closed");
      }
      if (!this.hasMoreChunks) {}
      do
      {
        return -1L;
        if ((this.bytesRemainingInChunk != 0L) && (this.bytesRemainingInChunk != -1L)) {
          break;
        }
        if (this.bytesRemainingInChunk != -1L) {
          a.this.dad.Kz();
        }
        try
        {
          this.bytesRemainingInChunk = a.this.dad.Kx();
          String str = a.this.dad.Kz().trim();
          if ((this.bytesRemainingInChunk < 0L) || ((!str.isEmpty()) && (!str.startsWith(";")))) {
            throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + str + "\"");
          }
        }
        catch (NumberFormatException paramc)
        {
          throw new ProtocolException(paramc.getMessage());
        }
        if (this.bytesRemainingInChunk == 0L)
        {
          this.hasMoreChunks = false;
          okhttp3.internal.c.e.a(a.this.cgQ.cZa, this.cVX, a.this.MS());
          endOfInput(true, null);
        }
      } while (!this.hasMoreChunks);
      paramLong = super.a(paramc, Math.min(paramLong, this.bytesRemainingInChunk));
      if (paramLong == -1L)
      {
        paramc = new ProtocolException("unexpected end of stream");
        endOfInput(false, paramc);
        throw paramc;
      }
      this.bytesRemainingInChunk -= paramLong;
      return paramLong;
    }
    
    public final void close()
      throws IOException
    {
      if (this.closed) {
        return;
      }
      if ((this.hasMoreChunks) && (!okhttp3.internal.c.a(this, TimeUnit.MILLISECONDS))) {
        endOfInput(false, null);
      }
      this.closed = true;
    }
  }
  
  private final class d
    implements r
  {
    private long bytesRemaining;
    private boolean closed;
    private final d.i dam = new d.i(a.this.dae.MK());
    
    d(long paramLong)
    {
      this.bytesRemaining = paramLong;
    }
    
    public final d.t MK()
    {
      return this.dam;
    }
    
    public final void b(d.c paramc, long paramLong)
      throws IOException
    {
      if (this.closed) {
        throw new IllegalStateException("closed");
      }
      okhttp3.internal.c.g(paramc.size, paramLong);
      if (paramLong > this.bytesRemaining) {
        throw new ProtocolException("expected " + this.bytesRemaining + " bytes but received " + paramLong);
      }
      a.this.dae.b(paramc, paramLong);
      this.bytesRemaining -= paramLong;
    }
    
    public final void close()
      throws IOException
    {
      if (this.closed) {
        return;
      }
      this.closed = true;
      if (this.bytesRemaining > 0L) {
        throw new ProtocolException("unexpected end of stream");
      }
      a.a(this.dam);
      a.this.state = 3;
    }
    
    public final void flush()
      throws IOException
    {
      if (this.closed) {
        return;
      }
      a.this.dae.flush();
    }
  }
  
  private final class e
    extends a.a
  {
    private long bytesRemaining;
    
    e(long paramLong)
      throws IOException
    {
      super((byte)0);
      this.bytesRemaining = paramLong;
      if (this.bytesRemaining == 0L) {
        endOfInput(true, null);
      }
    }
    
    public final long a(d.c paramc, long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (this.closed) {
        throw new IllegalStateException("closed");
      }
      if (this.bytesRemaining == 0L) {
        return -1L;
      }
      paramLong = super.a(paramc, Math.min(this.bytesRemaining, paramLong));
      if (paramLong == -1L)
      {
        paramc = new ProtocolException("unexpected end of stream");
        endOfInput(false, paramc);
        throw paramc;
      }
      this.bytesRemaining -= paramLong;
      if (this.bytesRemaining == 0L) {
        endOfInput(true, null);
      }
      return paramLong;
    }
    
    public final void close()
      throws IOException
    {
      if (this.closed) {
        return;
      }
      if ((this.bytesRemaining != 0L) && (!okhttp3.internal.c.a(this, TimeUnit.MILLISECONDS))) {
        endOfInput(false, null);
      }
      this.closed = true;
    }
  }
  
  private final class f
    extends a.a
  {
    private boolean inputExhausted;
    
    f()
    {
      super((byte)0);
    }
    
    public final long a(d.c paramc, long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (this.closed) {
        throw new IllegalStateException("closed");
      }
      if (this.inputExhausted) {
        return -1L;
      }
      paramLong = super.a(paramc, paramLong);
      if (paramLong == -1L)
      {
        this.inputExhausted = true;
        endOfInput(true, null);
        return -1L;
      }
      return paramLong;
    }
    
    public final void close()
      throws IOException
    {
      if (this.closed) {
        return;
      }
      if (!this.inputExhausted) {
        endOfInput(false, null);
      }
      this.closed = true;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/d/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */