package okhttp3.internal.e;

import d.d;
import d.e;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class g
  implements Closeable
{
  private static final ExecutorService daY;
  long bytesLeftInWriteWindow;
  final boolean client;
  final Set<Integer> currentPushRequests = new LinkedHashSet();
  final b daZ;
  private final ScheduledExecutorService dba;
  final l dbb;
  boolean dbc;
  public m dbd = new m();
  final m dbe = new m();
  public final j dbf;
  public final d dbg;
  final String hostname;
  int lastGoodStreamId;
  int nextStreamId;
  final ExecutorService pushExecutor;
  boolean receivedInitialPeerSettings = false;
  boolean shutdown;
  final Socket socket;
  final Map<Integer, i> streams = new LinkedHashMap();
  long unacknowledgedBytesRead = 0L;
  
  static
  {
    if (!g.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      daY = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), okhttp3.internal.c.threadFactory("OkHttp Http2Connection", true));
      return;
    }
  }
  
  public g(a parama)
  {
    this.dbb = parama.dbb;
    this.client = parama.client;
    this.daZ = parama.daZ;
    if (parama.client) {}
    for (int i = 1;; i = 2)
    {
      this.nextStreamId = i;
      if (parama.client) {
        this.nextStreamId += 2;
      }
      if (parama.client) {
        this.dbd.aV(7, 16777216);
      }
      this.hostname = parama.hostname;
      this.dba = new ScheduledThreadPoolExecutor(1, okhttp3.internal.c.threadFactory(okhttp3.internal.c.format("OkHttp %s Writer", new Object[] { this.hostname }), false));
      if (parama.dbk != 0) {
        this.dba.scheduleAtFixedRate(new c(false, 0, 0), parama.dbk, parama.dbk, TimeUnit.MILLISECONDS);
      }
      this.pushExecutor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), okhttp3.internal.c.threadFactory(okhttp3.internal.c.format("OkHttp %s Push Observer", new Object[] { this.hostname }), true));
      this.dbe.aV(7, 65535);
      this.dbe.aV(5, 16384);
      this.bytesLeftInWriteWindow = this.dbe.getInitialWindowSize();
      this.socket = parama.socket;
      this.dbf = new j(parama.dae, this.client);
      this.dbg = new d(new h(parama.dad, this.client));
      return;
    }
  }
  
  private void a(b paramb)
    throws IOException
  {
    int i;
    synchronized (this.dbf) {}
  }
  
  static boolean pushedStream(int paramInt)
  {
    return (paramInt != 0) && ((paramInt & 0x1) == 0);
  }
  
  final void MU()
  {
    try
    {
      a(b.dap, b.dap);
      return;
    }
    catch (IOException localIOException) {}
  }
  
  final void a(final int paramInt, final b paramb)
  {
    try
    {
      this.dba.execute(new okhttp3.internal.b("OkHttp %s stream %d", new Object[] { this.hostname, Integer.valueOf(paramInt) })
      {
        public final void execute()
        {
          try
          {
            g.this.b(paramInt, paramb);
            return;
          }
          catch (IOException localIOException)
          {
            g.b(g.this);
          }
        }
      });
      return;
    }
    catch (RejectedExecutionException paramb) {}
  }
  
  public final void a(int paramInt, boolean paramBoolean, d.c paramc, long paramLong)
    throws IOException
  {
    long l = paramLong;
    if (paramLong == 0L)
    {
      this.dbf.a(paramBoolean, paramInt, paramc, 0);
      return;
    }
    for (;;)
    {
      try
      {
        int i = Math.min((int)Math.min(l, this.bytesLeftInWriteWindow), this.dbf.maxFrameSize);
        this.bytesLeftInWriteWindow -= i;
        l -= i;
        j localj = this.dbf;
        if ((!paramBoolean) || (l != 0L)) {
          break label164;
        }
        bool = true;
        localj.a(bool, paramInt, paramc, i);
        if (l <= 0L) {
          break;
        }
        try
        {
          if (this.bytesLeftInWriteWindow > 0L) {
            continue;
          }
          if (!this.streams.containsKey(Integer.valueOf(paramInt))) {
            throw new IOException("stream closed");
          }
        }
        catch (InterruptedException paramc)
        {
          throw new InterruptedIOException();
        }
        wait();
      }
      finally {}
      continue;
      label164:
      boolean bool = false;
    }
  }
  
  /* Error */
  final void a(b paramb1, b paramb2)
    throws IOException
  {
    // Byte code:
    //   0: getstatic 86	okhttp3/internal/e/g:$assertionsDisabled	Z
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: invokestatic 322	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
    //   10: ifeq +11 -> 21
    //   13: new 324	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 325	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: aload_0
    //   22: aload_1
    //   23: invokespecial 327	okhttp3/internal/e/g:a	(Lokhttp3/internal/e/b;)V
    //   26: aconst_null
    //   27: astore_1
    //   28: aload_0
    //   29: monitorenter
    //   30: aload_0
    //   31: getfield 123	okhttp3/internal/e/g:streams	Ljava/util/Map;
    //   34: invokeinterface 330 1 0
    //   39: ifne +177 -> 216
    //   42: aload_0
    //   43: getfield 123	okhttp3/internal/e/g:streams	Ljava/util/Map;
    //   46: invokeinterface 334 1 0
    //   51: aload_0
    //   52: getfield 123	okhttp3/internal/e/g:streams	Ljava/util/Map;
    //   55: invokeinterface 337 1 0
    //   60: anewarray 339	okhttp3/internal/e/i
    //   63: invokeinterface 345 2 0
    //   68: checkcast 347	[Lokhttp3/internal/e/i;
    //   71: astore 6
    //   73: aload_0
    //   74: getfield 123	okhttp3/internal/e/g:streams	Ljava/util/Map;
    //   77: invokeinterface 350 1 0
    //   82: aload_0
    //   83: monitorexit
    //   84: aload_1
    //   85: astore 5
    //   87: aload 6
    //   89: ifnull +65 -> 154
    //   92: aload 6
    //   94: arraylength
    //   95: istore 4
    //   97: iconst_0
    //   98: istore_3
    //   99: iload_3
    //   100: iload 4
    //   102: if_icmpge +49 -> 151
    //   105: aload 6
    //   107: iload_3
    //   108: aaload
    //   109: astore 5
    //   111: aload 5
    //   113: aload_2
    //   114: invokevirtual 352	okhttp3/internal/e/i:b	(Lokhttp3/internal/e/b;)V
    //   117: aload_1
    //   118: astore 5
    //   120: iload_3
    //   121: iconst_1
    //   122: iadd
    //   123: istore_3
    //   124: aload 5
    //   126: astore_1
    //   127: goto -28 -> 99
    //   130: astore_1
    //   131: aload_0
    //   132: monitorexit
    //   133: aload_1
    //   134: athrow
    //   135: astore 7
    //   137: aload_1
    //   138: astore 5
    //   140: aload_1
    //   141: ifnull -21 -> 120
    //   144: aload 7
    //   146: astore 5
    //   148: goto -28 -> 120
    //   151: aload_1
    //   152: astore 5
    //   154: aload_0
    //   155: getfield 214	okhttp3/internal/e/g:dbf	Lokhttp3/internal/e/j;
    //   158: invokevirtual 355	okhttp3/internal/e/j:close	()V
    //   161: aload 5
    //   163: astore_1
    //   164: aload_0
    //   165: getfield 203	okhttp3/internal/e/g:socket	Ljava/net/Socket;
    //   168: invokevirtual 358	java/net/Socket:close	()V
    //   171: aload_0
    //   172: getfield 171	okhttp3/internal/e/g:dba	Ljava/util/concurrent/ScheduledExecutorService;
    //   175: invokeinterface 360 1 0
    //   180: aload_0
    //   181: getfield 193	okhttp3/internal/e/g:pushExecutor	Ljava/util/concurrent/ExecutorService;
    //   184: invokeinterface 363 1 0
    //   189: aload_1
    //   190: ifnull +21 -> 211
    //   193: aload_1
    //   194: athrow
    //   195: astore_1
    //   196: aload 5
    //   198: ifnull -34 -> 164
    //   201: aload 5
    //   203: astore_1
    //   204: goto -40 -> 164
    //   207: astore_1
    //   208: goto -180 -> 28
    //   211: return
    //   212: astore_1
    //   213: goto -42 -> 171
    //   216: aconst_null
    //   217: astore 6
    //   219: goto -137 -> 82
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	222	0	this	g
    //   0	222	1	paramb1	b
    //   0	222	2	paramb2	b
    //   98	26	3	i	int
    //   95	8	4	j	int
    //   85	117	5	localObject	Object
    //   71	147	6	arrayOfi	i[]
    //   135	10	7	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   30	82	130	finally
    //   82	84	130	finally
    //   131	133	130	finally
    //   111	117	135	java/io/IOException
    //   154	161	195	java/io/IOException
    //   21	26	207	java/io/IOException
    //   164	171	212	java/io/IOException
  }
  
  final void b(int paramInt, b paramb)
    throws IOException
  {
    this.dbf.c(paramInt, paramb);
  }
  
  final i c(List<c> paramList, boolean paramBoolean)
    throws IOException
  {
    int i = 0;
    if (!paramBoolean) {}
    for (boolean bool = true;; bool = false) {
      synchronized (this.dbf)
      {
        try
        {
          if (this.nextStreamId > 1073741823) {
            a(b.das);
          }
          if (!this.shutdown) {
            break;
          }
          throw new a();
        }
        finally {}
      }
    }
    int j = this.nextStreamId;
    this.nextStreamId += 2;
    i locali = new i(j, this, bool, false, paramList);
    if ((paramBoolean) && (this.bytesLeftInWriteWindow != 0L) && (locali.bytesLeftInWriteWindow != 0L)) {}
    for (;;)
    {
      if (locali.isOpen()) {
        this.streams.put(Integer.valueOf(j), locali);
      }
      this.dbf.c(bool, j, paramList);
      if (i != 0) {
        this.dbf.flush();
      }
      return locali;
      i = 1;
    }
  }
  
  public final void close()
    throws IOException
  {
    a(b.dao, b.dat);
  }
  
  final i fS(int paramInt)
  {
    try
    {
      i locali = (i)this.streams.get(Integer.valueOf(paramInt));
      return locali;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final i fT(int paramInt)
  {
    try
    {
      i locali = (i)this.streams.remove(Integer.valueOf(paramInt));
      notifyAll();
      return locali;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean isShutdown()
  {
    try
    {
      boolean bool = this.shutdown;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final int maxConcurrentStreams()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 132	okhttp3/internal/e/g:dbe	Lokhttp3/internal/e/m;
    //   6: astore_2
    //   7: aload_2
    //   8: getfield 416	okhttp3/internal/e/m:set	I
    //   11: bipush 16
    //   13: iand
    //   14: ifeq +14 -> 28
    //   17: aload_2
    //   18: getfield 419	okhttp3/internal/e/m:values	[I
    //   21: iconst_4
    //   22: iaload
    //   23: istore_1
    //   24: aload_0
    //   25: monitorexit
    //   26: iload_1
    //   27: ireturn
    //   28: ldc 89
    //   30: istore_1
    //   31: goto -7 -> 24
    //   34: astore_2
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_2
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	g
    //   23	8	1	i	int
    //   6	12	2	localm	m
    //   34	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	24	34	finally
  }
  
  final void writeWindowUpdateLater(final int paramInt, final long paramLong)
  {
    try
    {
      this.dba.execute(new okhttp3.internal.b("OkHttp Window Update %s stream %d", new Object[] { this.hostname, Integer.valueOf(paramInt) })
      {
        public final void execute()
        {
          try
          {
            g.this.dbf.windowUpdate(paramInt, paramLong);
            return;
          }
          catch (IOException localIOException)
          {
            g.b(g.this);
          }
        }
      });
      return;
    }
    catch (RejectedExecutionException localRejectedExecutionException) {}
  }
  
  public static final class a
  {
    boolean client = true;
    public g.b daZ = g.b.dbl;
    public e dad;
    public d dae;
    l dbb = l.dbJ;
    public int dbk;
    public String hostname;
    public Socket socket;
  }
  
  public static abstract class b
  {
    public static final b dbl = new b()
    {
      public final void a(i paramAnonymousi)
        throws IOException
      {
        paramAnonymousi.b(b.das);
      }
    };
    
    public void a(g paramg) {}
    
    public abstract void a(i parami)
      throws IOException;
  }
  
  final class c
    extends okhttp3.internal.b
  {
    final boolean dbm;
    final int dbn;
    final int dbo;
    
    c(boolean paramBoolean, int paramInt1, int paramInt2)
    {
      super(new Object[] { g.this.hostname, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
      this.dbm = paramBoolean;
      this.dbn = paramInt1;
      this.dbo = paramInt2;
    }
    
    public final void execute()
    {
      g localg = g.this;
      boolean bool1 = this.dbm;
      int i = this.dbn;
      int j = this.dbo;
      if (!bool1) {
        try
        {
          boolean bool2 = localg.dbc;
          localg.dbc = true;
          if (bool2)
          {
            localg.MU();
            return;
          }
        }
        finally {}
      }
      try
      {
        localg.dbf.ping(bool1, i, j);
        return;
      }
      catch (IOException localIOException)
      {
        localg.MU();
      }
    }
  }
  
  final class d
    extends okhttp3.internal.b
    implements h.b
  {
    final h dbp;
    
    d(h paramh)
    {
      super(new Object[] { g.this.hostname });
      this.dbp = paramh;
    }
    
    public final void a(int paramInt, d.f arg2)
    {
      ???.size();
      synchronized (g.this)
      {
        i[] arrayOfi = (i[])g.this.streams.values().toArray(new i[g.this.streams.size()]);
        g.this.shutdown = true;
        int j = arrayOfi.length;
        int i = 0;
        if (i < j)
        {
          ??? = arrayOfi[i];
          if ((???.id > paramInt) && (???.isLocallyInitiated()))
          {
            ???.e(b.das);
            g.this.fT(???.id);
          }
          i += 1;
        }
      }
    }
    
    public final void a(final m paramm)
    {
      int j;
      int i;
      synchronized (g.this)
      {
        j = g.this.dbe.getInitialWindowSize();
        m localm = g.this.dbe;
        i = 0;
        if (i < 10)
        {
          if (paramm.isSet(i)) {
            localm.aV(i, paramm.values[i]);
          }
          i += 1;
        }
      }
      try
      {
        g.c(g.this).execute(new okhttp3.internal.b("OkHttp %s ACK Settings", new Object[] { g.this.hostname })
        {
          public final void execute()
          {
            try
            {
              g.this.dbf.b(paramm);
              return;
            }
            catch (IOException localIOException)
            {
              g.b(g.this);
            }
          }
        });
        i = g.this.dbe.getInitialWindowSize();
        if ((i != -1) && (i != j))
        {
          l = i - j;
          if (!g.this.receivedInitialPeerSettings)
          {
            paramm = g.this;
            paramm.bytesLeftInWriteWindow += l;
            if (l > 0L) {
              paramm.notifyAll();
            }
            g.this.receivedInitialPeerSettings = true;
          }
          if (!g.this.streams.isEmpty())
          {
            paramm = (i[])g.this.streams.values().toArray(new i[g.this.streams.size()]);
            g.MV().execute(new okhttp3.internal.b("OkHttp %s settings", new Object[] { g.this.hostname })
            {
              public final void execute()
              {
                g.this.daZ.a(g.this);
              }
            });
            if ((paramm != null) && (l != 0L))
            {
              j = paramm.length;
              i = 0;
              while (i < j) {
                synchronized (paramm[i])
                {
                  ???.addBytesToWriteWindow(l);
                  i += 1;
                  continue;
                  paramm = finally;
                  throw paramm;
                }
              }
            }
            return;
          }
        }
      }
      catch (RejectedExecutionException paramm)
      {
        for (;;)
        {
          continue;
          paramm = null;
          continue;
          long l = 0L;
          paramm = null;
        }
      }
    }
    
    public final void a(boolean paramBoolean, int paramInt1, e parame, int paramInt2)
      throws IOException
    {
      Object localObject;
      if (g.pushedStream(paramInt1))
      {
        localObject = g.this;
        d.c localc = new d.c();
        parame.Z(paramInt2);
        parame.a(localc, paramInt2);
        if (localc.size != paramInt2) {
          throw new IOException(localc.size + " != " + paramInt2);
        }
        ((g)localObject).pushExecutor.execute(new g.5((g)localObject, "OkHttp %s Push Data[%s]", new Object[] { ((g)localObject).hostname, Integer.valueOf(paramInt1) }, paramInt1, localc, paramInt2, paramBoolean));
      }
      do
      {
        return;
        localObject = g.this.fS(paramInt1);
        if (localObject == null)
        {
          g.this.a(paramInt1, b.dap);
          parame.ah(paramInt2);
          return;
        }
        if ((!i.$assertionsDisabled) && (Thread.holdsLock(localObject))) {
          throw new AssertionError();
        }
        ((i)localObject).dbv.a(parame, paramInt2);
      } while (!paramBoolean);
      ((i)localObject).receiveFin();
    }
    
    /* Error */
    public final void b(boolean paramBoolean, int paramInt, final List<c> paramList)
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore 4
      //   3: iload_2
      //   4: invokestatic 166	okhttp3/internal/e/g:pushedStream	(I)Z
      //   7: ifeq +54 -> 61
      //   10: aload_0
      //   11: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   14: astore 5
      //   16: aload 5
      //   18: getfield 205	okhttp3/internal/e/g:pushExecutor	Ljava/util/concurrent/ExecutorService;
      //   21: new 259	okhttp3/internal/e/g$4
      //   24: dup
      //   25: aload 5
      //   27: ldc_w 261
      //   30: iconst_2
      //   31: anewarray 27	java/lang/Object
      //   34: dup
      //   35: iconst_0
      //   36: aload 5
      //   38: getfield 31	okhttp3/internal/e/g:hostname	Ljava/lang/String;
      //   41: aastore
      //   42: dup
      //   43: iconst_1
      //   44: iload_2
      //   45: invokestatic 215	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   48: aastore
      //   49: iload_2
      //   50: aload_3
      //   51: iload_1
      //   52: invokespecial 264	okhttp3/internal/e/g$4:<init>	(Lokhttp3/internal/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
      //   55: invokeinterface 156 2 0
      //   60: return
      //   61: aload_0
      //   62: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   65: astore 5
      //   67: aload 5
      //   69: monitorenter
      //   70: aload_0
      //   71: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   74: iload_2
      //   75: invokevirtual 221	okhttp3/internal/e/g:fS	(I)Lokhttp3/internal/e/i;
      //   78: astore 6
      //   80: aload 6
      //   82: ifnonnull +144 -> 226
      //   85: aload_0
      //   86: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   89: getfield 70	okhttp3/internal/e/g:shutdown	Z
      //   92: ifeq +13 -> 105
      //   95: aload 5
      //   97: monitorexit
      //   98: return
      //   99: astore_3
      //   100: aload 5
      //   102: monitorexit
      //   103: aload_3
      //   104: athrow
      //   105: iload_2
      //   106: aload_0
      //   107: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   110: getfield 267	okhttp3/internal/e/g:lastGoodStreamId	I
      //   113: if_icmpgt +7 -> 120
      //   116: aload 5
      //   118: monitorexit
      //   119: return
      //   120: iload_2
      //   121: iconst_2
      //   122: irem
      //   123: aload_0
      //   124: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   127: getfield 270	okhttp3/internal/e/g:nextStreamId	I
      //   130: iconst_2
      //   131: irem
      //   132: if_icmpne +7 -> 139
      //   135: aload 5
      //   137: monitorexit
      //   138: return
      //   139: new 58	okhttp3/internal/e/i
      //   142: dup
      //   143: iload_2
      //   144: aload_0
      //   145: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   148: iconst_0
      //   149: iload_1
      //   150: aload_3
      //   151: invokespecial 273	okhttp3/internal/e/i:<init>	(ILokhttp3/internal/e/g;ZZLjava/util/List;)V
      //   154: astore_3
      //   155: aload_0
      //   156: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   159: iload_2
      //   160: putfield 267	okhttp3/internal/e/g:lastGoodStreamId	I
      //   163: aload_0
      //   164: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   167: getfield 49	okhttp3/internal/e/g:streams	Ljava/util/Map;
      //   170: iload_2
      //   171: invokestatic 215	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   174: aload_3
      //   175: invokeinterface 277 3 0
      //   180: pop
      //   181: invokestatic 148	okhttp3/internal/e/g:MV	()Ljava/util/concurrent/ExecutorService;
      //   184: new 11	okhttp3/internal/e/g$d$1
      //   187: dup
      //   188: aload_0
      //   189: ldc_w 279
      //   192: iconst_2
      //   193: anewarray 27	java/lang/Object
      //   196: dup
      //   197: iconst_0
      //   198: aload_0
      //   199: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   202: getfield 31	okhttp3/internal/e/g:hostname	Ljava/lang/String;
      //   205: aastore
      //   206: dup
      //   207: iconst_1
      //   208: iload_2
      //   209: invokestatic 215	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   212: aastore
      //   213: aload_3
      //   214: invokespecial 282	okhttp3/internal/e/g$d$1:<init>	(Lokhttp3/internal/e/g$d;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/e/i;)V
      //   217: invokeinterface 156 2 0
      //   222: aload 5
      //   224: monitorexit
      //   225: return
      //   226: aload 5
      //   228: monitorexit
      //   229: getstatic 233	okhttp3/internal/e/i:$assertionsDisabled	Z
      //   232: ifne +19 -> 251
      //   235: aload 6
      //   237: invokestatic 239	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
      //   240: ifeq +11 -> 251
      //   243: new 241	java/lang/AssertionError
      //   246: dup
      //   247: invokespecial 242	java/lang/AssertionError:<init>	()V
      //   250: athrow
      //   251: aload 6
      //   253: monitorenter
      //   254: aload 6
      //   256: iconst_1
      //   257: putfield 285	okhttp3/internal/e/i:hasResponseHeaders	Z
      //   260: aload 6
      //   262: getfield 289	okhttp3/internal/e/i:responseHeaders	Ljava/util/List;
      //   265: ifnonnull +53 -> 318
      //   268: aload 6
      //   270: aload_3
      //   271: putfield 289	okhttp3/internal/e/i:responseHeaders	Ljava/util/List;
      //   274: aload 6
      //   276: invokevirtual 292	okhttp3/internal/e/i:isOpen	()Z
      //   279: istore 4
      //   281: aload 6
      //   283: invokevirtual 141	java/lang/Object:notifyAll	()V
      //   286: aload 6
      //   288: monitorexit
      //   289: iload 4
      //   291: ifne +17 -> 308
      //   294: aload 6
      //   296: getfield 295	okhttp3/internal/e/i:daV	Lokhttp3/internal/e/g;
      //   299: aload 6
      //   301: getfield 74	okhttp3/internal/e/i:id	I
      //   304: invokevirtual 92	okhttp3/internal/e/g:fT	(I)Lokhttp3/internal/e/i;
      //   307: pop
      //   308: iload_1
      //   309: ifeq -249 -> 60
      //   312: aload 6
      //   314: invokevirtual 254	okhttp3/internal/e/i:receiveFin	()V
      //   317: return
      //   318: new 297	java/util/ArrayList
      //   321: dup
      //   322: invokespecial 298	java/util/ArrayList:<init>	()V
      //   325: astore 5
      //   327: aload 5
      //   329: aload 6
      //   331: getfield 289	okhttp3/internal/e/i:responseHeaders	Ljava/util/List;
      //   334: invokeinterface 304 2 0
      //   339: pop
      //   340: aload 5
      //   342: aconst_null
      //   343: invokeinterface 307 2 0
      //   348: pop
      //   349: aload 5
      //   351: aload_3
      //   352: invokeinterface 304 2 0
      //   357: pop
      //   358: aload 6
      //   360: aload 5
      //   362: putfield 289	okhttp3/internal/e/i:responseHeaders	Ljava/util/List;
      //   365: goto -79 -> 286
      //   368: astore_3
      //   369: aload 6
      //   371: monitorexit
      //   372: aload_3
      //   373: athrow
      //   374: astore_3
      //   375: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	376	0	this	d
      //   0	376	1	paramBoolean	boolean
      //   0	376	2	paramInt	int
      //   0	376	3	paramList	List<c>
      //   1	289	4	bool	boolean
      //   78	292	6	locali	i
      // Exception table:
      //   from	to	target	type
      //   70	80	99	finally
      //   85	98	99	finally
      //   100	103	99	finally
      //   105	119	99	finally
      //   120	138	99	finally
      //   139	225	99	finally
      //   226	229	99	finally
      //   254	286	368	finally
      //   286	289	368	finally
      //   318	365	368	finally
      //   369	372	368	finally
      //   16	60	374	java/util/concurrent/RejectedExecutionException
    }
    
    public final void c(int paramInt, List<c> paramList)
    {
      synchronized (g.this)
      {
        if (???.currentPushRequests.contains(Integer.valueOf(paramInt)))
        {
          ???.a(paramInt, b.dap);
          return;
        }
        ???.currentPushRequests.add(Integer.valueOf(paramInt));
        try
        {
          ???.pushExecutor.execute(new g.3(???, "OkHttp %s Push Request[%s]", new Object[] { ???.hostname, Integer.valueOf(paramInt) }, paramInt, paramList));
          return;
        }
        catch (RejectedExecutionException paramList) {}
      }
    }
    
    public final void c(int paramInt, b paramb)
    {
      Object localObject;
      if (g.pushedStream(paramInt))
      {
        localObject = g.this;
        ((g)localObject).pushExecutor.execute(new g.6((g)localObject, "OkHttp %s Push Reset[%s]", new Object[] { ((g)localObject).hostname, Integer.valueOf(paramInt) }, paramInt, paramb));
      }
      do
      {
        return;
        localObject = g.this.fT(paramInt);
      } while (localObject == null);
      ((i)localObject).e(paramb);
    }
    
    /* Error */
    protected final void execute()
    {
      // Byte code:
      //   0: getstatic 338	okhttp3/internal/e/b:daq	Lokhttp3/internal/e/b;
      //   3: astore_3
      //   4: getstatic 338	okhttp3/internal/e/b:daq	Lokhttp3/internal/e/b;
      //   7: astore 4
      //   9: aload_3
      //   10: astore_2
      //   11: aload_3
      //   12: astore_1
      //   13: aload_0
      //   14: getfield 36	okhttp3/internal/e/g$d:dbp	Lokhttp3/internal/e/h;
      //   17: astore 5
      //   19: aload_3
      //   20: astore_2
      //   21: aload_3
      //   22: astore_1
      //   23: aload 5
      //   25: getfield 343	okhttp3/internal/e/h:client	Z
      //   28: ifeq +60 -> 88
      //   31: aload_3
      //   32: astore_2
      //   33: aload_3
      //   34: astore_1
      //   35: aload 5
      //   37: iconst_1
      //   38: aload_0
      //   39: invokevirtual 346	okhttp3/internal/e/h:a	(ZLokhttp3/internal/e/h$b;)Z
      //   42: ifne +175 -> 217
      //   45: aload_3
      //   46: astore_2
      //   47: aload_3
      //   48: astore_1
      //   49: ldc_w 348
      //   52: iconst_0
      //   53: anewarray 27	java/lang/Object
      //   56: invokestatic 354	okhttp3/internal/e/e:ioException	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
      //   59: athrow
      //   60: astore_1
      //   61: aload_2
      //   62: astore_1
      //   63: getstatic 224	okhttp3/internal/e/b:dap	Lokhttp3/internal/e/b;
      //   66: astore_2
      //   67: getstatic 224	okhttp3/internal/e/b:dap	Lokhttp3/internal/e/b;
      //   70: astore_1
      //   71: aload_0
      //   72: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   75: aload_2
      //   76: aload_1
      //   77: invokevirtual 357	okhttp3/internal/e/g:a	(Lokhttp3/internal/e/b;Lokhttp3/internal/e/b;)V
      //   80: aload_0
      //   81: getfield 36	okhttp3/internal/e/g$d:dbp	Lokhttp3/internal/e/h;
      //   84: invokestatic 363	okhttp3/internal/c:closeQuietly	(Ljava/io/Closeable;)V
      //   87: return
      //   88: aload_3
      //   89: astore_2
      //   90: aload_3
      //   91: astore_1
      //   92: aload 5
      //   94: getfield 367	okhttp3/internal/e/h:dad	Ld/e;
      //   97: getstatic 371	okhttp3/internal/e/e:daL	Ld/f;
      //   100: invokevirtual 45	d/f:size	()I
      //   103: i2l
      //   104: invokeinterface 375 3 0
      //   109: astore 5
      //   111: aload_3
      //   112: astore_2
      //   113: aload_3
      //   114: astore_1
      //   115: getstatic 379	okhttp3/internal/e/h:logger	Ljava/util/logging/Logger;
      //   118: getstatic 385	java/util/logging/Level:FINE	Ljava/util/logging/Level;
      //   121: invokevirtual 391	java/util/logging/Logger:isLoggable	(Ljava/util/logging/Level;)Z
      //   124: ifeq +31 -> 155
      //   127: aload_3
      //   128: astore_2
      //   129: aload_3
      //   130: astore_1
      //   131: getstatic 379	okhttp3/internal/e/h:logger	Ljava/util/logging/Logger;
      //   134: ldc_w 393
      //   137: iconst_1
      //   138: anewarray 27	java/lang/Object
      //   141: dup
      //   142: iconst_0
      //   143: aload 5
      //   145: invokevirtual 396	d/f:KJ	()Ljava/lang/String;
      //   148: aastore
      //   149: invokestatic 400	okhttp3/internal/c:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   152: invokevirtual 403	java/util/logging/Logger:fine	(Ljava/lang/String;)V
      //   155: aload_3
      //   156: astore_2
      //   157: aload_3
      //   158: astore_1
      //   159: getstatic 371	okhttp3/internal/e/e:daL	Ld/f;
      //   162: aload 5
      //   164: invokevirtual 406	d/f:equals	(Ljava/lang/Object;)Z
      //   167: ifne +50 -> 217
      //   170: aload_3
      //   171: astore_2
      //   172: aload_3
      //   173: astore_1
      //   174: ldc_w 408
      //   177: iconst_1
      //   178: anewarray 27	java/lang/Object
      //   181: dup
      //   182: iconst_0
      //   183: aload 5
      //   185: invokevirtual 411	d/f:KE	()Ljava/lang/String;
      //   188: aastore
      //   189: invokestatic 354	okhttp3/internal/e/e:ioException	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
      //   192: athrow
      //   193: astore_3
      //   194: aload_1
      //   195: astore_2
      //   196: aload_3
      //   197: astore_1
      //   198: aload_0
      //   199: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   202: aload_2
      //   203: aload 4
      //   205: invokevirtual 357	okhttp3/internal/e/g:a	(Lokhttp3/internal/e/b;Lokhttp3/internal/e/b;)V
      //   208: aload_0
      //   209: getfield 36	okhttp3/internal/e/g$d:dbp	Lokhttp3/internal/e/h;
      //   212: invokestatic 363	okhttp3/internal/c:closeQuietly	(Ljava/io/Closeable;)V
      //   215: aload_1
      //   216: athrow
      //   217: aload_3
      //   218: astore_2
      //   219: aload_3
      //   220: astore_1
      //   221: aload_0
      //   222: getfield 36	okhttp3/internal/e/g$d:dbp	Lokhttp3/internal/e/h;
      //   225: iconst_0
      //   226: aload_0
      //   227: invokevirtual 346	okhttp3/internal/e/h:a	(ZLokhttp3/internal/e/h$b;)Z
      //   230: ifne -13 -> 217
      //   233: aload_3
      //   234: astore_2
      //   235: aload_3
      //   236: astore_1
      //   237: getstatic 414	okhttp3/internal/e/b:dao	Lokhttp3/internal/e/b;
      //   240: astore_3
      //   241: aload_3
      //   242: astore_2
      //   243: aload_3
      //   244: astore_1
      //   245: getstatic 417	okhttp3/internal/e/b:dat	Lokhttp3/internal/e/b;
      //   248: astore 5
      //   250: aload_0
      //   251: getfield 23	okhttp3/internal/e/g$d:dbi	Lokhttp3/internal/e/g;
      //   254: aload_3
      //   255: aload 5
      //   257: invokevirtual 357	okhttp3/internal/e/g:a	(Lokhttp3/internal/e/b;Lokhttp3/internal/e/b;)V
      //   260: aload_0
      //   261: getfield 36	okhttp3/internal/e/g$d:dbp	Lokhttp3/internal/e/h;
      //   264: invokestatic 363	okhttp3/internal/c:closeQuietly	(Ljava/io/Closeable;)V
      //   267: return
      //   268: astore_2
      //   269: goto -61 -> 208
      //   272: astore_1
      //   273: goto -75 -> 198
      //   276: astore_1
      //   277: goto -197 -> 80
      //   280: astore_1
      //   281: goto -21 -> 260
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	284	0	this	d
      //   12	37	1	localb1	b
      //   60	1	1	localIOException1	IOException
      //   62	183	1	localObject1	Object
      //   272	1	1	localObject2	Object
      //   276	1	1	localIOException2	IOException
      //   280	1	1	localIOException3	IOException
      //   10	233	2	localObject3	Object
      //   268	1	2	localIOException4	IOException
      //   3	170	3	localb2	b
      //   193	43	3	localObject4	Object
      //   240	15	3	localb3	b
      //   7	197	4	localb4	b
      //   17	239	5	localObject5	Object
      // Exception table:
      //   from	to	target	type
      //   13	19	60	java/io/IOException
      //   23	31	60	java/io/IOException
      //   35	45	60	java/io/IOException
      //   49	60	60	java/io/IOException
      //   92	111	60	java/io/IOException
      //   115	127	60	java/io/IOException
      //   131	155	60	java/io/IOException
      //   159	170	60	java/io/IOException
      //   174	193	60	java/io/IOException
      //   221	233	60	java/io/IOException
      //   237	241	60	java/io/IOException
      //   245	250	60	java/io/IOException
      //   13	19	193	finally
      //   23	31	193	finally
      //   35	45	193	finally
      //   49	60	193	finally
      //   63	67	193	finally
      //   92	111	193	finally
      //   115	127	193	finally
      //   131	155	193	finally
      //   159	170	193	finally
      //   174	193	193	finally
      //   221	233	193	finally
      //   237	241	193	finally
      //   245	250	193	finally
      //   198	208	268	java/io/IOException
      //   67	71	272	finally
      //   71	80	276	java/io/IOException
      //   250	260	280	java/io/IOException
    }
    
    public final void ping(boolean paramBoolean, int paramInt1, int paramInt2)
    {
      if (paramBoolean) {
        synchronized (g.this)
        {
          g.d(g.this);
          g.this.notifyAll();
          return;
        }
      }
      try
      {
        g.c(g.this).execute(new g.c(g.this, true, paramInt1, paramInt2));
        return;
      }
      catch (RejectedExecutionException localRejectedExecutionException) {}
    }
    
    public final void windowUpdate(int paramInt, long paramLong)
    {
      if (paramInt == 0) {
        synchronized (g.this)
        {
          g localg = g.this;
          localg.bytesLeftInWriteWindow += paramLong;
          g.this.notifyAll();
          return;
        }
      }
      ??? = g.this.fS(paramInt);
      if (??? != null) {
        try
        {
          ((i)???).addBytesToWriteWindow(paramLong);
          return;
        }
        finally {}
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/e/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */