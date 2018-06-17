package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import com.layer.a.c.a;
import com.layer.b.d.h;
import com.layer.b.f.c.n;
import com.layer.sdk.internal.lsdkd.lsdka.o;
import com.layer.sdk.internal.lsdkd.lsdka.o.a;
import com.layer.sdk.internal.lsdkd.lsdka.o.b;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.m;
import com.layer.sdk.internal.lsdkk.m.c;
import com.layer.sdk.internal.lsdkk.m.g;
import com.layer.sdk.internal.lsdkk.m.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class g
  extends a<Void, n>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(g.class);
  private final h c;
  private final Long d;
  private final com.layer.b.d.k e;
  private final c.b f;
  
  public g(h paramh, Long paramLong, com.layer.b.d.k paramk, c.b paramb)
  {
    super(null);
    this.c = paramh;
    this.d = paramLong;
    this.e = paramk;
    this.f = paramb;
  }
  
  private void a(n paramn)
  {
    Object localObject2 = o.a(this.f.a(o.b.a, this.c.bwE, o.a.b));
    Object localObject1;
    if (paramn == null)
    {
      localObject1 = ((m.g)localObject2).keySet();
      localObject2 = new ArrayList(((Collection)localObject1).size());
      localObject1 = ((Collection)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((List)localObject2).add(((m.c)((Iterator)localObject1).next()).toString());
      }
      localObject1 = Long.valueOf(new Date().getTime());
    }
    for (;;)
    {
      if (!((List)localObject2).isEmpty()) {
        a((Long)localObject1, (Iterable)localObject2);
      }
      if ((paramn != null) && (paramn.b())) {
        a((Long)localObject1, paramn.a);
      }
      return;
      Object localObject3 = new m.g();
      if (paramn.f()) {}
      for (long l = paramn.c;; l = new Date().getTime())
      {
        localObject1 = Long.valueOf(l);
        if ((!paramn.b()) || (paramn.a == null)) {
          break;
        }
        Iterator localIterator = paramn.a.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          ((m.g)localObject3).a((CharSequence)localEntry.getKey(), new m.h((CharSequence)localEntry.getValue(), (Long)localObject1));
        }
      }
      localObject3 = m.a((m.g)localObject2, (m.g)localObject3);
      localObject2 = new ArrayList(((Collection)localObject3).size());
      localObject3 = ((Collection)localObject3).iterator();
      while (((Iterator)localObject3).hasNext()) {
        ((List)localObject2).add(((m.c)((Iterator)localObject3).next()).toString());
      }
    }
  }
  
  private void a(Long paramLong, Iterable<String> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      String str = (String)paramIterable.next();
      this.f.a(o.b.a, this.c.bwE, paramLong.longValue(), str, true);
    }
  }
  
  private void a(Long paramLong, Map<String, String> paramMap)
  {
    ArrayList localArrayList = new ArrayList(paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      o localo = new o();
      localo.a(o.b.a);
      localo.b(this.c.bwE);
      localo.a(o.a.b);
      localo.a((String)localEntry.getKey());
      localo.b((String)localEntry.getValue());
      localo.c(paramLong);
      localo.a(false);
      localArrayList.add(localo);
    }
    this.f.d(localArrayList);
  }
  
  private void b(n paramn)
  {
    Long localLong = Long.valueOf(paramn.c);
    if (paramn.b()) {
      a(localLong, paramn.a);
    }
    if (paramn.d()) {
      a(localLong, paramn.b);
    }
  }
  
  /* Error */
  protected n a(Void paramVoid)
    throws java.lang.Exception
  {
    // Byte code:
    //   0: invokestatic 224	com/layer/sdk/internal/lsdkk/k:d	()Z
    //   3: ifeq +8 -> 11
    //   6: ldc -30
    //   8: invokestatic 228	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
    //   11: aload_0
    //   12: getfield 36	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:e	Lcom/layer/b/d/k;
    //   15: astore_2
    //   16: aload_0
    //   17: getfield 32	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:c	Lcom/layer/b/d/h;
    //   20: invokevirtual 231	com/layer/b/d/h:b	()Ljava/util/UUID;
    //   23: astore_3
    //   24: aload_0
    //   25: getfield 34	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:d	Ljava/lang/Long;
    //   28: astore 4
    //   30: new 233	com/layer/b/d/k$f
    //   33: dup
    //   34: aload_2
    //   35: invokespecial 236	com/layer/b/d/k$f:<init>	(Lcom/layer/b/d/k;)V
    //   38: iconst_1
    //   39: anewarray 238	java/lang/Integer
    //   42: dup
    //   43: iconst_0
    //   44: sipush 200
    //   47: invokestatic 241	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   50: aastore
    //   51: invokevirtual 244	com/layer/b/d/k$f:a	([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;
    //   54: new 246	com/layer/b/d/k$24
    //   57: dup
    //   58: aload_2
    //   59: aload 4
    //   61: aload_3
    //   62: invokespecial 249	com/layer/b/d/k$24:<init>	(Lcom/layer/b/d/k;Ljava/lang/Long;Ljava/util/UUID;)V
    //   65: invokevirtual 252	com/layer/b/d/k$f:a	(Lcom/layer/b/d/k$e;)Ljava/lang/Object;
    //   68: checkcast 130	com/layer/b/f/c/n
    //   71: astore_2
    //   72: aload_0
    //   73: getfield 34	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:d	Ljava/lang/Long;
    //   76: ifnonnull +109 -> 185
    //   79: aload_0
    //   80: aload_2
    //   81: invokespecial 254	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:a	(Lcom/layer/b/f/c/n;)V
    //   84: aload_2
    //   85: ifnull +26 -> 111
    //   88: aload_0
    //   89: getfield 38	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:f	Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;
    //   92: aload_0
    //   93: getfield 32	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:c	Lcom/layer/b/d/h;
    //   96: invokevirtual 231	com/layer/b/d/h:b	()Ljava/util/UUID;
    //   99: aload_2
    //   100: getfield 144	com/layer/b/f/c/n:c	J
    //   103: invokestatic 122	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   106: invokeinterface 257 3 0
    //   111: aload_2
    //   112: areturn
    //   113: astore_2
    //   114: bipush 6
    //   116: invokestatic 260	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   119: ifeq +46 -> 165
    //   122: getstatic 24	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   125: new 262	java/lang/StringBuilder
    //   128: dup
    //   129: ldc_w 264
    //   132: invokespecial 266	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   135: aload_0
    //   136: getfield 32	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:c	Lcom/layer/b/d/h;
    //   139: invokevirtual 231	com/layer/b/d/h:b	()Ljava/util/UUID;
    //   142: invokevirtual 270	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   145: ldc_w 272
    //   148: invokevirtual 275	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: aload_0
    //   152: getfield 34	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:d	Ljava/lang/Long;
    //   155: invokevirtual 270	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   158: invokevirtual 276	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: aload_2
    //   162: invokestatic 279	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   165: aload_0
    //   166: new 281	com/layer/a/c/e
    //   169: dup
    //   170: aload_0
    //   171: aload_1
    //   172: aload_2
    //   173: invokevirtual 284	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   176: aload_2
    //   177: invokespecial 287	com/layer/a/c/e:<init>	(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   180: invokevirtual 290	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:a	(Lcom/layer/a/c/e;)V
    //   183: aconst_null
    //   184: areturn
    //   185: aload_0
    //   186: aload_2
    //   187: invokespecial 292	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:b	(Lcom/layer/b/f/c/n;)V
    //   190: goto -106 -> 84
    //   193: astore_2
    //   194: bipush 6
    //   196: invokestatic 260	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   199: ifeq +46 -> 245
    //   202: getstatic 24	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   205: new 262	java/lang/StringBuilder
    //   208: dup
    //   209: ldc_w 264
    //   212: invokespecial 266	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   215: aload_0
    //   216: getfield 32	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:c	Lcom/layer/b/d/h;
    //   219: invokevirtual 231	com/layer/b/d/h:b	()Ljava/util/UUID;
    //   222: invokevirtual 270	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   225: ldc_w 272
    //   228: invokevirtual 275	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: aload_0
    //   232: getfield 34	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:d	Ljava/lang/Long;
    //   235: invokevirtual 270	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   238: invokevirtual 276	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   241: aload_2
    //   242: invokestatic 279	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   245: aload_0
    //   246: new 281	com/layer/a/c/e
    //   249: dup
    //   250: aload_0
    //   251: aload_1
    //   252: aload_2
    //   253: invokevirtual 293	com/layer/sdk/exceptions/LayerException:getMessage	()Ljava/lang/String;
    //   256: aload_2
    //   257: invokespecial 287	com/layer/a/c/e:<init>	(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   260: invokevirtual 290	com/layer/sdk/internal/lsdki/lsdkc/lsdka/g:a	(Lcom/layer/a/c/e;)V
    //   263: aconst_null
    //   264: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	265	0	this	g
    //   0	265	1	paramVoid	Void
    //   15	97	2	localObject	Object
    //   113	74	2	localException	Exception
    //   193	64	2	localLayerException	com.layer.sdk.exceptions.LayerException
    //   23	39	3	localUUID	java.util.UUID
    //   28	32	4	localLong	Long
    // Exception table:
    //   from	to	target	type
    //   11	72	113	java/lang/Exception
    //   72	84	193	com/layer/sdk/exceptions/LayerException
    //   88	111	193	com/layer/sdk/exceptions/LayerException
    //   185	190	193	com/layer/sdk/exceptions/LayerException
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */