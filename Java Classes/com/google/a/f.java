package com.google.a;

import com.google.a.b.a.g;
import com.google.a.b.a.i;
import com.google.a.b.a.j;
import com.google.a.b.a.n;
import java.io.IOException;
import java.io.StringReader;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

public final class f
{
  private static final com.google.a.c.a<?> bgq = com.google.a.c.a.t(Object.class);
  final boolean bgA;
  final boolean bgB;
  final boolean bgC;
  final boolean bgD;
  final boolean bgE;
  final boolean bgF;
  final String bgG;
  final int bgH;
  final int bgI;
  final t bgJ;
  final List<v> bgK;
  final List<v> bgL;
  private final ThreadLocal<Map<com.google.a.c.a<?>, a<?>>> bgr = new ThreadLocal();
  private final Map<com.google.a.c.a<?>, u<?>> bgs = new ConcurrentHashMap();
  private final com.google.a.b.c bgt;
  private final com.google.a.b.a.d bgu;
  final List<v> bgv;
  final com.google.a.b.d bgw;
  final e bgx;
  final Map<Type, h<?>> bgy;
  final boolean bgz;
  
  public f()
  {
    this(com.google.a.b.d.bhi, d.bgj, Collections.emptyMap(), false, false, false, true, false, false, false, t.bgW, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
  }
  
  f(com.google.a.b.d paramd, e parame, Map<Type, h<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7, t paramt, String paramString, int paramInt1, int paramInt2, List<v> paramList1, List<v> paramList2, List<v> paramList3)
  {
    this.bgw = paramd;
    this.bgx = parame;
    this.bgy = paramMap;
    this.bgt = new com.google.a.b.c(paramMap);
    this.bgz = paramBoolean1;
    this.bgA = paramBoolean2;
    this.bgB = paramBoolean3;
    this.bgC = paramBoolean4;
    this.bgD = paramBoolean5;
    this.bgE = paramBoolean6;
    this.bgF = paramBoolean7;
    this.bgJ = paramt;
    this.bgG = paramString;
    this.bgH = paramInt1;
    this.bgI = paramInt2;
    this.bgK = paramList1;
    this.bgL = paramList2;
    paramString = new ArrayList();
    paramString.add(n.bjI);
    paramString.add(com.google.a.b.a.h.bhS);
    paramString.add(paramd);
    paramString.addAll(paramList3);
    paramString.add(n.bjn);
    paramString.add(n.biW);
    paramString.add(n.biQ);
    paramString.add(n.biS);
    paramString.add(n.biU);
    if (paramt == t.bgW)
    {
      paramMap = n.bjd;
      paramString.add(n.a(Long.TYPE, Long.class, paramMap));
      paramList1 = Double.TYPE;
      if (!paramBoolean7) {
        break label765;
      }
      paramt = n.bjf;
      label280:
      paramString.add(n.a(paramList1, Double.class, paramt));
      paramList1 = Float.TYPE;
      if (!paramBoolean7) {
        break label778;
      }
    }
    label765:
    label778:
    for (paramt = n.bje;; paramt = new u() {})
    {
      paramString.add(n.a(paramList1, Float.class, paramt));
      paramString.add(n.bjh);
      paramString.add(n.biY);
      paramString.add(n.bja);
      paramString.add(n.a(AtomicLong.class, new u() {}.vi()));
      paramString.add(n.a(AtomicLongArray.class, new u() {}.vi()));
      paramString.add(n.bjc);
      paramString.add(n.bjj);
      paramString.add(n.bjp);
      paramString.add(n.bjr);
      paramString.add(n.a(BigDecimal.class, n.bjl));
      paramString.add(n.a(BigInteger.class, n.bjm));
      paramString.add(n.bjt);
      paramString.add(n.bjv);
      paramString.add(n.bjz);
      paramString.add(n.bjB);
      paramString.add(n.bjG);
      paramString.add(n.bjx);
      paramString.add(n.biN);
      paramString.add(com.google.a.b.a.c.bhS);
      paramString.add(n.bjE);
      paramString.add(com.google.a.b.a.k.bhS);
      paramString.add(j.bhS);
      paramString.add(n.bjC);
      paramString.add(com.google.a.b.a.a.bhS);
      paramString.add(n.biL);
      paramString.add(new com.google.a.b.a.b(this.bgt));
      paramString.add(new g(this.bgt, paramBoolean2));
      this.bgu = new com.google.a.b.a.d(this.bgt);
      paramString.add(this.bgu);
      paramString.add(n.bjJ);
      paramString.add(new i(this.bgt, parame, paramd, this.bgu));
      this.bgv = Collections.unmodifiableList(paramString);
      return;
      paramMap = new u() {};
      break;
      paramt = new u() {};
      break label280;
    }
  }
  
  private com.google.a.d.c a(Writer paramWriter)
    throws IOException
  {
    if (this.bgB) {
      paramWriter.write(")]}'\n");
    }
    paramWriter = new com.google.a.d.c(paramWriter);
    if (this.bgD)
    {
      if ("  ".length() != 0) {
        break label61;
      }
      paramWriter.bkz = null;
    }
    for (paramWriter.separator = ":";; paramWriter.separator = ": ")
    {
      paramWriter.bgz = this.bgz;
      return paramWriter;
      label61:
      paramWriter.bkz = "  ";
    }
  }
  
  /* Error */
  private <T> T a(com.google.a.d.a parama, Type paramType)
    throws l, s
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_1
    //   3: getfield 387	com/google/a/d/a:bgE	Z
    //   6: istore 4
    //   8: aload_1
    //   9: iconst_1
    //   10: putfield 387	com/google/a/d/a:bgE	Z
    //   13: aload_1
    //   14: invokevirtual 391	com/google/a/d/a:vv	()Lcom/google/a/d/b;
    //   17: pop
    //   18: iconst_0
    //   19: istore_3
    //   20: aload_0
    //   21: aload_2
    //   22: invokestatic 395	com/google/a/c/a:e	(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;
    //   25: invokevirtual 398	com/google/a/f:a	(Lcom/google/a/c/a;)Lcom/google/a/u;
    //   28: aload_1
    //   29: invokevirtual 403	com/google/a/u:a	(Lcom/google/a/d/a;)Ljava/lang/Object;
    //   32: astore_2
    //   33: aload_1
    //   34: iload 4
    //   36: putfield 387	com/google/a/d/a:bgE	Z
    //   39: aload_2
    //   40: areturn
    //   41: astore_2
    //   42: iload_3
    //   43: ifeq +11 -> 54
    //   46: aload_1
    //   47: iload 4
    //   49: putfield 387	com/google/a/d/a:bgE	Z
    //   52: aconst_null
    //   53: areturn
    //   54: new 378	com/google/a/s
    //   57: dup
    //   58: aload_2
    //   59: invokespecial 406	com/google/a/s:<init>	(Ljava/lang/Throwable;)V
    //   62: athrow
    //   63: astore_2
    //   64: aload_1
    //   65: iload 4
    //   67: putfield 387	com/google/a/d/a:bgE	Z
    //   70: aload_2
    //   71: athrow
    //   72: astore_2
    //   73: new 378	com/google/a/s
    //   76: dup
    //   77: aload_2
    //   78: invokespecial 406	com/google/a/s:<init>	(Ljava/lang/Throwable;)V
    //   81: athrow
    //   82: astore_2
    //   83: new 378	com/google/a/s
    //   86: dup
    //   87: aload_2
    //   88: invokespecial 406	com/google/a/s:<init>	(Ljava/lang/Throwable;)V
    //   91: athrow
    //   92: astore_2
    //   93: new 384	java/lang/AssertionError
    //   96: dup
    //   97: new 408	java/lang/StringBuilder
    //   100: dup
    //   101: ldc_w 410
    //   104: invokespecial 412	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   107: aload_2
    //   108: invokevirtual 416	java/lang/AssertionError:getMessage	()Ljava/lang/String;
    //   111: invokevirtual 420	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: invokevirtual 423	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: aload_2
    //   118: invokespecial 426	java/lang/AssertionError:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   121: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	this	f
    //   0	122	1	parama	com.google.a.d.a
    //   0	122	2	paramType	Type
    //   1	42	3	i	int
    //   6	60	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   13	18	41	java/io/EOFException
    //   20	33	41	java/io/EOFException
    //   13	18	63	finally
    //   20	33	63	finally
    //   54	63	63	finally
    //   73	82	63	finally
    //   83	92	63	finally
    //   93	122	63	finally
    //   13	18	72	java/lang/IllegalStateException
    //   20	33	72	java/lang/IllegalStateException
    //   13	18	82	java/io/IOException
    //   20	33	82	java/io/IOException
    //   13	18	92	java/lang/AssertionError
    //   20	33	92	java/lang/AssertionError
  }
  
  static void b(double paramDouble)
  {
    if ((Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble))) {
      throw new IllegalArgumentException(paramDouble + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
    }
  }
  
  public final <T> u<T> a(com.google.a.c.a<T> parama)
  {
    Object localObject4 = this.bgs;
    if (parama == null) {}
    for (Object localObject1 = bgq;; localObject1 = parama)
    {
      localObject1 = (u)((Map)localObject4).get(localObject1);
      if (localObject1 == null) {
        break;
      }
      return (u<T>)localObject1;
    }
    localObject4 = (Map)this.bgr.get();
    int i = 0;
    if (localObject4 == null)
    {
      localObject4 = new HashMap();
      this.bgr.set(localObject4);
      i = 1;
    }
    for (;;)
    {
      Object localObject5 = (a)((Map)localObject4).get(parama);
      localObject1 = localObject5;
      if (localObject5 != null) {
        break;
      }
      try
      {
        localObject1 = new a();
        ((Map)localObject4).put(parama, localObject1);
        Iterator localIterator = this.bgv.iterator();
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
          localObject5 = ((v)localIterator.next()).a(this, parama);
        } while (localObject5 == null);
        if (((a)localObject1).bgO != null) {
          throw new AssertionError();
        }
      }
      finally
      {
        ((Map)localObject4).remove(parama);
        if (i != 0) {
          this.bgr.remove();
        }
      }
      ((a)localObject2).bgO = ((u)localObject5);
      this.bgs.put(parama, localObject5);
      ((Map)localObject4).remove(parama);
      Object localObject3 = localObject5;
      if (i == 0) {
        break;
      }
      this.bgr.remove();
      return (u<T>)localObject5;
      throw new IllegalArgumentException("GSON (2.8.5) cannot handle " + parama);
    }
  }
  
  public final <T> u<T> a(v paramv, com.google.a.c.a<T> parama)
  {
    Object localObject1 = paramv;
    if (!this.bgv.contains(paramv)) {
      localObject1 = this.bgu;
    }
    paramv = this.bgv.iterator();
    int i = 0;
    while (paramv.hasNext())
    {
      Object localObject2 = (v)paramv.next();
      if (i == 0)
      {
        if (localObject2 == localObject1) {
          i = 1;
        }
      }
      else
      {
        localObject2 = ((v)localObject2).a(this, parama);
        if (localObject2 != null) {
          return (u<T>)localObject2;
        }
      }
    }
    throw new IllegalArgumentException("GSON cannot serialize " + parama);
  }
  
  /* Error */
  public final void a(Object paramObject, Type paramType, com.google.a.d.c paramc)
    throws l
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_2
    //   2: invokestatic 395	com/google/a/c/a:e	(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;
    //   5: invokevirtual 398	com/google/a/f:a	(Lcom/google/a/c/a;)Lcom/google/a/u;
    //   8: astore_2
    //   9: aload_3
    //   10: getfield 508	com/google/a/d/c:bgE	Z
    //   13: istore 4
    //   15: aload_3
    //   16: iconst_1
    //   17: putfield 508	com/google/a/d/c:bgE	Z
    //   20: aload_3
    //   21: getfield 509	com/google/a/d/c:bgC	Z
    //   24: istore 5
    //   26: aload_3
    //   27: aload_0
    //   28: getfield 130	com/google/a/f:bgC	Z
    //   31: putfield 509	com/google/a/d/c:bgC	Z
    //   34: aload_3
    //   35: getfield 370	com/google/a/d/c:bgz	Z
    //   38: istore 6
    //   40: aload_3
    //   41: aload_0
    //   42: getfield 124	com/google/a/f:bgz	Z
    //   45: putfield 370	com/google/a/d/c:bgz	Z
    //   48: aload_2
    //   49: aload_3
    //   50: aload_1
    //   51: invokevirtual 512	com/google/a/u:a	(Lcom/google/a/d/c;Ljava/lang/Object;)V
    //   54: aload_3
    //   55: iload 4
    //   57: putfield 508	com/google/a/d/c:bgE	Z
    //   60: aload_3
    //   61: iload 5
    //   63: putfield 509	com/google/a/d/c:bgC	Z
    //   66: aload_3
    //   67: iload 6
    //   69: putfield 370	com/google/a/d/c:bgz	Z
    //   72: return
    //   73: astore_1
    //   74: new 376	com/google/a/l
    //   77: dup
    //   78: aload_1
    //   79: invokespecial 513	com/google/a/l:<init>	(Ljava/lang/Throwable;)V
    //   82: athrow
    //   83: astore_1
    //   84: aload_3
    //   85: iload 4
    //   87: putfield 508	com/google/a/d/c:bgE	Z
    //   90: aload_3
    //   91: iload 5
    //   93: putfield 509	com/google/a/d/c:bgC	Z
    //   96: aload_3
    //   97: iload 6
    //   99: putfield 370	com/google/a/d/c:bgz	Z
    //   102: aload_1
    //   103: athrow
    //   104: astore_1
    //   105: new 384	java/lang/AssertionError
    //   108: dup
    //   109: new 408	java/lang/StringBuilder
    //   112: dup
    //   113: ldc_w 410
    //   116: invokespecial 412	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   119: aload_1
    //   120: invokevirtual 416	java/lang/AssertionError:getMessage	()Ljava/lang/String;
    //   123: invokevirtual 420	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 423	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: aload_1
    //   130: invokespecial 426	java/lang/AssertionError:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   133: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	f
    //   0	134	1	paramObject	Object
    //   0	134	2	paramType	Type
    //   0	134	3	paramc	com.google.a.d.c
    //   13	73	4	bool1	boolean
    //   24	68	5	bool2	boolean
    //   38	60	6	bool3	boolean
    // Exception table:
    //   from	to	target	type
    //   48	54	73	java/io/IOException
    //   48	54	83	finally
    //   74	83	83	finally
    //   105	134	83	finally
    //   48	54	104	java/lang/AssertionError
  }
  
  /* Error */
  public final String ab(Object paramObject)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +168 -> 169
    //   4: getstatic 521	com/google/a/m:bgT	Lcom/google/a/m;
    //   7: astore 5
    //   9: new 523	java/io/StringWriter
    //   12: dup
    //   13: invokespecial 524	java/io/StringWriter:<init>	()V
    //   16: astore 6
    //   18: aload_0
    //   19: aload 6
    //   21: checkcast 344	java/io/Writer
    //   24: invokespecial 526	com/google/a/f:a	(Ljava/io/Writer;)Lcom/google/a/d/c;
    //   27: astore_1
    //   28: aload_1
    //   29: getfield 508	com/google/a/d/c:bgE	Z
    //   32: istore_2
    //   33: aload_1
    //   34: iconst_1
    //   35: putfield 508	com/google/a/d/c:bgE	Z
    //   38: aload_1
    //   39: getfield 509	com/google/a/d/c:bgC	Z
    //   42: istore_3
    //   43: aload_1
    //   44: aload_0
    //   45: getfield 130	com/google/a/f:bgC	Z
    //   48: putfield 509	com/google/a/d/c:bgC	Z
    //   51: aload_1
    //   52: getfield 370	com/google/a/d/c:bgz	Z
    //   55: istore 4
    //   57: aload_1
    //   58: aload_0
    //   59: getfield 124	com/google/a/f:bgz	Z
    //   62: putfield 370	com/google/a/d/c:bgz	Z
    //   65: aload 5
    //   67: aload_1
    //   68: invokestatic 531	com/google/a/b/l:a	(Lcom/google/a/k;Lcom/google/a/d/c;)V
    //   71: aload_1
    //   72: iload_2
    //   73: putfield 508	com/google/a/d/c:bgE	Z
    //   76: aload_1
    //   77: iload_3
    //   78: putfield 509	com/google/a/d/c:bgC	Z
    //   81: aload_1
    //   82: iload 4
    //   84: putfield 370	com/google/a/d/c:bgz	Z
    //   87: aload 6
    //   89: invokevirtual 532	java/io/StringWriter:toString	()Ljava/lang/String;
    //   92: areturn
    //   93: astore 5
    //   95: new 376	com/google/a/l
    //   98: dup
    //   99: aload 5
    //   101: invokespecial 513	com/google/a/l:<init>	(Ljava/lang/Throwable;)V
    //   104: athrow
    //   105: astore 5
    //   107: aload_1
    //   108: iload_2
    //   109: putfield 508	com/google/a/d/c:bgE	Z
    //   112: aload_1
    //   113: iload_3
    //   114: putfield 509	com/google/a/d/c:bgC	Z
    //   117: aload_1
    //   118: iload 4
    //   120: putfield 370	com/google/a/d/c:bgz	Z
    //   123: aload 5
    //   125: athrow
    //   126: astore_1
    //   127: new 376	com/google/a/l
    //   130: dup
    //   131: aload_1
    //   132: invokespecial 513	com/google/a/l:<init>	(Ljava/lang/Throwable;)V
    //   135: athrow
    //   136: astore 5
    //   138: new 384	java/lang/AssertionError
    //   141: dup
    //   142: new 408	java/lang/StringBuilder
    //   145: dup
    //   146: ldc_w 410
    //   149: invokespecial 412	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   152: aload 5
    //   154: invokevirtual 416	java/lang/AssertionError:getMessage	()Ljava/lang/String;
    //   157: invokevirtual 420	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: invokevirtual 423	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   163: aload 5
    //   165: invokespecial 426	java/lang/AssertionError:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   168: athrow
    //   169: aload_1
    //   170: invokevirtual 536	java/lang/Object:getClass	()Ljava/lang/Class;
    //   173: astore 5
    //   175: new 523	java/io/StringWriter
    //   178: dup
    //   179: invokespecial 524	java/io/StringWriter:<init>	()V
    //   182: astore 6
    //   184: aload_0
    //   185: aload_1
    //   186: aload 5
    //   188: aload_0
    //   189: aload 6
    //   191: checkcast 344	java/io/Writer
    //   194: invokespecial 526	com/google/a/f:a	(Ljava/io/Writer;)Lcom/google/a/d/c;
    //   197: invokevirtual 538	com/google/a/f:a	(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/d/c;)V
    //   200: aload 6
    //   202: invokevirtual 532	java/io/StringWriter:toString	()Ljava/lang/String;
    //   205: areturn
    //   206: astore_1
    //   207: new 376	com/google/a/l
    //   210: dup
    //   211: aload_1
    //   212: invokespecial 513	com/google/a/l:<init>	(Ljava/lang/Throwable;)V
    //   215: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	216	0	this	f
    //   0	216	1	paramObject	Object
    //   32	77	2	bool1	boolean
    //   42	72	3	bool2	boolean
    //   55	64	4	bool3	boolean
    //   7	59	5	localm	m
    //   93	7	5	localIOException	IOException
    //   105	19	5	localObject	Object
    //   136	28	5	localAssertionError	AssertionError
    //   173	14	5	localClass	Class
    //   16	185	6	localStringWriter	java.io.StringWriter
    // Exception table:
    //   from	to	target	type
    //   65	71	93	java/io/IOException
    //   65	71	105	finally
    //   95	105	105	finally
    //   138	169	105	finally
    //   18	65	126	java/io/IOException
    //   71	87	126	java/io/IOException
    //   107	126	126	java/io/IOException
    //   65	71	136	java/lang/AssertionError
    //   184	200	206	java/io/IOException
  }
  
  public final <T> T d(String paramString, Class<T> paramClass)
    throws s
  {
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      return (T)com.google.a.b.k.q(paramClass).cast(paramString);
      com.google.a.d.a locala = new com.google.a.d.a(new StringReader(paramString));
      locala.bgE = this.bgE;
      Object localObject = a(locala, paramClass);
      paramString = (String)localObject;
      if (localObject == null) {
        continue;
      }
      paramString = (String)localObject;
      try
      {
        if (locala.vv() == com.google.a.d.b.bkv) {
          continue;
        }
        throw new l("JSON document was not fully consumed.");
      }
      catch (com.google.a.d.d paramString)
      {
        throw new s(paramString);
      }
      catch (IOException paramString)
      {
        throw new l(paramString);
      }
    }
  }
  
  public final <T> u<T> l(Class<T> paramClass)
  {
    return a(com.google.a.c.a.t(paramClass));
  }
  
  public final String toString()
  {
    return "{serializeNulls:" + this.bgz + ",factories:" + this.bgv + ",instanceCreators:" + this.bgt + "}";
  }
  
  static final class a<T>
    extends u<T>
  {
    u<T> bgO;
    
    public final T a(com.google.a.d.a parama)
      throws IOException
    {
      if (this.bgO == null) {
        throw new IllegalStateException();
      }
      return (T)this.bgO.a(parama);
    }
    
    public final void a(com.google.a.d.c paramc, T paramT)
      throws IOException
    {
      if (this.bgO == null) {
        throw new IllegalStateException();
      }
      this.bgO.a(paramc, paramT);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */