package com.b.a.a.b;

import b.c;
import b.e;
import b.r;
import b.s;
import b.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.List;

public final class p
{
  long b;
  List<d> bCF;
  final n bIk;
  private a bKe = null;
  public o bLB = null;
  public final b bLC;
  final a bLD;
  public final c bLE = new c();
  private final c bLF = new c();
  long brA = 0L;
  public final List<d> bzS;
  final int f;
  
  static
  {
    if (!p.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      return;
    }
  }
  
  p(int paramInt, n paramn, boolean paramBoolean1, boolean paramBoolean2, List<d> paramList)
  {
    if (paramn == null) {
      throw new NullPointerException("connection == null");
    }
    if (paramList == null) {
      throw new NullPointerException("requestHeaders == null");
    }
    this.f = paramInt;
    this.bIk = paramn;
    this.b = paramn.bLh.zS();
    this.bLC = new b(paramn.bLg.zS(), (byte)0);
    this.bLD = new a();
    b.a(this.bLC, paramBoolean2);
    a.a(this.bLD, paramBoolean1);
    this.bzS = paramList;
  }
  
  private boolean c(a parama)
  {
    if ((!e) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    try
    {
      if (this.bKe != null) {
        return false;
      }
      if ((b.a(this.bLC)) && (a.a(this.bLD))) {
        return false;
      }
    }
    finally {}
    this.bKe = parama;
    notifyAll();
    this.bIk.dS(this.f);
    return true;
  }
  
  private void l()
    throws InterruptedIOException
  {
    try
    {
      wait();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new InterruptedIOException();
    }
  }
  
  final void a(long paramLong)
  {
    this.b += paramLong;
    if (paramLong > 0L) {
      notifyAll();
    }
  }
  
  public final void a(a parama)
    throws IOException
  {
    if (!c(parama)) {
      return;
    }
    this.bIk.b(this.f, parama);
  }
  
  public final void b(a parama)
  {
    if (!c(parama)) {
      return;
    }
    this.bIk.a(this.f, parama);
  }
  
  /* Error */
  public final boolean b()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 64	com/b/a/a/b/p:bKe	Lcom/b/a/a/b/a;
    //   8: astore_2
    //   9: aload_2
    //   10: ifnull +7 -> 17
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_1
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 99	com/b/a/a/b/p:bLC	Lcom/b/a/a/b/p$b;
    //   21: invokestatic 126	com/b/a/a/b/p$b:a	(Lcom/b/a/a/b/p$b;)Z
    //   24: ifne +13 -> 37
    //   27: aload_0
    //   28: getfield 99	com/b/a/a/b/p:bLC	Lcom/b/a/a/b/p$b;
    //   31: invokestatic 152	com/b/a/a/b/p$b:b	(Lcom/b/a/a/b/p$b;)Z
    //   34: ifeq +32 -> 66
    //   37: aload_0
    //   38: getfield 102	com/b/a/a/b/p:bLD	Lcom/b/a/a/b/p$a;
    //   41: invokestatic 129	com/b/a/a/b/p$a:a	(Lcom/b/a/a/b/p$a;)Z
    //   44: ifne +13 -> 57
    //   47: aload_0
    //   48: getfield 102	com/b/a/a/b/p:bLD	Lcom/b/a/a/b/p$a;
    //   51: invokestatic 154	com/b/a/a/b/p$a:b	(Lcom/b/a/a/b/p$a;)Z
    //   54: ifeq +12 -> 66
    //   57: aload_0
    //   58: getfield 200	com/b/a/a/b/p:bCF	Ljava/util/List;
    //   61: astore_2
    //   62: aload_2
    //   63: ifnonnull -50 -> 13
    //   66: iconst_1
    //   67: istore_1
    //   68: goto -55 -> 13
    //   71: astore_2
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_2
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	p
    //   1	67	1	bool	boolean
    //   8	55	2	localObject1	Object
    //   71	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   4	9	71	finally
    //   17	37	71	finally
    //   37	57	71	finally
    //   57	62	71	finally
  }
  
  public final boolean c()
  {
    if ((this.f & 0x1) == 1) {}
    for (int i = 1; this.bIk.b == i; i = 0) {
      return true;
    }
    return false;
  }
  
  final void d(a parama)
  {
    try
    {
      if (this.bKe == null)
      {
        this.bKe = parama;
        notifyAll();
      }
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  final void i()
  {
    if ((!e) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    try
    {
      b.a(this.bLC, true);
      boolean bool = b();
      notifyAll();
      if (!bool) {
        this.bIk.dS(this.f);
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  public final List<d> zU()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 58	com/b/a/a/b/p:bLE	Lcom/b/a/a/b/p$c;
    //   6: invokevirtual 206	com/b/a/a/b/p$c:c	()V
    //   9: aload_0
    //   10: getfield 200	com/b/a/a/b/p:bCF	Ljava/util/List;
    //   13: ifnonnull +32 -> 45
    //   16: aload_0
    //   17: getfield 64	com/b/a/a/b/p:bKe	Lcom/b/a/a/b/a;
    //   20: ifnonnull +25 -> 45
    //   23: aload_0
    //   24: invokespecial 146	com/b/a/a/b/p:l	()V
    //   27: goto -18 -> 9
    //   30: astore_1
    //   31: aload_0
    //   32: getfield 58	com/b/a/a/b/p:bLE	Lcom/b/a/a/b/p$c;
    //   35: invokevirtual 208	com/b/a/a/b/p$c:b	()V
    //   38: aload_1
    //   39: athrow
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    //   45: aload_0
    //   46: getfield 58	com/b/a/a/b/p:bLE	Lcom/b/a/a/b/p$c;
    //   49: invokevirtual 208	com/b/a/a/b/p$c:b	()V
    //   52: aload_0
    //   53: getfield 200	com/b/a/a/b/p:bCF	Ljava/util/List;
    //   56: ifnull +12 -> 68
    //   59: aload_0
    //   60: getfield 200	com/b/a/a/b/p:bCF	Ljava/util/List;
    //   63: astore_1
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_1
    //   67: areturn
    //   68: new 150	java/io/IOException
    //   71: dup
    //   72: new 173	java/lang/StringBuilder
    //   75: dup
    //   76: ldc -81
    //   78: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   81: aload_0
    //   82: getfield 64	com/b/a/a/b/p:bKe	Lcom/b/a/a/b/a;
    //   85: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   88: invokevirtual 184	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: invokespecial 169	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   94: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	95	0	this	p
    //   30	9	1	localObject1	Object
    //   40	4	1	localObject2	Object
    //   63	4	1	localList	List
    // Exception table:
    //   from	to	target	type
    //   9	27	30	finally
    //   2	9	40	finally
    //   31	40	40	finally
    //   45	64	40	finally
    //   68	95	40	finally
  }
  
  public final r zV()
  {
    try
    {
      if ((this.bCF == null) && (!c())) {
        throw new IllegalStateException("reply before requesting the sink");
      }
    }
    finally {}
    return this.bLD;
  }
  
  final class a
    implements r
  {
    private final c bJz = new c();
    private boolean d;
    private boolean e;
    
    static
    {
      if (!p.class.desiredAssertionStatus()) {}
      for (boolean bool = true;; bool = false)
      {
        a = bool;
        return;
      }
    }
    
    a() {}
    
    /* Error */
    private void a(boolean paramBoolean)
      throws IOException
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   4: astore 5
      //   6: aload 5
      //   8: monitorenter
      //   9: aload_0
      //   10: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   13: invokestatic 45	com/b/a/a/b/p:i	(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;
      //   16: invokevirtual 50	com/b/a/a/b/p$c:c	()V
      //   19: aload_0
      //   20: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   23: getfield 54	com/b/a/a/b/p:b	J
      //   26: lconst_0
      //   27: lcmp
      //   28: ifgt +60 -> 88
      //   31: aload_0
      //   32: getfield 56	com/b/a/a/b/p$a:e	Z
      //   35: ifne +53 -> 88
      //   38: aload_0
      //   39: getfield 58	com/b/a/a/b/p$a:d	Z
      //   42: ifne +46 -> 88
      //   45: aload_0
      //   46: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   49: invokestatic 62	com/b/a/a/b/p:f	(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/a;
      //   52: ifnonnull +36 -> 88
      //   55: aload_0
      //   56: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   59: invokestatic 65	com/b/a/a/b/p:g	(Lcom/b/a/a/b/p;)V
      //   62: goto -43 -> 19
      //   65: astore 6
      //   67: aload_0
      //   68: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   71: invokestatic 45	com/b/a/a/b/p:i	(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;
      //   74: invokevirtual 67	com/b/a/a/b/p$c:b	()V
      //   77: aload 6
      //   79: athrow
      //   80: astore 6
      //   82: aload 5
      //   84: monitorexit
      //   85: aload 6
      //   87: athrow
      //   88: aload_0
      //   89: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   92: invokestatic 45	com/b/a/a/b/p:i	(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;
      //   95: invokevirtual 67	com/b/a/a/b/p$c:b	()V
      //   98: aload_0
      //   99: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   102: invokestatic 70	com/b/a/a/b/p:j	(Lcom/b/a/a/b/p;)V
      //   105: aload_0
      //   106: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   109: getfield 54	com/b/a/a/b/p:b	J
      //   112: aload_0
      //   113: getfield 38	com/b/a/a/b/p$a:bJz	Lb/c;
      //   116: getfield 71	b/c:b	J
      //   119: invokestatic 77	java/lang/Math:min	(JJ)J
      //   122: lstore_3
      //   123: aload_0
      //   124: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   127: astore 6
      //   129: aload 6
      //   131: aload 6
      //   133: getfield 54	com/b/a/a/b/p:b	J
      //   136: lload_3
      //   137: lsub
      //   138: putfield 54	com/b/a/a/b/p:b	J
      //   141: aload 5
      //   143: monitorexit
      //   144: aload_0
      //   145: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   148: invokestatic 45	com/b/a/a/b/p:i	(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;
      //   151: invokevirtual 50	com/b/a/a/b/p$c:c	()V
      //   154: aload_0
      //   155: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   158: invokestatic 80	com/b/a/a/b/p:c	(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;
      //   161: astore 5
      //   163: aload_0
      //   164: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   167: invokestatic 83	com/b/a/a/b/p:d	(Lcom/b/a/a/b/p;)I
      //   170: istore_2
      //   171: iload_1
      //   172: ifeq +40 -> 212
      //   175: lload_3
      //   176: aload_0
      //   177: getfield 38	com/b/a/a/b/p$a:bJz	Lb/c;
      //   180: getfield 71	b/c:b	J
      //   183: lcmp
      //   184: ifne +28 -> 212
      //   187: iconst_1
      //   188: istore_1
      //   189: aload 5
      //   191: iload_2
      //   192: iload_1
      //   193: aload_0
      //   194: getfield 38	com/b/a/a/b/p$a:bJz	Lb/c;
      //   197: lload_3
      //   198: invokevirtual 88	com/b/a/a/b/n:a	(IZLb/c;J)V
      //   201: aload_0
      //   202: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   205: invokestatic 45	com/b/a/a/b/p:i	(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;
      //   208: invokevirtual 67	com/b/a/a/b/p$c:b	()V
      //   211: return
      //   212: iconst_0
      //   213: istore_1
      //   214: goto -25 -> 189
      //   217: astore 5
      //   219: aload_0
      //   220: getfield 31	com/b/a/a/b/p$a:bLG	Lcom/b/a/a/b/p;
      //   223: invokestatic 45	com/b/a/a/b/p:i	(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;
      //   226: invokevirtual 67	com/b/a/a/b/p$c:b	()V
      //   229: aload 5
      //   231: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	232	0	this	a
      //   0	232	1	paramBoolean	boolean
      //   170	22	2	i	int
      //   122	76	3	l	long
      //   4	186	5	localObject1	Object
      //   217	13	5	localObject2	Object
      //   65	13	6	localObject3	Object
      //   80	6	6	localObject4	Object
      //   127	5	6	localp	p
      // Exception table:
      //   from	to	target	type
      //   19	62	65	finally
      //   9	19	80	finally
      //   67	80	80	finally
      //   82	85	80	finally
      //   88	144	80	finally
      //   154	171	217	finally
      //   175	187	217	finally
      //   189	201	217	finally
    }
    
    public final void a(c paramc, long paramLong)
      throws IOException
    {
      if ((!a) && (Thread.holdsLock(p.this))) {
        throw new AssertionError();
      }
      this.bJz.a(paramc, paramLong);
      while (this.bJz.b >= 16384L) {
        a(false);
      }
    }
    
    public final void close()
      throws IOException
    {
      if ((!a) && (Thread.holdsLock(p.this))) {
        throw new AssertionError();
      }
      synchronized (p.this)
      {
        if (this.d) {
          return;
        }
        if (p.this.bLD.e) {
          break label113;
        }
        if (this.bJz.b > 0L)
        {
          if (this.bJz.b <= 0L) {
            break label113;
          }
          a(true);
        }
      }
      p.c(p.this).a(p.d(p.this), true, null, 0L);
      label113:
      synchronized (p.this)
      {
        this.d = true;
        p.c(p.this).d();
        p.h(p.this);
        return;
      }
    }
    
    public final void flush()
      throws IOException
    {
      if ((!a) && (Thread.holdsLock(p.this))) {
        throw new AssertionError();
      }
      synchronized (p.this)
      {
        p.j(p.this);
        if (this.bJz.b > 0L)
        {
          a(false);
          p.c(p.this).d();
        }
      }
    }
    
    public final t zA()
    {
      return p.i(p.this);
    }
  }
  
  private final class b
    implements s
  {
    private final c bJz = new c();
    private final c bLH = new c();
    private final long e;
    private boolean f;
    private boolean g;
    
    static
    {
      if (!p.class.desiredAssertionStatus()) {}
      for (boolean bool = true;; bool = false)
      {
        a = bool;
        return;
      }
    }
    
    private b(long paramLong)
    {
      this.e = paramLong;
    }
    
    /* Error */
    private void b()
      throws IOException
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 35	com/b/a/a/b/p$b:bLG	Lcom/b/a/a/b/p;
      //   4: invokestatic 58	com/b/a/a/b/p:e	(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;
      //   7: invokevirtual 63	com/b/a/a/b/p$c:c	()V
      //   10: aload_0
      //   11: getfield 44	com/b/a/a/b/p$b:bLH	Lb/c;
      //   14: getfield 65	b/c:b	J
      //   17: lconst_0
      //   18: lcmp
      //   19: ifne +50 -> 69
      //   22: aload_0
      //   23: getfield 52	com/b/a/a/b/p$b:g	Z
      //   26: ifne +43 -> 69
      //   29: aload_0
      //   30: getfield 67	com/b/a/a/b/p$b:f	Z
      //   33: ifne +36 -> 69
      //   36: aload_0
      //   37: getfield 35	com/b/a/a/b/p$b:bLG	Lcom/b/a/a/b/p;
      //   40: invokestatic 70	com/b/a/a/b/p:f	(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/a;
      //   43: ifnonnull +26 -> 69
      //   46: aload_0
      //   47: getfield 35	com/b/a/a/b/p$b:bLG	Lcom/b/a/a/b/p;
      //   50: invokestatic 73	com/b/a/a/b/p:g	(Lcom/b/a/a/b/p;)V
      //   53: goto -43 -> 10
      //   56: astore_1
      //   57: aload_0
      //   58: getfield 35	com/b/a/a/b/p$b:bLG	Lcom/b/a/a/b/p;
      //   61: invokestatic 58	com/b/a/a/b/p:e	(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;
      //   64: invokevirtual 75	com/b/a/a/b/p$c:b	()V
      //   67: aload_1
      //   68: athrow
      //   69: aload_0
      //   70: getfield 35	com/b/a/a/b/p$b:bLG	Lcom/b/a/a/b/p;
      //   73: invokestatic 58	com/b/a/a/b/p:e	(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;
      //   76: invokevirtual 75	com/b/a/a/b/p$c:b	()V
      //   79: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	80	0	this	b
      //   56	12	1	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   10	53	56	finally
    }
    
    final void a(e parame, long paramLong)
      throws IOException
    {
      long l = paramLong;
      if (!a)
      {
        l = paramLong;
        if (Thread.holdsLock(p.this)) {
          throw new AssertionError();
        }
      }
      for (;;)
      {
        l -= paramLong;
        synchronized (p.this)
        {
          if (this.bLH.b == 0L)
          {
            i = 1;
            this.bLH.a(this.bJz);
            if (i != 0) {
              p.this.notifyAll();
            }
            if (l > 0L) {}
            boolean bool;
            synchronized (p.this)
            {
              bool = this.g;
              if (this.bLH.b + l > this.e)
              {
                i = 1;
                if (i != 0)
                {
                  parame.at(l);
                  p.this.b(a.bJZ);
                }
              }
              else
              {
                i = 0;
              }
            }
            if (bool)
            {
              parame.at(l);
              return;
            }
            paramLong = parame.b(this.bJz, l);
            if (paramLong != -1L) {
              continue;
            }
            throw new EOFException();
          }
          int i = 0;
        }
      }
    }
    
    public final long b(c arg1, long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      synchronized (p.this)
      {
        b();
        if (this.f) {
          throw new IOException("stream closed");
        }
      }
      if (p.f(p.this) != null) {
        throw new IOException("stream was reset: " + p.f(p.this));
      }
      if (this.bLH.b == 0L) {
        return -1L;
      }
      paramLong = this.bLH.b(???, Math.min(paramLong, this.bLH.b));
      ??? = p.this;
      ???.brA += paramLong;
      if (p.this.brA >= p.c(p.this).bLg.zS() / 2)
      {
        p.c(p.this).g(p.d(p.this), p.this.brA);
        p.this.brA = 0L;
      }
      synchronized (p.c(p.this))
      {
        ??? = p.c(p.this);
        ((n)???).c += paramLong;
        if (p.c(p.this).c >= p.c(p.this).bLg.zS() / 2)
        {
          p.c(p.this).g(0, p.c(p.this).c);
          p.c(p.this).c = 0L;
        }
        return paramLong;
      }
    }
    
    public final void close()
      throws IOException
    {
      synchronized (p.this)
      {
        this.f = true;
        this.bLH.t();
        p.this.notifyAll();
        p.h(p.this);
        return;
      }
    }
    
    public final t zA()
    {
      return p.e(p.this);
    }
  }
  
  final class c
    extends b.a
  {
    c() {}
    
    protected final void a()
    {
      p.this.b(a.bKd);
    }
    
    public final void b()
      throws InterruptedIOException
    {
      if (KR()) {
        throw new InterruptedIOException("timeout");
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/b/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */