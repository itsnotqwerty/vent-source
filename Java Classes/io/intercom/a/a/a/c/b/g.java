package io.intercom.a.a.a.c.b;

import android.os.Build.VERSION;
import android.support.v4.g.k.a;
import android.util.Log;
import io.intercom.a.a.a.c.c.n.a;
import io.intercom.a.a.a.c.d.a.k;
import io.intercom.a.a.a.c.j;
import io.intercom.a.a.a.c.l;
import io.intercom.a.a.a.h.d;
import io.intercom.a.a.a.i.a.a.c;
import io.intercom.a.a.a.i.a.b.a;
import java.util.ArrayList;
import java.util.List;

public final class g<R>
  implements e.a, a.c, Comparable<g<?>>, Runnable
{
  public io.intercom.a.a.a.e cFu;
  public io.intercom.a.a.a.c.h cIX;
  public j cIZ;
  public volatile boolean cIs;
  private io.intercom.a.a.a.c.a.b<?> cJA;
  public volatile e cJB;
  private volatile boolean cJC;
  public final d cJc;
  public io.intercom.a.a.a.g cJg;
  public final f<R> cJj = new f();
  private final List<Throwable> cJk = new ArrayList();
  private final io.intercom.a.a.a.i.a.b cJl = new b.a();
  private final k.a<g<?>> cJm;
  final c<?> cJn = new c();
  final e cJo = new e();
  public m cJp;
  public a<R> cJq;
  private g cJr;
  public f cJs;
  private long cJt;
  public boolean cJu;
  private Thread cJv;
  io.intercom.a.a.a.c.h cJw;
  private io.intercom.a.a.a.c.h cJx;
  private Object cJy;
  private io.intercom.a.a.a.c.a cJz;
  public i diskCacheStrategy;
  public int height;
  public int order;
  public int width;
  
  g(d paramd, k.a<g<?>> parama)
  {
    this.cJc = paramd;
    this.cJm = parama;
  }
  
  private void Ic()
  {
    if (this.cJo.Im()) {
      Id();
    }
  }
  
  private e Ie()
  {
    switch (1.cJE[this.cJr.ordinal()])
    {
    default: 
      throw new IllegalStateException("Unrecognized stage: " + this.cJr);
    case 1: 
      return new v(this.cJj, this);
    case 2: 
      return new b(this.cJj, this);
    case 3: 
      return new y(this.cJj, this);
    }
    return null;
  }
  
  private void If()
  {
    this.cJv = Thread.currentThread();
    this.cJt = io.intercom.a.a.a.i.d.JQ();
    boolean bool1 = false;
    boolean bool2;
    do
    {
      bool2 = bool1;
      if (this.cIs) {
        break;
      }
      bool2 = bool1;
      if (this.cJB == null) {
        break;
      }
      bool1 = this.cJB.HW();
      bool2 = bool1;
      if (bool1) {
        break;
      }
      this.cJr = a(this.cJr);
      this.cJB = Ie();
    } while (this.cJr != g.cJT);
    HY();
    while (((this.cJr != g.cJV) && (!this.cIs)) || (bool2)) {
      return;
    }
    Ig();
  }
  
  private void Ig()
  {
    Ih();
    p localp = new p("Failed to load resource", new ArrayList(this.cJk));
    this.cJq.a(localp);
    if (this.cJo.In()) {
      Id();
    }
  }
  
  private void Ih()
  {
    this.cJl.JX();
    if (this.cJC) {
      throw new IllegalStateException("Already notified");
    }
    this.cJC = true;
  }
  
  /* Error */
  private void Ii()
  {
    // Byte code:
    //   0: ldc -2
    //   2: iconst_2
    //   3: invokestatic 260	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   6: ifeq +60 -> 66
    //   9: aload_0
    //   10: ldc_w 262
    //   13: aload_0
    //   14: getfield 195	io/intercom/a/a/a/c/b/g:cJt	J
    //   17: new 153	java/lang/StringBuilder
    //   20: dup
    //   21: ldc_w 264
    //   24: invokespecial 158	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   27: aload_0
    //   28: getfield 266	io/intercom/a/a/a/c/b/g:cJy	Ljava/lang/Object;
    //   31: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   34: ldc_w 268
    //   37: invokevirtual 271	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload_0
    //   41: getfield 273	io/intercom/a/a/a/c/b/g:cJw	Lio/intercom/a/a/a/c/h;
    //   44: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   47: ldc_w 275
    //   50: invokevirtual 271	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: aload_0
    //   54: getfield 277	io/intercom/a/a/a/c/b/g:cJA	Lio/intercom/a/a/a/c/a/b;
    //   57: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 166	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokespecial 280	io/intercom/a/a/a/c/b/g:a	(Ljava/lang/String;JLjava/lang/String;)V
    //   66: aload_0
    //   67: aload_0
    //   68: getfield 277	io/intercom/a/a/a/c/b/g:cJA	Lio/intercom/a/a/a/c/a/b;
    //   71: aload_0
    //   72: getfield 266	io/intercom/a/a/a/c/b/g:cJy	Ljava/lang/Object;
    //   75: aload_0
    //   76: getfield 282	io/intercom/a/a/a/c/b/g:cJz	Lio/intercom/a/a/a/c/a;
    //   79: invokespecial 285	io/intercom/a/a/a/c/b/g:a	(Lio/intercom/a/a/a/c/a/b;Ljava/lang/Object;Lio/intercom/a/a/a/c/a;)Lio/intercom/a/a/a/c/b/u;
    //   82: astore_1
    //   83: aload_1
    //   84: ifnull +210 -> 294
    //   87: aload_0
    //   88: getfield 282	io/intercom/a/a/a/c/b/g:cJz	Lio/intercom/a/a/a/c/a;
    //   91: astore 4
    //   93: aload_1
    //   94: instanceof 287
    //   97: ifeq +12 -> 109
    //   100: aload_1
    //   101: checkcast 287	io/intercom/a/a/a/c/b/q
    //   104: invokeinterface 290 1 0
    //   109: aload_0
    //   110: getfield 119	io/intercom/a/a/a/c/b/g:cJn	Lio/intercom/a/a/a/c/b/g$c;
    //   113: invokevirtual 293	io/intercom/a/a/a/c/b/g$c:Ik	()Z
    //   116: ifeq +183 -> 299
    //   119: aload_1
    //   120: invokestatic 298	io/intercom/a/a/a/c/b/t:c	(Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/t;
    //   123: astore_2
    //   124: aload_2
    //   125: astore_1
    //   126: aload_0
    //   127: invokespecial 224	io/intercom/a/a/a/c/b/g:Ih	()V
    //   130: aload_0
    //   131: getfield 236	io/intercom/a/a/a/c/b/g:cJq	Lio/intercom/a/a/a/c/b/g$a;
    //   134: aload_2
    //   135: aload 4
    //   137: invokeinterface 301 3 0
    //   142: aload_0
    //   143: getstatic 304	io/intercom/a/a/a/c/b/g$g:cJU	Lio/intercom/a/a/a/c/b/g$g;
    //   146: putfield 145	io/intercom/a/a/a/c/b/g:cJr	Lio/intercom/a/a/a/c/b/g$g;
    //   149: aload_0
    //   150: getfield 119	io/intercom/a/a/a/c/b/g:cJn	Lio/intercom/a/a/a/c/b/g$c;
    //   153: invokevirtual 293	io/intercom/a/a/a/c/b/g$c:Ik	()Z
    //   156: ifeq +67 -> 223
    //   159: aload_0
    //   160: getfield 119	io/intercom/a/a/a/c/b/g:cJn	Lio/intercom/a/a/a/c/b/g$c;
    //   163: astore_2
    //   164: aload_0
    //   165: getfield 124	io/intercom/a/a/a/c/b/g:cJc	Lio/intercom/a/a/a/c/b/g$d;
    //   168: astore_3
    //   169: aload_0
    //   170: getfield 306	io/intercom/a/a/a/c/b/g:cIZ	Lio/intercom/a/a/a/c/j;
    //   173: astore 4
    //   175: ldc_w 308
    //   178: invokestatic 313	android/support/v4/d/d:beginSection	(Ljava/lang/String;)V
    //   181: aload_3
    //   182: invokeinterface 317 1 0
    //   187: aload_2
    //   188: getfield 320	io/intercom/a/a/a/c/b/g$c:cIL	Lio/intercom/a/a/a/c/h;
    //   191: new 322	io/intercom/a/a/a/c/b/d
    //   194: dup
    //   195: aload_2
    //   196: getfield 326	io/intercom/a/a/a/c/b/g$c:cJH	Lio/intercom/a/a/a/c/l;
    //   199: aload_2
    //   200: getfield 330	io/intercom/a/a/a/c/b/g$c:cJI	Lio/intercom/a/a/a/c/b/t;
    //   203: aload 4
    //   205: invokespecial 333	io/intercom/a/a/a/c/b/d:<init>	(Lio/intercom/a/a/a/c/d;Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)V
    //   208: invokeinterface 338 3 0
    //   213: aload_2
    //   214: getfield 330	io/intercom/a/a/a/c/b/g$c:cJI	Lio/intercom/a/a/a/c/b/t;
    //   217: invokevirtual 341	io/intercom/a/a/a/c/b/t:unlock	()V
    //   220: invokestatic 344	android/support/v4/d/d:endSection	()V
    //   223: aload_1
    //   224: ifnull +7 -> 231
    //   227: aload_1
    //   228: invokevirtual 341	io/intercom/a/a/a/c/b/t:unlock	()V
    //   231: aload_0
    //   232: invokespecial 346	io/intercom/a/a/a/c/b/g:Ic	()V
    //   235: return
    //   236: astore_1
    //   237: aload_1
    //   238: aload_0
    //   239: getfield 348	io/intercom/a/a/a/c/b/g:cJx	Lio/intercom/a/a/a/c/h;
    //   242: aload_0
    //   243: getfield 282	io/intercom/a/a/a/c/b/g:cJz	Lio/intercom/a/a/a/c/a;
    //   246: aconst_null
    //   247: invokevirtual 351	io/intercom/a/a/a/c/b/p:a	(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/a;Ljava/lang/Class;)V
    //   250: aload_0
    //   251: getfield 111	io/intercom/a/a/a/c/b/g:cJk	Ljava/util/List;
    //   254: aload_1
    //   255: invokeinterface 357 2 0
    //   260: pop
    //   261: aconst_null
    //   262: astore_1
    //   263: goto -180 -> 83
    //   266: astore_3
    //   267: aload_2
    //   268: getfield 330	io/intercom/a/a/a/c/b/g$c:cJI	Lio/intercom/a/a/a/c/b/t;
    //   271: invokevirtual 341	io/intercom/a/a/a/c/b/t:unlock	()V
    //   274: invokestatic 344	android/support/v4/d/d:endSection	()V
    //   277: aload_3
    //   278: athrow
    //   279: astore_2
    //   280: aload_1
    //   281: ifnull +7 -> 288
    //   284: aload_1
    //   285: invokevirtual 341	io/intercom/a/a/a/c/b/t:unlock	()V
    //   288: aload_0
    //   289: invokespecial 346	io/intercom/a/a/a/c/b/g:Ic	()V
    //   292: aload_2
    //   293: athrow
    //   294: aload_0
    //   295: invokespecial 359	io/intercom/a/a/a/c/b/g:If	()V
    //   298: return
    //   299: aconst_null
    //   300: astore_3
    //   301: aload_1
    //   302: astore_2
    //   303: aload_3
    //   304: astore_1
    //   305: goto -179 -> 126
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	308	0	this	g
    //   82	146	1	localObject1	Object
    //   236	19	1	localp	p
    //   262	43	1	localObject2	Object
    //   123	145	2	localObject3	Object
    //   279	14	2	localObject4	Object
    //   302	1	2	localObject5	Object
    //   168	14	3	locald	d
    //   266	12	3	localObject6	Object
    //   300	4	3	localObject7	Object
    //   91	113	4	localObject8	Object
    // Exception table:
    //   from	to	target	type
    //   66	83	236	io/intercom/a/a/a/c/b/p
    //   181	213	266	finally
    //   149	181	279	finally
    //   213	223	279	finally
    //   267	279	279	finally
  }
  
  private <Data> u<R> a(io.intercom.a.a.a.c.a.b<?> paramb, Data paramData, io.intercom.a.a.a.c.a parama)
    throws p
  {
    if (paramData == null)
    {
      paramb.cleanup();
      return null;
    }
    try
    {
      long l = io.intercom.a.a.a.i.d.JQ();
      paramData = a(paramData, parama, this.cJj.A(paramData.getClass()));
      if (Log.isLoggable("DecodeJob", 2)) {
        a("Decoded result " + paramData, l, null);
      }
      return paramData;
    }
    finally
    {
      paramb.cleanup();
    }
  }
  
  private <Data, ResourceType> u<R> a(Data paramData, io.intercom.a.a.a.c.a parama, s<Data, ResourceType, R> params)
    throws p
  {
    j localj = a(parama);
    paramData = this.cFu.cFv.cGa.at(paramData);
    try
    {
      parama = params.a(paramData, localj, this.width, this.height, new b(parama));
      return parama;
    }
    finally
    {
      paramData.cleanup();
    }
  }
  
  private j a(io.intercom.a.a.a.c.a parama)
  {
    j localj = this.cIZ;
    if (Build.VERSION.SDK_INT < 26) {}
    while ((localj.a(k.cNS) != null) || ((parama != io.intercom.a.a.a.c.a.cHF) && (!this.cJj.cJi))) {
      return localj;
    }
    parama = new j();
    parama.a(this.cIZ);
    parama.a(k.cNS, Boolean.valueOf(true));
    return parama;
  }
  
  private void a(String paramString1, long paramLong, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramString1).append(" in ").append(io.intercom.a.a.a.i.d.V(paramLong)).append(", load key: ").append(this.cJp);
    if (paramString2 != null) {}
    for (paramString1 = ", " + paramString2;; paramString1 = "")
    {
      Log.v("DecodeJob", paramString1 + ", thread: " + Thread.currentThread().getName());
      return;
    }
  }
  
  public final void HY()
  {
    this.cJs = f.cJN;
    this.cJq.b(this);
  }
  
  final void Id()
  {
    this.cJo.reset();
    Object localObject = this.cJn;
    ((c)localObject).cIL = null;
    ((c)localObject).cJH = null;
    ((c)localObject).cJI = null;
    localObject = this.cJj;
    ((f)localObject).cFu = null;
    ((f)localObject).cGk = null;
    ((f)localObject).cIX = null;
    ((f)localObject).cJb = null;
    ((f)localObject).cGh = null;
    ((f)localObject).cIZ = null;
    ((f)localObject).cJg = null;
    ((f)localObject).cJd = null;
    ((f)localObject).diskCacheStrategy = null;
    ((f)localObject).cJa.clear();
    ((f)localObject).cJe = false;
    ((f)localObject).cIO.clear();
    ((f)localObject).cJf = false;
    this.cJC = false;
    this.cFu = null;
    this.cIX = null;
    this.cIZ = null;
    this.cJg = null;
    this.cJp = null;
    this.cJq = null;
    this.cJr = null;
    this.cJB = null;
    this.cJv = null;
    this.cJw = null;
    this.cJy = null;
    this.cJz = null;
    this.cJA = null;
    this.cJt = 0L;
    this.cIs = false;
    this.cJk.clear();
    this.cJm.j(this);
  }
  
  public final io.intercom.a.a.a.i.a.b Ij()
  {
    return this.cJl;
  }
  
  public final g a(g paramg)
  {
    for (;;)
    {
      switch (1.cJE[paramg.ordinal()])
      {
      default: 
        throw new IllegalArgumentException("Unrecognized stage: " + paramg);
      case 5: 
        if (this.diskCacheStrategy.Ip()) {
          return g.cJR;
        }
        paramg = g.cJR;
        break;
      case 1: 
        if (this.diskCacheStrategy.Iq()) {
          return g.cJS;
        }
        paramg = g.cJS;
      }
    }
    if (this.cJu) {
      return g.cJV;
    }
    return g.cJT;
    return g.cJV;
  }
  
  public final void a(io.intercom.a.a.a.c.h paramh, Exception paramException, io.intercom.a.a.a.c.a.b<?> paramb, io.intercom.a.a.a.c.a parama)
  {
    paramb.cleanup();
    paramException = new p("Fetching data failed", paramException);
    paramException.a(paramh, parama, paramb.HU());
    this.cJk.add(paramException);
    if (Thread.currentThread() != this.cJv)
    {
      this.cJs = f.cJN;
      this.cJq.b(this);
      return;
    }
    If();
  }
  
  public final void a(io.intercom.a.a.a.c.h paramh1, Object paramObject, io.intercom.a.a.a.c.a.b<?> paramb, io.intercom.a.a.a.c.a parama, io.intercom.a.a.a.c.h paramh2)
  {
    this.cJw = paramh1;
    this.cJy = paramObject;
    this.cJA = paramb;
    this.cJz = parama;
    this.cJx = paramh2;
    if (Thread.currentThread() != this.cJv)
    {
      this.cJs = f.cJO;
      this.cJq.b(this);
      return;
    }
    android.support.v4.d.d.beginSection("DecodeJob.decodeFromRetrievedData");
    try
    {
      Ii();
      return;
    }
    finally
    {
      android.support.v4.d.d.endSection();
    }
  }
  
  public final void run()
  {
    android.support.v4.d.d.beginSection("DecodeJob#run");
    io.intercom.a.a.a.c.a.b localb = this.cJA;
    for (;;)
    {
      try
      {
        if (this.cIs)
        {
          Ig();
          return;
        }
        switch (1.cJD[this.cJs.ordinal()])
        {
        case 1: 
          throw new IllegalStateException("Unrecognized run reason: " + this.cJs);
        }
      }
      catch (Throwable localThrowable)
      {
        if (Log.isLoggable("DecodeJob", 3)) {
          Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.cIs + ", stage: " + this.cJr, localThrowable);
        }
        if (this.cJr != g.cJU)
        {
          this.cJk.add(localThrowable);
          Ig();
        }
        if (this.cIs) {
          break label251;
        }
        throw localThrowable;
      }
      finally
      {
        if (localb != null) {
          localb.cleanup();
        }
        android.support.v4.d.d.endSection();
      }
      this.cJr = a(g.cJQ);
      this.cJB = Ie();
      If();
      for (;;)
      {
        if (localb != null) {
          localb.cleanup();
        }
        android.support.v4.d.d.endSection();
        return;
        If();
        continue;
        Ii();
      }
      label251:
      if (localb != null) {
        localb.cleanup();
      }
      android.support.v4.d.d.endSection();
      return;
    }
  }
  
  static abstract interface a<R>
  {
    public abstract void a(p paramp);
    
    public abstract void a(u<R> paramu, io.intercom.a.a.a.c.a parama);
    
    public abstract void b(g<?> paramg);
  }
  
  private final class b<Z>
    implements h.a<Z>
  {
    private final io.intercom.a.a.a.c.a cJF;
    
    b(io.intercom.a.a.a.c.a parama)
    {
      this.cJF = parama;
    }
    
    public final u<Z> a(u<Z> paramu)
    {
      Class localClass = paramu.get().getClass();
      Object localObject2;
      Object localObject1;
      if (this.cJF != io.intercom.a.a.a.c.a.cHF)
      {
        localObject2 = g.this.cJj.B(localClass);
        localObject1 = ((io.intercom.a.a.a.c.m)localObject2).transform(g.a(g.this), paramu, g.this.width, g.this.height);
      }
      for (;;)
      {
        if (!paramu.equals(localObject1)) {
          paramu.recycle();
        }
        int i;
        io.intercom.a.a.a.c.c localc;
        label162:
        Object localObject3;
        if (g.this.cJj.cFu.cFv.cFZ.J(((u)localObject1).Iu()) != null)
        {
          i = 1;
          if (i == 0) {
            break label302;
          }
          paramu = g.this.cJj.cFu.cFv.cFZ.J(((u)localObject1).Iu());
          if (paramu == null) {
            break label287;
          }
          localc = paramu.b(g.this.cIZ);
          Object localObject4 = g.this.cJj;
          localObject3 = g.this.cJw;
          localObject4 = ((f)localObject4).Ia();
          int j = ((List)localObject4).size();
          i = 0;
          label197:
          if (i >= j) {
            break label319;
          }
          if (!((n.a)((List)localObject4).get(i)).cIS.equals(localObject3)) {
            break label312;
          }
          i = 1;
          label228:
          if (i != 0) {
            break label324;
          }
        }
        label287:
        label302:
        label312:
        label319:
        label324:
        for (boolean bool = true;; bool = false)
        {
          localObject3 = localObject1;
          if (!g.this.diskCacheStrategy.a(bool, this.cJF, localc)) {
            break label397;
          }
          if (paramu != null) {
            break label330;
          }
          throw new h.d(((u)localObject1).get().getClass());
          i = 0;
          break;
          throw new h.d(((u)localObject1).Iu());
          localc = io.intercom.a.a.a.c.c.cHP;
          paramu = null;
          break label162;
          i += 1;
          break label197;
          i = 0;
          break label228;
        }
        label330:
        if (localc == io.intercom.a.a.a.c.c.cHN) {}
        for (localObject2 = new c(g.this.cJw, g.this.cIX);; localObject2 = new w(g.this.cJj.cFu.cFw, g.this.cJw, g.this.cIX, g.this.width, g.this.height, (io.intercom.a.a.a.c.m)localObject2, localClass, g.this.cIZ))
        {
          localObject3 = t.c((u)localObject1);
          localObject1 = g.this.cJn;
          ((g.c)localObject1).cIL = ((io.intercom.a.a.a.c.h)localObject2);
          ((g.c)localObject1).cJH = paramu;
          ((g.c)localObject1).cJI = ((t)localObject3);
          label397:
          return (u<Z>)localObject3;
          if (localc != io.intercom.a.a.a.c.c.cHO) {
            break;
          }
        }
        throw new IllegalArgumentException("Unknown strategy: " + localc);
        localObject1 = paramu;
        localObject2 = null;
      }
    }
  }
  
  private static final class c<Z>
  {
    io.intercom.a.a.a.c.h cIL;
    l<Z> cJH;
    t<Z> cJI;
    
    final boolean Ik()
    {
      return this.cJI != null;
    }
  }
  
  static abstract interface d
  {
    public abstract io.intercom.a.a.a.c.b.b.a HZ();
  }
  
  private static final class e
  {
    private boolean cJJ;
    private boolean cJK;
    private boolean cJL;
    
    private boolean Io()
    {
      return ((this.cJL) || (this.cJK)) && (this.cJJ);
    }
    
    final boolean Il()
    {
      try
      {
        this.cJJ = true;
        boolean bool = Io();
        return bool;
      }
      finally
      {
        localObject = finally;
        throw ((Throwable)localObject);
      }
    }
    
    final boolean Im()
    {
      try
      {
        this.cJK = true;
        boolean bool = Io();
        return bool;
      }
      finally
      {
        localObject = finally;
        throw ((Throwable)localObject);
      }
    }
    
    final boolean In()
    {
      try
      {
        this.cJL = true;
        boolean bool = Io();
        return bool;
      }
      finally
      {
        localObject = finally;
        throw ((Throwable)localObject);
      }
    }
    
    final void reset()
    {
      try
      {
        this.cJK = false;
        this.cJJ = false;
        this.cJL = false;
        return;
      }
      finally
      {
        localObject = finally;
        throw ((Throwable)localObject);
      }
    }
  }
  
  private static enum f
  {
    private f() {}
  }
  
  private static enum g
  {
    private g() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */