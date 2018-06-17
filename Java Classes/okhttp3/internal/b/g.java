package okhttp3.internal.b;

import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import okhttp3.aa;
import okhttp3.e;
import okhttp3.h;
import okhttp3.internal.e.b;
import okhttp3.q;

public final class g
{
  public final h cZd;
  public final okhttp3.n cZl;
  public final okhttp3.a cZz;
  private final Object callStackTrace;
  private boolean canceled;
  public aa dab;
  public final e daf;
  public f.a dag;
  public final f dah;
  public c dai;
  public okhttp3.internal.c.c daj;
  private int refusedStreamCount;
  private boolean released;
  private boolean reportedAcquired;
  
  static
  {
    if (!g.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public g(h paramh, okhttp3.a parama, e parame, okhttp3.n paramn, Object paramObject)
  {
    this.cZd = paramh;
    this.cZz = parama;
    this.daf = parame;
    this.cZl = paramn;
    this.dah = new f(parama, MQ(), parame, paramn);
    this.callStackTrace = paramObject;
  }
  
  private d MQ()
  {
    return okhttp3.internal.a.cZG.a(this.cZd);
  }
  
  private c a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
    throws IOException
  {
    for (;;)
    {
      c localc1 = d(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1);
      synchronized (this.cZd)
      {
        if (localc1.successCount == 0) {
          return localc1;
        }
        if (!localc1.isHealthy(paramBoolean2)) {
          noNewStreams();
        }
      }
    }
    return localc2;
  }
  
  private void a(c paramc)
  {
    int j = paramc.allocations.size();
    int i = 0;
    while (i < j)
    {
      if (((Reference)paramc.allocations.get(i)).get() == this)
      {
        paramc.allocations.remove(i);
        return;
      }
      i += 1;
    }
    throw new IllegalStateException();
  }
  
  private c d(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
    throws IOException
  {
    int j = 0;
    Object localObject6 = null;
    Object localObject10 = null;
    synchronized (this.cZd)
    {
      if (this.released) {
        throw new IllegalStateException("released");
      }
    }
    if (this.daj != null) {
      throw new IllegalStateException("codec != null");
    }
    if (this.canceled) {
      throw new IOException("Canceled");
    }
    Object localObject2 = this.dai;
    assert (Thread.holdsLock(this.cZd));
    Object localObject7 = this.dai;
    Object localObject9;
    int i;
    if ((localObject7 != null) && (((c)localObject7).noNewStreams))
    {
      ??? = deallocate(false, false, true);
      if (this.dai != null)
      {
        localObject6 = this.dai;
        localObject2 = null;
      }
      localObject9 = localObject2;
      if (!this.reportedAcquired) {
        localObject9 = null;
      }
      localObject7 = localObject6;
      localObject2 = localObject10;
      i = j;
      if (localObject6 == null)
      {
        okhttp3.internal.a.cZG.a(this.cZd, this.cZz, this, null);
        if (this.dai == null) {
          break label257;
        }
        i = 1;
        localObject7 = this.dai;
        localObject2 = localObject10;
      }
    }
    for (;;)
    {
      okhttp3.internal.c.closeQuietly((Socket)???);
      if (localObject9 != null) {
        okhttp3.n.Mo();
      }
      if (i != 0) {
        okhttp3.n.Mn();
      }
      if (localObject7 == null) {
        break label274;
      }
      return (c)localObject7;
      ??? = null;
      break;
      label257:
      localObject2 = this.dab;
      localObject7 = localObject6;
      i = j;
    }
    label274:
    int k = 0;
    j = k;
    if (localObject2 == null) {
      if (this.dag != null)
      {
        j = k;
        if (this.dag.hasNext()) {}
      }
      else
      {
        j = 1;
        this.dag = this.dah.MO();
      }
    }
    synchronized (this.cZd)
    {
      if (this.canceled) {
        throw new IOException("Canceled");
      }
    }
    if (j != 0)
    {
      localObject6 = new ArrayList(this.dag.routes);
      k = ((List)localObject6).size();
      j = 0;
    }
    for (;;)
    {
      if (j < k)
      {
        localObject9 = (aa)((List)localObject6).get(j);
        okhttp3.internal.a.cZG.a(this.cZd, this.cZz, this, (aa)localObject9);
        if (this.dai != null)
        {
          i = 1;
          localObject6 = this.dai;
          this.dab = ((aa)localObject9);
        }
      }
      else
      {
        for (;;)
        {
          Object localObject4;
          if (i == 0)
          {
            if (localObject3 != null) {
              break label675;
            }
            localObject4 = this.dag;
            if (!((f.a)localObject4).hasNext()) {
              throw new NoSuchElementException();
            }
            localObject6 = ((f.a)localObject4).routes;
            j = ((f.a)localObject4).nextRouteIndex;
            ((f.a)localObject4).nextRouteIndex = (j + 1);
            localObject4 = (aa)((List)localObject6).get(j);
          }
          label675:
          for (;;)
          {
            this.dab = ((aa)localObject4);
            this.refusedStreamCount = 0;
            localObject6 = new c(this.cZd, (aa)localObject4);
            a((c)localObject6, false);
            if (i != 0)
            {
              okhttp3.n.Mn();
              return (c)localObject6;
            }
            ((c)localObject6).c(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean);
            MQ().b(((c)localObject6).dab);
            localObject7 = null;
            synchronized (this.cZd)
            {
              this.reportedAcquired = true;
              okhttp3.internal.a.cZG.b(this.cZd, (c)localObject6);
              localObject4 = localObject6;
              if (((c)localObject6).isMultiplexed())
              {
                localObject7 = okhttp3.internal.a.cZG.a(this.cZd, this.cZz, this);
                localObject4 = this.dai;
              }
              okhttp3.internal.c.closeQuietly((Socket)localObject7);
              okhttp3.n.Mn();
              return (c)localObject4;
            }
          }
          localObject6 = localObject7;
        }
      }
      j += 1;
    }
  }
  
  public final okhttp3.internal.c.c MP()
  {
    synchronized (this.cZd)
    {
      okhttp3.internal.c.c localc = this.daj;
      return localc;
    }
  }
  
  public final c MR()
  {
    try
    {
      c localc = this.dai;
      return localc;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final okhttp3.internal.c.c a(okhttp3.t paramt, okhttp3.r.a arg2, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokeinterface 243 1 0
    //   6: istore 4
    //   8: aload_2
    //   9: invokeinterface 246 1 0
    //   14: istore 5
    //   16: aload_2
    //   17: invokeinterface 249 1 0
    //   22: istore 6
    //   24: aload_1
    //   25: getfield 254	okhttp3/t:pingInterval	I
    //   28: istore 7
    //   30: aload_1
    //   31: getfield 257	okhttp3/t:retryOnConnectionFailure	Z
    //   34: istore 8
    //   36: aload_0
    //   37: iload 4
    //   39: iload 5
    //   41: iload 6
    //   43: iload 7
    //   45: iload 8
    //   47: iload_3
    //   48: invokespecial 259	okhttp3/internal/b/g:a	(IIIIZZ)Lokhttp3/internal/b/c;
    //   51: astore 9
    //   53: aload 9
    //   55: getfield 263	okhttp3/internal/b/c:dac	Lokhttp3/internal/e/g;
    //   58: ifnull +35 -> 93
    //   61: new 265	okhttp3/internal/e/f
    //   64: dup
    //   65: aload_1
    //   66: aload_2
    //   67: aload_0
    //   68: aload 9
    //   70: getfield 263	okhttp3/internal/b/c:dac	Lokhttp3/internal/e/g;
    //   73: invokespecial 268	okhttp3/internal/e/f:<init>	(Lokhttp3/t;Lokhttp3/r$a;Lokhttp3/internal/b/g;Lokhttp3/internal/e/g;)V
    //   76: astore_1
    //   77: aload_0
    //   78: getfield 51	okhttp3/internal/b/g:cZd	Lokhttp3/h;
    //   81: astore_2
    //   82: aload_2
    //   83: monitorenter
    //   84: aload_0
    //   85: aload_1
    //   86: putfield 133	okhttp3/internal/b/g:daj	Lokhttp3/internal/c/c;
    //   89: aload_2
    //   90: monitorexit
    //   91: aload_1
    //   92: areturn
    //   93: aload 9
    //   95: getfield 272	okhttp3/internal/b/c:socket	Ljava/net/Socket;
    //   98: aload_2
    //   99: invokeinterface 246 1 0
    //   104: invokevirtual 278	java/net/Socket:setSoTimeout	(I)V
    //   107: aload 9
    //   109: getfield 282	okhttp3/internal/b/c:dad	Ld/e;
    //   112: invokeinterface 288 1 0
    //   117: aload_2
    //   118: invokeinterface 246 1 0
    //   123: i2l
    //   124: getstatic 294	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   127: invokevirtual 299	d/t:d	(JLjava/util/concurrent/TimeUnit;)Ld/t;
    //   130: pop
    //   131: aload 9
    //   133: getfield 303	okhttp3/internal/b/c:dae	Ld/d;
    //   136: invokeinterface 306 1 0
    //   141: aload_2
    //   142: invokeinterface 249 1 0
    //   147: i2l
    //   148: getstatic 294	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   151: invokevirtual 299	d/t:d	(JLjava/util/concurrent/TimeUnit;)Ld/t;
    //   154: pop
    //   155: new 308	okhttp3/internal/d/a
    //   158: dup
    //   159: aload_1
    //   160: aload_0
    //   161: aload 9
    //   163: getfield 282	okhttp3/internal/b/c:dad	Ld/e;
    //   166: aload 9
    //   168: getfield 303	okhttp3/internal/b/c:dae	Ld/d;
    //   171: invokespecial 311	okhttp3/internal/d/a:<init>	(Lokhttp3/t;Lokhttp3/internal/b/g;Ld/e;Ld/d;)V
    //   174: astore_1
    //   175: goto -98 -> 77
    //   178: astore_1
    //   179: new 313	okhttp3/internal/b/e
    //   182: dup
    //   183: aload_1
    //   184: invokespecial 316	okhttp3/internal/b/e:<init>	(Ljava/io/IOException;)V
    //   187: athrow
    //   188: astore_1
    //   189: aload_2
    //   190: monitorexit
    //   191: aload_1
    //   192: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	193	0	this	g
    //   0	193	1	paramt	okhttp3.t
    //   0	193	3	paramBoolean	boolean
    //   6	32	4	i	int
    //   14	26	5	j	int
    //   22	20	6	k	int
    //   28	16	7	m	int
    //   34	12	8	bool	boolean
    //   51	116	9	localc	c
    // Exception table:
    //   from	to	target	type
    //   36	77	178	java/io/IOException
    //   77	84	178	java/io/IOException
    //   93	175	178	java/io/IOException
    //   191	193	178	java/io/IOException
    //   84	91	188	finally
    //   189	191	188	finally
  }
  
  public final void a(c paramc, boolean paramBoolean)
  {
    assert (Thread.holdsLock(this.cZd));
    if (this.dai != null) {
      throw new IllegalStateException();
    }
    this.dai = paramc;
    this.reportedAcquired = paramBoolean;
    paramc.allocations.add(new a(this, this.callStackTrace));
  }
  
  public final void a(boolean paramBoolean, okhttp3.internal.c.c paramc, IOException paramIOException)
  {
    okhttp3.n.Mw();
    h localh = this.cZd;
    if (paramc != null) {}
    try
    {
      if (paramc != this.daj) {
        throw new IllegalStateException("expected " + this.daj + " but was " + paramc);
      }
    }
    finally
    {
      throw paramc;
      if (!paramBoolean)
      {
        paramc = this.dai;
        paramc.successCount += 1;
      }
      paramc = this.dai;
      Socket localSocket = deallocate(paramBoolean, false, true);
      if (this.dai != null) {
        paramc = null;
      }
      paramBoolean = this.released;
      okhttp3.internal.c.closeQuietly(localSocket);
      if (paramc != null) {
        okhttp3.n.Mo();
      }
      if (paramIOException != null)
      {
        okhttp3.n.My();
        return;
      }
    }
  }
  
  public final Socket deallocate(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    Object localObject2 = null;
    assert (Thread.holdsLock(this.cZd));
    if (paramBoolean3) {
      this.daj = null;
    }
    if (paramBoolean2) {
      this.released = true;
    }
    Object localObject1 = localObject2;
    if (this.dai != null)
    {
      if (paramBoolean1) {
        this.dai.noNewStreams = true;
      }
      localObject1 = localObject2;
      if (this.daj == null) {
        if (!this.released)
        {
          localObject1 = localObject2;
          if (!this.dai.noNewStreams) {}
        }
        else
        {
          a(this.dai);
          if (!this.dai.allocations.isEmpty()) {
            break label167;
          }
          this.dai.idleAtNanos = System.nanoTime();
          if (!okhttp3.internal.a.cZG.a(this.cZd, this.dai)) {
            break label167;
          }
        }
      }
    }
    label167:
    for (localObject1 = this.dai.socket;; localObject1 = null)
    {
      this.dai = null;
      return (Socket)localObject1;
    }
  }
  
  public final void noNewStreams()
  {
    synchronized (this.cZd)
    {
      c localc = this.dai;
      Socket localSocket = deallocate(true, false, false);
      if (this.dai != null) {
        localc = null;
      }
      okhttp3.internal.c.closeQuietly(localSocket);
      if (localc != null) {
        okhttp3.n.Mo();
      }
      return;
    }
  }
  
  public final void release()
  {
    synchronized (this.cZd)
    {
      c localc = this.dai;
      Socket localSocket = deallocate(false, true, false);
      if (this.dai != null) {
        localc = null;
      }
      okhttp3.internal.c.closeQuietly(localSocket);
      if (localc != null) {
        okhttp3.n.Mo();
      }
      return;
    }
  }
  
  public final void streamFailed(IOException paramIOException)
  {
    boolean bool1 = false;
    boolean bool2 = true;
    for (;;)
    {
      synchronized (this.cZd)
      {
        Object localObject;
        if ((paramIOException instanceof okhttp3.internal.e.n))
        {
          paramIOException = (okhttp3.internal.e.n)paramIOException;
          if (paramIOException.dbz == b.das) {
            this.refusedStreamCount += 1;
          }
          if ((paramIOException.dbz == b.das) && (this.refusedStreamCount <= 1)) {
            break label266;
          }
          this.dab = null;
          bool1 = true;
          break label266;
          paramIOException = this.dai;
          localObject = deallocate(bool1, false, true);
          if ((this.dai != null) || (!this.reportedAcquired)) {
            break label269;
          }
          okhttp3.internal.c.closeQuietly((Socket)localObject);
          if (paramIOException != null) {
            okhttp3.n.Mo();
          }
          return;
        }
        if ((this.dai != null) && ((!this.dai.isMultiplexed()) || ((paramIOException instanceof okhttp3.internal.e.a))))
        {
          bool1 = bool2;
          if (this.dai.successCount != 0) {
            continue;
          }
          if ((this.dab != null) && (paramIOException != null))
          {
            localObject = this.dah;
            aa localaa = this.dab;
            if ((localaa.proxy.type() != Proxy.Type.DIRECT) && (((f)localObject).cZz.proxySelector != null)) {
              ((f)localObject).cZz.proxySelector.connectFailed(((f)localObject).cZz.cVX.uri(), localaa.proxy.address(), paramIOException);
            }
            ((f)localObject).cYG.a(localaa);
          }
          this.dab = null;
          bool1 = bool2;
        }
      }
      bool1 = false;
      continue;
      label266:
      continue;
      label269:
      paramIOException = null;
    }
  }
  
  public final String toString()
  {
    c localc = MR();
    if (localc != null) {
      return localc.toString();
    }
    return this.cZz.toString();
  }
  
  public static final class a
    extends WeakReference<g>
  {
    public final Object callStackTrace;
    
    a(g paramg, Object paramObject)
    {
      super();
      this.callStackTrace = paramObject;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/b/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */