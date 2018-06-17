package com.b.a.a.b;

import b.f;
import com.b.a.y;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class n
  implements Closeable
{
  private static final ExecutorService bKY;
  final boolean b;
  private final Map<Integer, p> bCI = new HashMap();
  private long bCM = System.nanoTime();
  public final y bJR;
  private final com.b.a.m bKZ;
  private int bKk;
  private final com.b.a.n bLa;
  private final i bLb;
  private int bLc;
  private final ExecutorService bLd;
  private Map<Integer, k> bLe;
  private final o bLf;
  public final l bLg = new l();
  final l bLh = new l();
  private boolean bLi = false;
  final q bLj;
  final Socket bLk;
  public final c bLl;
  final b bLm;
  long c = 0L;
  long d;
  private final String q;
  private boolean t;
  private int y;
  
  static
  {
    if (!n.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      brj = bool;
      bKY = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), com.b.a.a.i.g("OkHttp SpdyConnection", true));
      return;
    }
  }
  
  private n(a parama)
    throws IOException
  {
    this.bKZ = parama.bJH;
    this.bLa = parama.bLs;
    this.bJR = parama.bLu;
    this.b = parama.h;
    this.bLb = parama.bLt;
    int i;
    if (parama.h)
    {
      i = 1;
      this.bKk = i;
      if ((parama.h) && (this.bJR == y.bMl)) {
        this.bKk += 2;
      }
      i = j;
      if (parama.h) {
        i = 1;
      }
      this.y = i;
      if (parama.h) {
        this.bLg.m(7, 0, 16777216);
      }
      this.q = parama.c;
      if (this.bJR != y.bMl) {
        break label344;
      }
    }
    for (this.bLj = new g();; this.bLj = new m())
    {
      this.bLd = new ThreadPoolExecutor(0, 1, 10000L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), com.b.a.a.i.g(String.format("OkHttp %s Push Observer", new Object[] { this.q }), true));
      this.d = this.bLh.zS();
      this.bLk = parama.bIi;
      this.bLl = this.bLj.a(b.m.b(b.m.a(parama.bIi, new b.k()
      {
        public final void b(IOException paramAnonymousIOException)
        {
          if (n.a(n.this) != null) {
            n.a(n.this).a(n.b(n.this), paramAnonymousIOException);
          }
        }
      })), this.b);
      this.bLf = parama.bLv;
      this.bLm = new b((byte)0);
      new Thread(this.bLm).start();
      return;
      i = 2;
      break;
      label344:
      if (this.bJR != y.bJL) {
        break label368;
      }
    }
    label368:
    throw new AssertionError(this.bJR);
  }
  
  /* Error */
  private void a(a parama1, a parama2)
    throws IOException
  {
    // Byte code:
    //   0: getstatic 83	com/b/a/a/b/n:brj	Z
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: invokestatic 275	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
    //   10: ifeq +11 -> 21
    //   13: new 262	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 276	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: aload_0
    //   22: getfield 236	com/b/a/a/b/n:bLl	Lcom/b/a/a/b/c;
    //   25: astore 5
    //   27: aload 5
    //   29: monitorenter
    //   30: aload_0
    //   31: monitorenter
    //   32: aload_0
    //   33: getfield 278	com/b/a/a/b/n:t	Z
    //   36: ifeq +160 -> 196
    //   39: aload_0
    //   40: monitorexit
    //   41: aload 5
    //   43: monitorexit
    //   44: aconst_null
    //   45: astore_1
    //   46: aload_0
    //   47: monitorenter
    //   48: aload_0
    //   49: getfield 122	com/b/a/a/b/n:bCI	Ljava/util/Map;
    //   52: invokeinterface 283 1 0
    //   57: ifne +337 -> 394
    //   60: aload_0
    //   61: getfield 122	com/b/a/a/b/n:bCI	Ljava/util/Map;
    //   64: invokeinterface 287 1 0
    //   69: aload_0
    //   70: getfield 122	com/b/a/a/b/n:bCI	Ljava/util/Map;
    //   73: invokeinterface 290 1 0
    //   78: anewarray 292	com/b/a/a/b/p
    //   81: invokeinterface 298 2 0
    //   86: checkcast 300	[Lcom/b/a/a/b/p;
    //   89: astore 6
    //   91: aload_0
    //   92: getfield 122	com/b/a/a/b/n:bCI	Ljava/util/Map;
    //   95: invokeinterface 303 1 0
    //   100: aload_0
    //   101: iconst_0
    //   102: invokespecial 306	com/b/a/a/b/n:a	(Z)V
    //   105: aload_0
    //   106: getfield 308	com/b/a/a/b/n:bLe	Ljava/util/Map;
    //   109: ifnull +279 -> 388
    //   112: aload_0
    //   113: getfield 308	com/b/a/a/b/n:bLe	Ljava/util/Map;
    //   116: invokeinterface 287 1 0
    //   121: aload_0
    //   122: getfield 308	com/b/a/a/b/n:bLe	Ljava/util/Map;
    //   125: invokeinterface 290 1 0
    //   130: anewarray 310	com/b/a/a/b/k
    //   133: invokeinterface 298 2 0
    //   138: checkcast 312	[Lcom/b/a/a/b/k;
    //   141: astore 7
    //   143: aload_0
    //   144: aconst_null
    //   145: putfield 308	com/b/a/a/b/n:bLe	Ljava/util/Map;
    //   148: aload_0
    //   149: monitorexit
    //   150: aload_1
    //   151: astore 5
    //   153: aload 6
    //   155: ifnull +114 -> 269
    //   158: aload 6
    //   160: arraylength
    //   161: istore 4
    //   163: iconst_0
    //   164: istore_3
    //   165: iload_3
    //   166: iload 4
    //   168: if_icmpge +98 -> 266
    //   171: aload 6
    //   173: iload_3
    //   174: aaload
    //   175: astore 5
    //   177: aload 5
    //   179: aload_2
    //   180: invokevirtual 315	com/b/a/a/b/p:a	(Lcom/b/a/a/b/a;)V
    //   183: aload_1
    //   184: astore 5
    //   186: iload_3
    //   187: iconst_1
    //   188: iadd
    //   189: istore_3
    //   190: aload 5
    //   192: astore_1
    //   193: goto -28 -> 165
    //   196: aload_0
    //   197: iconst_1
    //   198: putfield 278	com/b/a/a/b/n:t	Z
    //   201: aload_0
    //   202: getfield 317	com/b/a/a/b/n:bLc	I
    //   205: istore_3
    //   206: aload_0
    //   207: monitorexit
    //   208: aload_0
    //   209: getfield 236	com/b/a/a/b/n:bLl	Lcom/b/a/a/b/c;
    //   212: iload_3
    //   213: aload_1
    //   214: getstatic 321	com/b/a/a/i:bIG	[B
    //   217: invokeinterface 326 4 0
    //   222: aload 5
    //   224: monitorexit
    //   225: aconst_null
    //   226: astore_1
    //   227: goto -181 -> 46
    //   230: astore_1
    //   231: aload_0
    //   232: monitorexit
    //   233: aload_1
    //   234: athrow
    //   235: astore_1
    //   236: aload 5
    //   238: monitorexit
    //   239: aload_1
    //   240: athrow
    //   241: astore_1
    //   242: goto -196 -> 46
    //   245: astore_1
    //   246: aload_0
    //   247: monitorexit
    //   248: aload_1
    //   249: athrow
    //   250: astore 8
    //   252: aload_1
    //   253: astore 5
    //   255: aload_1
    //   256: ifnull -70 -> 186
    //   259: aload 8
    //   261: astore 5
    //   263: goto -77 -> 186
    //   266: aload_1
    //   267: astore 5
    //   269: aload 7
    //   271: ifnull +75 -> 346
    //   274: aload 7
    //   276: arraylength
    //   277: istore 4
    //   279: iconst_0
    //   280: istore_3
    //   281: iload_3
    //   282: iload 4
    //   284: if_icmpge +62 -> 346
    //   287: aload 7
    //   289: iload_3
    //   290: aaload
    //   291: astore_1
    //   292: aload_1
    //   293: getfield 327	com/b/a/a/b/k:c	J
    //   296: ldc2_w 328
    //   299: lcmp
    //   300: ifne +14 -> 314
    //   303: aload_1
    //   304: getfield 331	com/b/a/a/b/k:b	J
    //   307: ldc2_w 328
    //   310: lcmp
    //   311: ifne +11 -> 322
    //   314: new 333	java/lang/IllegalStateException
    //   317: dup
    //   318: invokespecial 334	java/lang/IllegalStateException:<init>	()V
    //   321: athrow
    //   322: aload_1
    //   323: aload_1
    //   324: getfield 331	com/b/a/a/b/k:b	J
    //   327: lconst_1
    //   328: lsub
    //   329: putfield 327	com/b/a/a/b/k:c	J
    //   332: aload_1
    //   333: getfield 338	com/b/a/a/b/k:bss	Ljava/util/concurrent/CountDownLatch;
    //   336: invokevirtual 343	java/util/concurrent/CountDownLatch:countDown	()V
    //   339: iload_3
    //   340: iconst_1
    //   341: iadd
    //   342: istore_3
    //   343: goto -62 -> 281
    //   346: aload_0
    //   347: getfield 236	com/b/a/a/b/n:bLl	Lcom/b/a/a/b/c;
    //   350: invokeinterface 346 1 0
    //   355: aload 5
    //   357: astore_1
    //   358: aload_0
    //   359: getfield 218	com/b/a/a/b/n:bLk	Ljava/net/Socket;
    //   362: invokevirtual 349	java/net/Socket:close	()V
    //   365: aload_1
    //   366: ifnull +17 -> 383
    //   369: aload_1
    //   370: athrow
    //   371: astore_1
    //   372: aload 5
    //   374: ifnull -16 -> 358
    //   377: aload 5
    //   379: astore_1
    //   380: goto -22 -> 358
    //   383: return
    //   384: astore_1
    //   385: goto -20 -> 365
    //   388: aconst_null
    //   389: astore 7
    //   391: goto -243 -> 148
    //   394: aconst_null
    //   395: astore 6
    //   397: goto -292 -> 105
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	400	0	this	n
    //   0	400	1	parama1	a
    //   0	400	2	parama2	a
    //   164	179	3	i	int
    //   161	124	4	j	int
    //   25	353	5	localObject	Object
    //   89	307	6	arrayOfp	p[]
    //   141	249	7	arrayOfk	k[]
    //   250	10	8	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   32	41	230	finally
    //   196	208	230	finally
    //   231	233	230	finally
    //   30	32	235	finally
    //   41	44	235	finally
    //   208	225	235	finally
    //   233	235	235	finally
    //   236	239	235	finally
    //   21	30	241	java/io/IOException
    //   239	241	241	java/io/IOException
    //   48	105	245	finally
    //   105	148	245	finally
    //   148	150	245	finally
    //   246	248	245	finally
    //   177	183	250	java/io/IOException
    //   346	355	371	java/io/IOException
    //   358	365	384	java/io/IOException
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        l = System.nanoTime();
        this.bCM = l;
        return;
      }
      finally {}
      long l = Long.MAX_VALUE;
    }
  }
  
  /* Error */
  private k dT(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 308	com/b/a/a/b/n:bLe	Ljava/util/Map;
    //   6: ifnull +24 -> 30
    //   9: aload_0
    //   10: getfield 308	com/b/a/a/b/n:bLe	Ljava/util/Map;
    //   13: iload_1
    //   14: invokestatic 358	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   17: invokeinterface 406 2 0
    //   22: checkcast 310	com/b/a/a/b/k
    //   25: astore_2
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_2
    //   29: areturn
    //   30: aconst_null
    //   31: astore_2
    //   32: goto -6 -> 26
    //   35: astore_2
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_2
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	n
    //   0	40	1	paramInt	int
    //   25	7	2	localk	k
    //   35	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	35	finally
  }
  
  final void a(final int paramInt, final a parama)
  {
    bKY.submit(new com.b.a.a.d("OkHttp %s stream %d", new Object[] { this.q, Integer.valueOf(paramInt) })
    {
      public final void e()
      {
        try
        {
          n.this.b(paramInt, parama);
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  public final void a(int paramInt, boolean paramBoolean, b.c paramc, long paramLong)
    throws IOException
  {
    long l = paramLong;
    if (paramLong == 0L)
    {
      this.bLl.a(paramBoolean, paramInt, paramc, 0);
      return;
    }
    for (;;)
    {
      try
      {
        int i = Math.min((int)Math.min(l, this.d), this.bLl.c());
        this.d -= i;
        l -= i;
        c localc = this.bLl;
        if ((!paramBoolean) || (l != 0L)) {
          break label170;
        }
        bool = true;
        localc.a(bool, paramInt, paramc, i);
        if (l <= 0L) {
          break;
        }
        try
        {
          if (this.d > 0L) {
            continue;
          }
          if (!this.bCI.containsKey(Integer.valueOf(paramInt))) {
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
      label170:
      boolean bool = false;
    }
  }
  
  public final p b(List<d> paramList, boolean paramBoolean)
    throws IOException
  {
    boolean bool = false;
    if (!paramBoolean) {
      bool = true;
    }
    synchronized (this.bLl)
    {
      try
      {
        if (this.t) {
          throw new IOException("shutdown");
        }
      }
      finally {}
    }
    int i = this.bKk;
    this.bKk += 2;
    p localp = new p(i, this, bool, false, paramList);
    if (localp.b())
    {
      this.bCI.put(Integer.valueOf(i), localp);
      a(false);
    }
    this.bLl.a(bool, i, paramList);
    if (!paramBoolean) {
      this.bLl.b();
    }
    return localp;
  }
  
  final void b(int paramInt, a parama)
    throws IOException
  {
    this.bLl.a(paramInt, parama);
  }
  
  /* Error */
  public final boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 130	com/b/a/a/b/n:bCM	J
    //   6: lstore_1
    //   7: lload_1
    //   8: ldc2_w 391
    //   11: lcmp
    //   12: ifeq +9 -> 21
    //   15: iconst_1
    //   16: istore_3
    //   17: aload_0
    //   18: monitorexit
    //   19: iload_3
    //   20: ireturn
    //   21: iconst_0
    //   22: istore_3
    //   23: goto -6 -> 17
    //   26: astore 4
    //   28: aload_0
    //   29: monitorexit
    //   30: aload 4
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	this	n
    //   6	2	1	l	long
    //   16	7	3	bool	boolean
    //   26	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	26	finally
  }
  
  public final long c()
  {
    try
    {
      long l = this.bCM;
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void close()
    throws IOException
  {
    a(a.bJS, a.bKd);
  }
  
  public final void d()
    throws IOException
  {
    this.bLl.b();
  }
  
  final p dR(int paramInt)
  {
    try
    {
      p localp = (p)this.bCI.get(Integer.valueOf(paramInt));
      return localp;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final p dS(int paramInt)
  {
    try
    {
      p localp = (p)this.bCI.remove(Integer.valueOf(paramInt));
      if ((localp != null) && (this.bCI.isEmpty())) {
        a(true);
      }
      notifyAll();
      return localp;
    }
    finally {}
  }
  
  final void g(final int paramInt, final long paramLong)
  {
    bKY.execute(new com.b.a.a.d("OkHttp Window Update %s stream %d", new Object[] { this.q, Integer.valueOf(paramInt) })
    {
      public final void e()
      {
        try
        {
          n.this.bLl.g(paramInt, paramLong);
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  public static final class a
  {
    Socket bIi;
    com.b.a.m bJH;
    com.b.a.n bLs;
    i bLt = i.bKQ;
    public y bLu = y.bJL;
    o bLv = o.bLB;
    String c;
    boolean h;
    
    public a(String paramString, Socket paramSocket)
      throws IOException
    {
      this.c = paramString;
      this.h = true;
      this.bIi = paramSocket;
    }
  }
  
  final class b
    extends com.b.a.a.d
    implements b.a
  {
    b bLw;
    
    private b()
    {
      super(new Object[] { n.c(n.this) });
    }
    
    public final void a(int paramInt, f arg2)
    {
      ??? = ???.bMw;
      synchronized (n.this)
      {
        p[] arrayOfp = (p[])n.g(n.this).values().toArray(new p[n.g(n.this).size()]);
        n.k(n.this);
        int j = arrayOfp.length;
        int i = 0;
        if (i < j)
        {
          ??? = arrayOfp[i];
          if ((???.f > paramInt) && (???.c()))
          {
            ???.d(a.bKc);
            n.this.dS(???.f);
          }
          i += 1;
        }
      }
    }
    
    public final void a(int paramInt, a parama)
    {
      p localp = n.this.dS(paramInt);
      if (localp != null) {
        localp.d(parama);
      }
    }
    
    public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
    {
      if (paramBoolean)
      {
        k localk = n.c(n.this, paramInt1);
        if (localk != null)
        {
          if ((localk.c != -1L) || (localk.b == -1L)) {
            throw new IllegalStateException();
          }
          localk.c = System.nanoTime();
          localk.bss.countDown();
        }
        return;
      }
      n.a(n.this, paramInt1, paramInt2);
    }
    
    public final void a(boolean paramBoolean, int paramInt1, b.e parame, int paramInt2)
      throws IOException
    {
      p localp = n.this.dR(paramInt1);
      if (localp == null)
      {
        n.this.a(paramInt1, a.bJU);
        parame.at(paramInt2);
      }
      do
      {
        return;
        if ((!p.e) && (Thread.holdsLock(localp))) {
          throw new AssertionError();
        }
        localp.bLC.a(parame, paramInt2);
      } while (!paramBoolean);
      localp.i();
    }
    
    public final void a(boolean paramBoolean, final l paraml)
    {
      for (;;)
      {
        int i;
        synchronized (n.this)
        {
          int j = n.this.bLh.zS();
          if (paramBoolean)
          {
            locall = n.this.bLh;
            locall.c = 0;
            locall.b = 0;
            locall.a = 0;
            Arrays.fill(locall.brd, 0);
          }
          l locall = n.this.bLh;
          i = 0;
          if (i < 10)
          {
            if (!paraml.a(i)) {
              break label355;
            }
            locall.m(i, paraml.dQ(i), paraml.brd[i]);
            break label355;
          }
          if (n.this.bJR == y.bMl) {
            n.zT().execute(new com.b.a.a.d("OkHttp %s ACK Settings", new Object[] { n.c(n.this) })
            {
              public final void e()
              {
                try
                {
                  n.this.bLl.a(paraml);
                  return;
                }
                catch (IOException localIOException) {}
              }
            });
          }
          i = n.this.bLh.zS();
          if ((i == -1) || (i == j)) {
            break label347;
          }
          l = i - j;
          if (!n.i(n.this))
          {
            paraml = n.this;
            paraml.d += l;
            if (l > 0L) {
              paraml.notifyAll();
            }
            n.j(n.this);
          }
          if (n.g(n.this).isEmpty()) {
            break label342;
          }
          paraml = (p[])n.g(n.this).values().toArray(new p[n.g(n.this).size()]);
          if ((paraml == null) || (l == 0L)) {
            break label341;
          }
          j = paraml.length;
          i = 0;
          if (i >= j) {
            break label341;
          }
        }
        synchronized (paraml[i])
        {
          ???.a(l);
          i += 1;
          continue;
          paraml = finally;
          throw paraml;
        }
        label341:
        return;
        label342:
        paraml = null;
        continue;
        label347:
        paraml = null;
        long l = 0L;
        continue;
        label355:
        i += 1;
      }
    }
    
    public final void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, final List<d> paramList, e parame)
    {
      Object localObject = null;
      int i = 0;
      int j = 0;
      int k = 0;
      boolean bool = true;
      p localp2;
      p localp1;
      synchronized (n.this)
      {
        if (n.d(n.this)) {
          return;
        }
        localp2 = n.this.dR(paramInt1);
        if (!n.a(n.this, paramInt1)) {
          break label556;
        }
        localp1 = n.this.dR(paramInt2);
        if (localp1 == null)
        {
          n.this.a(paramInt1, a.bJU);
          return;
        }
      }
      if (localp2 == null)
      {
        if (parame == e.bKz) {
          break label563;
        }
        paramInt2 = k;
        if (parame == e.bKA) {
          break label563;
        }
      }
      for (;;)
      {
        if (paramInt2 != 0)
        {
          n.this.a(paramInt1, a.bJU);
          return;
        }
        if (paramInt1 <= n.e(n.this)) {
          return;
        }
        if (paramInt1 % 2 == n.f(n.this) % 2) {
          return;
        }
        paramList = new p(paramInt1, n.this, paramBoolean1, paramBoolean2, paramList);
        n.b(n.this, paramInt1);
        n.g(n.this).put(Integer.valueOf(paramInt1), paramList);
        if (n.a(n.this, paramInt1))
        {
          n.a(n.this, localp1, paramList);
          return;
        }
        n.zT().submit(new com.b.a.a.d("OkHttp %s stream %d", new Object[] { n.c(n.this), Integer.valueOf(paramInt1) })
        {
          public final void e()
          {
            try
            {
              n.h(n.this).b(paramList);
              return;
            }
            catch (IOException localIOException1)
            {
              com.b.a.a.b.bIr.log(Level.INFO, "StreamHandler failure for " + n.c(n.this), localIOException1);
              try
              {
                paramList.a(a.bJT);
                return;
              }
              catch (IOException localIOException2) {}
            }
          }
        });
        return;
        if (parame == e.bKy) {}
        for (paramInt2 = 1; paramInt2 != 0; paramInt2 = 0)
        {
          localp2.b(a.bJT);
          n.this.dS(paramInt1);
          return;
        }
        if ((!p.e) && (Thread.holdsLock(localp2))) {
          throw new AssertionError();
        }
        for (;;)
        {
          try
          {
            if (localp2.bCF == null)
            {
              paramInt1 = i;
              if (parame == e.bKA) {
                paramInt1 = 1;
              }
              if (paramInt1 != 0)
              {
                paramList = a.bJT;
                paramBoolean1 = bool;
                if (paramList == null) {
                  break label535;
                }
                localp2.b(paramList);
                if (!paramBoolean2) {
                  break;
                }
                localp2.i();
                return;
              }
              localp2.bCF = paramList;
              paramBoolean1 = localp2.b();
              localp2.notifyAll();
              paramList = (List<d>)localObject;
              continue;
            }
            paramInt1 = j;
          }
          finally {}
          if (parame == e.bKz) {
            paramInt1 = 1;
          }
          if (paramInt1 != 0)
          {
            paramList = a.bJW;
            paramBoolean1 = bool;
          }
          else
          {
            parame = new ArrayList();
            parame.addAll(localp2.bCF);
            parame.addAll(paramList);
            localp2.bCF = parame;
            paramBoolean1 = bool;
            paramList = (List<d>)localObject;
            continue;
            label535:
            if (!paramBoolean1) {
              localp2.bIk.dS(localp2.f);
            }
          }
        }
        label556:
        localp1 = null;
        break;
        return;
        label563:
        paramInt2 = 1;
      }
    }
    
    public final void b(int paramInt, List<d> paramList)
    {
      n.a(n.this, paramInt, paramList);
    }
    
    /* Error */
    protected final void e()
    {
      // Byte code:
      //   0: getstatic 338	com/b/a/a/b/a:bJY	Lcom/b/a/a/b/a;
      //   3: astore_3
      //   4: getstatic 338	com/b/a/a/b/a:bJY	Lcom/b/a/a/b/a;
      //   7: astore 4
      //   9: aload_3
      //   10: astore_2
      //   11: aload_3
      //   12: astore_1
      //   13: aload_0
      //   14: aload_0
      //   15: getfield 23	com/b/a/a/b/n$b:bLx	Lcom/b/a/a/b/n;
      //   18: getfield 342	com/b/a/a/b/n:bLj	Lcom/b/a/a/b/q;
      //   21: aload_0
      //   22: getfield 23	com/b/a/a/b/n$b:bLx	Lcom/b/a/a/b/n;
      //   25: getfield 346	com/b/a/a/b/n:bLk	Ljava/net/Socket;
      //   28: new 11	com/b/a/a/b/n$b$1
      //   31: dup
      //   32: aload_0
      //   33: invokespecial 349	com/b/a/a/b/n$b$1:<init>	(Lcom/b/a/a/b/n$b;)V
      //   36: invokestatic 354	b/m:b	(Ljava/net/Socket;Lb/k;)Lb/s;
      //   39: invokestatic 357	b/m:b	(Lb/s;)Lb/e;
      //   42: aload_0
      //   43: getfield 23	com/b/a/a/b/n$b:bLx	Lcom/b/a/a/b/n;
      //   46: getfield 359	com/b/a/a/b/n:b	Z
      //   49: invokeinterface 364 3 0
      //   54: putfield 366	com/b/a/a/b/n$b:bLw	Lcom/b/a/a/b/b;
      //   57: aload_3
      //   58: astore_2
      //   59: aload_3
      //   60: astore_1
      //   61: aload_0
      //   62: getfield 23	com/b/a/a/b/n$b:bLx	Lcom/b/a/a/b/n;
      //   65: getfield 359	com/b/a/a/b/n:b	Z
      //   68: ifne +16 -> 84
      //   71: aload_3
      //   72: astore_2
      //   73: aload_3
      //   74: astore_1
      //   75: aload_0
      //   76: getfield 366	com/b/a/a/b/n$b:bLw	Lcom/b/a/a/b/b;
      //   79: invokeinterface 370 1 0
      //   84: aload_3
      //   85: astore_2
      //   86: aload_3
      //   87: astore_1
      //   88: aload_0
      //   89: getfield 366	com/b/a/a/b/n$b:bLw	Lcom/b/a/a/b/b;
      //   92: aload_0
      //   93: invokeinterface 373 2 0
      //   98: ifne -14 -> 84
      //   101: aload_3
      //   102: astore_2
      //   103: aload_3
      //   104: astore_1
      //   105: getstatic 376	com/b/a/a/b/a:bJS	Lcom/b/a/a/b/a;
      //   108: astore_3
      //   109: aload_3
      //   110: astore_2
      //   111: aload_3
      //   112: astore_1
      //   113: getstatic 379	com/b/a/a/b/a:bKd	Lcom/b/a/a/b/a;
      //   116: astore 5
      //   118: aload_0
      //   119: getfield 23	com/b/a/a/b/n$b:bLx	Lcom/b/a/a/b/n;
      //   122: aload_3
      //   123: aload 5
      //   125: invokestatic 382	com/b/a/a/b/n:a	(Lcom/b/a/a/b/n;Lcom/b/a/a/b/a;Lcom/b/a/a/b/a;)V
      //   128: aload_0
      //   129: getfield 366	com/b/a/a/b/n$b:bLw	Lcom/b/a/a/b/b;
      //   132: invokestatic 387	com/b/a/a/i:a	(Ljava/io/Closeable;)V
      //   135: return
      //   136: astore_1
      //   137: aload_2
      //   138: astore_1
      //   139: getstatic 305	com/b/a/a/b/a:bJT	Lcom/b/a/a/b/a;
      //   142: astore_2
      //   143: getstatic 305	com/b/a/a/b/a:bJT	Lcom/b/a/a/b/a;
      //   146: astore_1
      //   147: aload_0
      //   148: getfield 23	com/b/a/a/b/n$b:bLx	Lcom/b/a/a/b/n;
      //   151: aload_2
      //   152: aload_1
      //   153: invokestatic 382	com/b/a/a/b/n:a	(Lcom/b/a/a/b/n;Lcom/b/a/a/b/a;Lcom/b/a/a/b/a;)V
      //   156: aload_0
      //   157: getfield 366	com/b/a/a/b/n$b:bLw	Lcom/b/a/a/b/b;
      //   160: invokestatic 387	com/b/a/a/i:a	(Ljava/io/Closeable;)V
      //   163: return
      //   164: astore_3
      //   165: aload_1
      //   166: astore_2
      //   167: aload_3
      //   168: astore_1
      //   169: aload_0
      //   170: getfield 23	com/b/a/a/b/n$b:bLx	Lcom/b/a/a/b/n;
      //   173: aload_2
      //   174: aload 4
      //   176: invokestatic 382	com/b/a/a/b/n:a	(Lcom/b/a/a/b/n;Lcom/b/a/a/b/a;Lcom/b/a/a/b/a;)V
      //   179: aload_0
      //   180: getfield 366	com/b/a/a/b/n$b:bLw	Lcom/b/a/a/b/b;
      //   183: invokestatic 387	com/b/a/a/i:a	(Ljava/io/Closeable;)V
      //   186: aload_1
      //   187: athrow
      //   188: astore_2
      //   189: goto -10 -> 179
      //   192: astore_1
      //   193: goto -24 -> 169
      //   196: astore_1
      //   197: goto -41 -> 156
      //   200: astore_1
      //   201: goto -73 -> 128
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	204	0	this	b
      //   12	101	1	locala1	a
      //   136	1	1	localIOException1	IOException
      //   138	49	1	localObject1	Object
      //   192	1	1	localObject2	Object
      //   196	1	1	localIOException2	IOException
      //   200	1	1	localIOException3	IOException
      //   10	164	2	localObject3	Object
      //   188	1	2	localIOException4	IOException
      //   3	120	3	locala2	a
      //   164	4	3	localObject4	Object
      //   7	168	4	locala3	a
      //   116	8	5	locala4	a
      // Exception table:
      //   from	to	target	type
      //   13	57	136	java/io/IOException
      //   61	71	136	java/io/IOException
      //   75	84	136	java/io/IOException
      //   88	101	136	java/io/IOException
      //   105	109	136	java/io/IOException
      //   113	118	136	java/io/IOException
      //   13	57	164	finally
      //   61	71	164	finally
      //   75	84	164	finally
      //   88	101	164	finally
      //   105	109	164	finally
      //   113	118	164	finally
      //   139	143	164	finally
      //   169	179	188	java/io/IOException
      //   143	147	192	finally
      //   147	156	196	java/io/IOException
      //   118	128	200	java/io/IOException
    }
    
    public final void g(int paramInt, long paramLong)
    {
      if (paramInt == 0) {
        synchronized (n.this)
        {
          n localn = n.this;
          localn.d += paramLong;
          n.this.notifyAll();
          return;
        }
      }
      ??? = n.this.dR(paramInt);
      if (??? != null) {
        try
        {
          ((p)???).a(paramLong);
          return;
        }
        finally {}
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/b/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */