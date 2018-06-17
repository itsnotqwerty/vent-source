package com.layer.sdk.internal.lsdki.lsdkc.lsdka;

import com.layer.a.c.a;
import com.layer.b.d.h;
import com.layer.b.d.k;
import com.layer.b.f.c.n;
import com.layer.sdk.internal.lsdkd.lsdka.o;
import com.layer.sdk.internal.lsdkd.lsdka.o.a;
import com.layer.sdk.internal.lsdkd.lsdka.o.b;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
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

public class i
  extends a<Void, n>
{
  private final h a;
  private final Iterable<o> c;
  private final Long d;
  private final k e;
  private final c.b f;
  
  public i(h paramh, Iterable<o> paramIterable, Long paramLong, k paramk, c.b paramb)
  {
    super(null);
    this.a = paramh;
    this.c = paramIterable;
    this.d = paramLong;
    this.e = paramk;
    this.f = paramb;
  }
  
  private void a(n paramn)
  {
    Object localObject2 = o.a(this.f.a(o.b.a, this.a.bwE, o.a.b));
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
      this.f.a(o.b.a, this.a.bwE, paramLong.longValue(), str, true);
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
      localo.b(this.a.bwE);
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
    //   0: invokestatic 222	com/layer/sdk/internal/lsdkk/k:d	()Z
    //   3: ifeq +8 -> 11
    //   6: ldc -32
    //   8: invokestatic 226	com/layer/sdk/internal/lsdkk/k:c	(Ljava/lang/String;)V
    //   11: new 127	com/layer/b/f/c/n
    //   14: dup
    //   15: invokespecial 227	com/layer/b/f/c/n:<init>	()V
    //   18: astore_2
    //   19: aload_0
    //   20: getfield 25	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:c	Ljava/lang/Iterable;
    //   23: invokeinterface 175 1 0
    //   28: astore_3
    //   29: aload_3
    //   30: invokeinterface 88 1 0
    //   35: ifeq +111 -> 146
    //   38: aload_3
    //   39: invokeinterface 92 1 0
    //   44: checkcast 58	com/layer/sdk/internal/lsdkd/lsdka/o
    //   47: astore 5
    //   49: aload 5
    //   51: invokevirtual 228	com/layer/sdk/internal/lsdkd/lsdka/o:b	()Z
    //   54: ifeq +43 -> 97
    //   57: aload 5
    //   59: invokevirtual 230	com/layer/sdk/internal/lsdkd/lsdka/o:f	()Ljava/lang/String;
    //   62: astore 4
    //   64: aload_2
    //   65: getfield 214	com/layer/b/f/c/n:b	Ljava/util/Set;
    //   68: ifnonnull +14 -> 82
    //   71: aload_2
    //   72: new 232	java/util/HashSet
    //   75: dup
    //   76: invokespecial 233	java/util/HashSet:<init>	()V
    //   79: putfield 214	com/layer/b/f/c/n:b	Ljava/util/Set;
    //   82: aload_2
    //   83: getfield 214	com/layer/b/f/c/n:b	Ljava/util/Set;
    //   86: aload 4
    //   88: invokeinterface 234 2 0
    //   93: pop
    //   94: goto -65 -> 29
    //   97: aload 5
    //   99: invokevirtual 230	com/layer/sdk/internal/lsdkd/lsdka/o:f	()Ljava/lang/String;
    //   102: astore 4
    //   104: aload 5
    //   106: invokevirtual 237	com/layer/sdk/internal/lsdkd/lsdka/o:g	()Ljava/lang/String;
    //   109: astore 5
    //   111: aload_2
    //   112: getfield 132	com/layer/b/f/c/n:a	Ljava/util/Map;
    //   115: ifnonnull +14 -> 129
    //   118: aload_2
    //   119: new 239	java/util/HashMap
    //   122: dup
    //   123: invokespecial 240	java/util/HashMap:<init>	()V
    //   126: putfield 132	com/layer/b/f/c/n:a	Ljava/util/Map;
    //   129: aload_2
    //   130: getfield 132	com/layer/b/f/c/n:a	Ljava/util/Map;
    //   133: aload 4
    //   135: aload 5
    //   137: invokeinterface 244 3 0
    //   142: pop
    //   143: goto -114 -> 29
    //   146: aload_0
    //   147: getfield 29	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:e	Lcom/layer/b/d/k;
    //   150: astore_3
    //   151: aload_0
    //   152: getfield 23	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:a	Lcom/layer/b/d/h;
    //   155: invokevirtual 247	com/layer/b/d/h:b	()Ljava/util/UUID;
    //   158: astore 4
    //   160: aload_0
    //   161: getfield 27	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:d	Ljava/lang/Long;
    //   164: astore 5
    //   166: new 249	com/layer/b/d/k$f
    //   169: dup
    //   170: aload_3
    //   171: invokespecial 252	com/layer/b/d/k$f:<init>	(Lcom/layer/b/d/k;)V
    //   174: iconst_1
    //   175: anewarray 254	java/lang/Integer
    //   178: dup
    //   179: iconst_0
    //   180: sipush 200
    //   183: invokestatic 257	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   186: aastore
    //   187: invokevirtual 260	com/layer/b/d/k$f:a	([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;
    //   190: new 262	com/layer/b/d/k$25
    //   193: dup
    //   194: aload_3
    //   195: aload 5
    //   197: aload 4
    //   199: aload_2
    //   200: invokespecial 265	com/layer/b/d/k$25:<init>	(Lcom/layer/b/d/k;Ljava/lang/Long;Ljava/util/UUID;Lcom/layer/b/f/c/n;)V
    //   203: invokevirtual 268	com/layer/b/d/k$f:a	(Lcom/layer/b/d/k$e;)Ljava/lang/Object;
    //   206: checkcast 127	com/layer/b/f/c/n
    //   209: astore_3
    //   210: aload_0
    //   211: getfield 27	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:d	Ljava/lang/Long;
    //   214: ifnonnull +160 -> 374
    //   217: aload_0
    //   218: aload_3
    //   219: invokespecial 270	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:a	(Lcom/layer/b/f/c/n;)V
    //   222: aload_0
    //   223: getfield 25	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:c	Ljava/lang/Iterable;
    //   226: invokeinterface 175 1 0
    //   231: astore_2
    //   232: aload_2
    //   233: invokeinterface 88 1 0
    //   238: ifeq +144 -> 382
    //   241: aload_2
    //   242: invokeinterface 92 1 0
    //   247: checkcast 58	com/layer/sdk/internal/lsdkd/lsdka/o
    //   250: aload_3
    //   251: getfield 141	com/layer/b/f/c/n:c	J
    //   254: invokestatic 119	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   257: invokevirtual 202	com/layer/sdk/internal/lsdkd/lsdka/o:c	(Ljava/lang/Long;)V
    //   260: goto -28 -> 232
    //   263: astore_2
    //   264: aload_0
    //   265: new 272	com/layer/a/c/e
    //   268: dup
    //   269: aload_0
    //   270: aload_1
    //   271: aload_2
    //   272: invokevirtual 275	com/layer/sdk/exceptions/LayerException:getMessage	()Ljava/lang/String;
    //   275: aload_2
    //   276: invokespecial 278	com/layer/a/c/e:<init>	(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   279: invokevirtual 281	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:a	(Lcom/layer/a/c/e;)V
    //   282: aconst_null
    //   283: astore_2
    //   284: aload_2
    //   285: areturn
    //   286: astore_2
    //   287: aload_2
    //   288: instanceof 283
    //   291: ifeq +63 -> 354
    //   294: aload_2
    //   295: checkcast 283	com/layer/b/d/m
    //   298: getfield 287	com/layer/b/d/m:bvU	Lcom/layer/b/d/f;
    //   301: getstatic 292	com/layer/b/d/f:bvY	Lcom/layer/b/d/f;
    //   304: if_acmpne +50 -> 354
    //   307: aload_0
    //   308: getfield 25	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:c	Ljava/lang/Iterable;
    //   311: invokeinterface 175 1 0
    //   316: astore_3
    //   317: aload_3
    //   318: invokeinterface 88 1 0
    //   323: ifeq +31 -> 354
    //   326: aload_3
    //   327: invokeinterface 92 1 0
    //   332: checkcast 58	com/layer/sdk/internal/lsdkd/lsdka/o
    //   335: astore 4
    //   337: aload_0
    //   338: getfield 31	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:f	Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;
    //   341: aload 4
    //   343: invokevirtual 295	com/layer/sdk/internal/lsdkd/lsdka/o:a	()Ljava/lang/Long;
    //   346: invokeinterface 297 2 0
    //   351: goto -34 -> 317
    //   354: aload_0
    //   355: new 272	com/layer/a/c/e
    //   358: dup
    //   359: aload_0
    //   360: aload_1
    //   361: aload_2
    //   362: invokevirtual 298	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   365: aload_2
    //   366: invokespecial 278	com/layer/a/c/e:<init>	(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   369: invokevirtual 281	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:a	(Lcom/layer/a/c/e;)V
    //   372: aconst_null
    //   373: areturn
    //   374: aload_0
    //   375: aload_3
    //   376: invokespecial 300	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:b	(Lcom/layer/b/f/c/n;)V
    //   379: goto -157 -> 222
    //   382: aload_0
    //   383: getfield 31	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:f	Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;
    //   386: aload_0
    //   387: getfield 25	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:c	Ljava/lang/Iterable;
    //   390: invokeinterface 208 2 0
    //   395: aload_3
    //   396: astore_2
    //   397: aload_3
    //   398: ifnull -114 -> 284
    //   401: aload_0
    //   402: getfield 31	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:f	Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;
    //   405: aload_0
    //   406: getfield 23	com/layer/sdk/internal/lsdki/lsdkc/lsdka/i:a	Lcom/layer/b/d/h;
    //   409: invokevirtual 247	com/layer/b/d/h:b	()Ljava/util/UUID;
    //   412: aload_3
    //   413: getfield 141	com/layer/b/f/c/n:c	J
    //   416: invokestatic 119	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   419: invokeinterface 303 3 0
    //   424: aload_3
    //   425: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	426	0	this	i
    //   0	426	1	paramVoid	Void
    //   18	224	2	localObject1	Object
    //   263	13	2	localLayerException	com.layer.sdk.exceptions.LayerException
    //   283	2	2	localn	n
    //   286	80	2	localException	Exception
    //   396	1	2	localObject2	Object
    //   28	397	3	localObject3	Object
    //   62	280	4	localObject4	Object
    //   47	149	5	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   210	222	263	com/layer/sdk/exceptions/LayerException
    //   222	232	263	com/layer/sdk/exceptions/LayerException
    //   232	260	263	com/layer/sdk/exceptions/LayerException
    //   374	379	263	com/layer/sdk/exceptions/LayerException
    //   382	395	263	com/layer/sdk/exceptions/LayerException
    //   401	424	263	com/layer/sdk/exceptions/LayerException
    //   146	210	286	java/lang/Exception
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/lsdka/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */