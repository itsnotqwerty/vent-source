package io.intercom.a.b.a;

import io.intercom.a.b.a.b.a.g;
import io.intercom.a.b.a.b.a.h;
import io.intercom.a.b.a.b.a.k;
import io.intercom.a.b.a.b.a.n;
import java.io.IOException;
import java.io.Reader;
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

public final class e
{
  private static final io.intercom.a.b.a.c.a<?> cRl = io.intercom.a.b.a.c.a.N(Object.class);
  private final boolean bgB;
  public final boolean bgC;
  private final boolean bgD;
  private final boolean bgE;
  private final ThreadLocal<Map<io.intercom.a.b.a.c.a<?>, a<?>>> bgr = new ThreadLocal();
  private final Map<io.intercom.a.b.a.c.a<?>, r<?>> bgs = new ConcurrentHashMap();
  private final List<s> bgv;
  public final boolean bgz;
  private final io.intercom.a.b.a.b.c cRm;
  private final io.intercom.a.b.a.b.d cRn;
  private final d cRo;
  private final io.intercom.a.b.a.b.a.d cRp;
  
  public e()
  {
    this(io.intercom.a.b.a.b.d.cRD, c.cRf, Collections.emptyMap(), q.cRv, Collections.emptyList());
  }
  
  private e(io.intercom.a.b.a.b.d paramd, d paramd1, Map<Type, f<?>> paramMap, q paramq, List<s> paramList)
  {
    this.cRm = new io.intercom.a.b.a.b.c(paramMap);
    this.cRn = paramd;
    this.cRo = paramd1;
    this.bgz = false;
    this.bgB = false;
    this.bgC = true;
    this.bgD = false;
    this.bgE = false;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(n.cTr);
    localArrayList.add(h.cRW);
    localArrayList.add(paramd);
    localArrayList.addAll(paramList);
    localArrayList.add(n.cSW);
    localArrayList.add(n.cSF);
    localArrayList.add(n.cSz);
    localArrayList.add(n.cSB);
    localArrayList.add(n.cSD);
    if (paramq == q.cRv) {}
    for (paramMap = n.cSM;; paramMap = new r() {})
    {
      localArrayList.add(n.a(Long.TYPE, Long.class, paramMap));
      localArrayList.add(n.a(Double.TYPE, Double.class, new r() {}));
      localArrayList.add(n.a(Float.TYPE, Float.class, new r() {}));
      localArrayList.add(n.cSQ);
      localArrayList.add(n.cSH);
      localArrayList.add(n.cSJ);
      localArrayList.add(n.a(AtomicLong.class, new r() {}.Kc()));
      localArrayList.add(n.a(AtomicLongArray.class, new r() {}.Kc()));
      localArrayList.add(n.cSL);
      localArrayList.add(n.cSS);
      localArrayList.add(n.cSY);
      localArrayList.add(n.cTa);
      localArrayList.add(n.a(BigDecimal.class, n.cSU));
      localArrayList.add(n.a(BigInteger.class, n.cSV));
      localArrayList.add(n.cTc);
      localArrayList.add(n.cTe);
      localArrayList.add(n.cTi);
      localArrayList.add(n.cTk);
      localArrayList.add(n.cTp);
      localArrayList.add(n.cTg);
      localArrayList.add(n.cSw);
      localArrayList.add(io.intercom.a.b.a.b.a.c.cRW);
      localArrayList.add(n.cTn);
      localArrayList.add(k.cRW);
      localArrayList.add(io.intercom.a.b.a.b.a.j.cRW);
      localArrayList.add(n.cTl);
      localArrayList.add(io.intercom.a.b.a.b.a.a.cRW);
      localArrayList.add(n.cSu);
      localArrayList.add(new io.intercom.a.b.a.b.a.b(this.cRm));
      localArrayList.add(new g(this.cRm));
      this.cRp = new io.intercom.a.b.a.b.a.d(this.cRm);
      localArrayList.add(this.cRp);
      localArrayList.add(n.cTs);
      localArrayList.add(new io.intercom.a.b.a.b.a.i(this.cRm, paramd1, paramd, this.cRp));
      this.bgv = Collections.unmodifiableList(localArrayList);
      return;
    }
  }
  
  /* Error */
  private <T> T a(io.intercom.a.b.a.d.a parama, Type paramType)
    throws j, p
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_1
    //   3: getfield 313	io/intercom/a/b/a/d/a:bgE	Z
    //   6: istore 4
    //   8: aload_1
    //   9: iconst_1
    //   10: putfield 313	io/intercom/a/b/a/d/a:bgE	Z
    //   13: aload_1
    //   14: invokevirtual 317	io/intercom/a/b/a/d/a:Kh	()Lio/intercom/a/b/a/d/b;
    //   17: pop
    //   18: iconst_0
    //   19: istore_3
    //   20: aload_0
    //   21: aload_2
    //   22: invokestatic 321	io/intercom/a/b/a/c/a:f	(Ljava/lang/reflect/Type;)Lio/intercom/a/b/a/c/a;
    //   25: invokevirtual 324	io/intercom/a/b/a/e:a	(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
    //   28: aload_1
    //   29: invokevirtual 329	io/intercom/a/b/a/r:a	(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    //   32: astore_2
    //   33: aload_1
    //   34: iload 4
    //   36: putfield 313	io/intercom/a/b/a/d/a:bgE	Z
    //   39: aload_2
    //   40: areturn
    //   41: astore_2
    //   42: iload_3
    //   43: ifeq +11 -> 54
    //   46: aload_1
    //   47: iload 4
    //   49: putfield 313	io/intercom/a/b/a/d/a:bgE	Z
    //   52: aconst_null
    //   53: areturn
    //   54: new 304	io/intercom/a/b/a/p
    //   57: dup
    //   58: aload_2
    //   59: invokespecial 332	io/intercom/a/b/a/p:<init>	(Ljava/lang/Throwable;)V
    //   62: athrow
    //   63: astore_2
    //   64: aload_1
    //   65: iload 4
    //   67: putfield 313	io/intercom/a/b/a/d/a:bgE	Z
    //   70: aload_2
    //   71: athrow
    //   72: astore_2
    //   73: new 304	io/intercom/a/b/a/p
    //   76: dup
    //   77: aload_2
    //   78: invokespecial 332	io/intercom/a/b/a/p:<init>	(Ljava/lang/Throwable;)V
    //   81: athrow
    //   82: astore_2
    //   83: new 304	io/intercom/a/b/a/p
    //   86: dup
    //   87: aload_2
    //   88: invokespecial 332	io/intercom/a/b/a/p:<init>	(Ljava/lang/Throwable;)V
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	e
    //   0	92	1	parama	io.intercom.a.b.a.d.a
    //   0	92	2	paramType	Type
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
    //   13	18	72	java/lang/IllegalStateException
    //   20	33	72	java/lang/IllegalStateException
    //   13	18	82	java/io/IOException
    //   20	33	82	java/io/IOException
  }
  
  private static void a(Object paramObject, io.intercom.a.b.a.d.a parama)
  {
    if (paramObject != null) {
      try
      {
        if (parama.Kh() != io.intercom.a.b.a.d.b.cTF) {
          throw new j("JSON document was not fully consumed.");
        }
      }
      catch (io.intercom.a.b.a.d.d paramObject)
      {
        throw new p((Throwable)paramObject);
      }
      catch (IOException paramObject)
      {
        throw new j((Throwable)paramObject);
      }
    }
  }
  
  static void b(double paramDouble)
  {
    if ((Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble))) {
      throw new IllegalArgumentException(paramDouble + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
    }
  }
  
  public final <T> r<T> L(Class<T> paramClass)
  {
    return a(io.intercom.a.b.a.c.a.N(paramClass));
  }
  
  public final io.intercom.a.b.a.d.a a(Reader paramReader)
  {
    paramReader = new io.intercom.a.b.a.d.a(paramReader);
    paramReader.bgE = this.bgE;
    return paramReader;
  }
  
  public final <T> r<T> a(io.intercom.a.b.a.c.a<T> parama)
  {
    Object localObject4 = this.bgs;
    if (parama == null) {}
    for (Object localObject1 = cRl;; localObject1 = parama)
    {
      localObject1 = (r)((Map)localObject4).get(localObject1);
      if (localObject1 == null) {
        break;
      }
      return (r<T>)localObject1;
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
          localObject5 = ((s)localIterator.next()).a(this, parama);
        } while (localObject5 == null);
        if (((a)localObject1).cRs != null) {
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
      ((a)localObject2).cRs = ((r)localObject5);
      this.bgs.put(parama, localObject5);
      ((Map)localObject4).remove(parama);
      Object localObject3 = localObject5;
      if (i == 0) {
        break;
      }
      this.bgr.remove();
      return (r<T>)localObject5;
      throw new IllegalArgumentException("GSON cannot handle " + parama);
    }
  }
  
  public final <T> r<T> a(s params, io.intercom.a.b.a.c.a<T> parama)
  {
    Object localObject1 = params;
    if (!this.bgv.contains(params)) {
      localObject1 = this.cRp;
    }
    params = this.bgv.iterator();
    int i = 0;
    while (params.hasNext())
    {
      Object localObject2 = (s)params.next();
      if (i == 0)
      {
        if (localObject2 == localObject1) {
          i = 1;
        }
      }
      else
      {
        localObject2 = ((s)localObject2).a(this, parama);
        if (localObject2 != null) {
          return (r<T>)localObject2;
        }
      }
    }
    throw new IllegalArgumentException("GSON cannot serialize " + parama);
  }
  
  public final <T> T a(Reader paramReader, Class<T> paramClass)
    throws p, j
  {
    paramReader = a(paramReader);
    Object localObject = a(paramReader, paramClass);
    a(localObject, paramReader);
    return (T)io.intercom.a.b.a.b.i.q(paramClass).cast(localObject);
  }
  
  /* Error */
  public final void a(Object paramObject, Type paramType, Appendable paramAppendable)
    throws j
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_3
    //   2: invokestatic 473	io/intercom/a/b/a/b/j:b	(Ljava/lang/Appendable;)Ljava/io/Writer;
    //   5: invokevirtual 476	io/intercom/a/b/a/e:b	(Ljava/io/Writer;)Lio/intercom/a/b/a/d/c;
    //   8: astore_3
    //   9: aload_0
    //   10: aload_2
    //   11: invokestatic 321	io/intercom/a/b/a/c/a:f	(Ljava/lang/reflect/Type;)Lio/intercom/a/b/a/c/a;
    //   14: invokevirtual 324	io/intercom/a/b/a/e:a	(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
    //   17: astore_2
    //   18: aload_3
    //   19: getfield 479	io/intercom/a/b/a/d/c:bgE	Z
    //   22: istore 4
    //   24: aload_3
    //   25: iconst_1
    //   26: putfield 479	io/intercom/a/b/a/d/c:bgE	Z
    //   29: aload_3
    //   30: getfield 480	io/intercom/a/b/a/d/c:bgC	Z
    //   33: istore 5
    //   35: aload_3
    //   36: aload_0
    //   37: getfield 114	io/intercom/a/b/a/e:bgC	Z
    //   40: putfield 480	io/intercom/a/b/a/d/c:bgC	Z
    //   43: aload_3
    //   44: getfield 481	io/intercom/a/b/a/d/c:bgz	Z
    //   47: istore 6
    //   49: aload_3
    //   50: aload_0
    //   51: getfield 110	io/intercom/a/b/a/e:bgz	Z
    //   54: putfield 481	io/intercom/a/b/a/d/c:bgz	Z
    //   57: aload_2
    //   58: aload_3
    //   59: aload_1
    //   60: invokevirtual 484	io/intercom/a/b/a/r:a	(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    //   63: aload_3
    //   64: iload 4
    //   66: putfield 479	io/intercom/a/b/a/d/c:bgE	Z
    //   69: aload_3
    //   70: iload 5
    //   72: putfield 480	io/intercom/a/b/a/d/c:bgC	Z
    //   75: aload_3
    //   76: iload 6
    //   78: putfield 481	io/intercom/a/b/a/d/c:bgz	Z
    //   81: return
    //   82: astore_1
    //   83: new 302	io/intercom/a/b/a/j
    //   86: dup
    //   87: aload_1
    //   88: invokespecial 349	io/intercom/a/b/a/j:<init>	(Ljava/lang/Throwable;)V
    //   91: athrow
    //   92: astore_1
    //   93: aload_3
    //   94: iload 4
    //   96: putfield 479	io/intercom/a/b/a/d/c:bgE	Z
    //   99: aload_3
    //   100: iload 5
    //   102: putfield 480	io/intercom/a/b/a/d/c:bgC	Z
    //   105: aload_3
    //   106: iload 6
    //   108: putfield 481	io/intercom/a/b/a/d/c:bgz	Z
    //   111: aload_1
    //   112: athrow
    //   113: astore_1
    //   114: new 302	io/intercom/a/b/a/j
    //   117: dup
    //   118: aload_1
    //   119: invokespecial 349	io/intercom/a/b/a/j:<init>	(Ljava/lang/Throwable;)V
    //   122: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	123	0	this	e
    //   0	123	1	paramObject	Object
    //   0	123	2	paramType	Type
    //   0	123	3	paramAppendable	Appendable
    //   22	73	4	bool1	boolean
    //   33	68	5	bool2	boolean
    //   47	60	6	bool3	boolean
    // Exception table:
    //   from	to	target	type
    //   57	63	82	java/io/IOException
    //   57	63	92	finally
    //   83	92	92	finally
    //   0	57	113	java/io/IOException
    //   63	81	113	java/io/IOException
    //   93	113	113	java/io/IOException
  }
  
  public final io.intercom.a.b.a.d.c b(Writer paramWriter)
    throws IOException
  {
    if (this.bgB) {
      paramWriter.write(")]}'\n");
    }
    paramWriter = new io.intercom.a.b.a.d.c(paramWriter);
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
  
  public final <T> T d(String paramString, Class<T> paramClass)
    throws p
  {
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      return (T)io.intercom.a.b.a.b.i.q(paramClass).cast(paramString);
      io.intercom.a.b.a.d.a locala = a(new StringReader(paramString));
      paramString = a(locala, paramClass);
      a(paramString, locala);
    }
  }
  
  public final String toString()
  {
    return "{serializeNulls:" + this.bgz + ",factories:" + this.bgv + ",instanceCreators:" + this.cRm + "}";
  }
  
  static final class a<T>
    extends r<T>
  {
    r<T> cRs;
    
    public final T a(io.intercom.a.b.a.d.a parama)
      throws IOException
    {
      if (this.cRs == null) {
        throw new IllegalStateException();
      }
      return (T)this.cRs.a(parama);
    }
    
    public final void a(io.intercom.a.b.a.d.c paramc, T paramT)
      throws IOException
    {
      if (this.cRs == null) {
        throw new IllegalStateException();
      }
      this.cRs.a(paramc, paramT);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */