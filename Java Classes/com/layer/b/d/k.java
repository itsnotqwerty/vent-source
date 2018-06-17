package com.layer.b.d;

import c.a.a.b.c.a;
import c.a.a.b.e.a;
import com.b.a.ab;
import com.b.a.ac;
import com.b.a.w;
import com.b.a.z;
import com.layer.b.a.a.a;
import com.layer.b.c.b.a;
import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;

public class k
{
  private static final Pattern bxl = Pattern.compile("/streams/(.+)/events.*");
  private static final Pattern bxm = Pattern.compile("/presence/(.+)");
  private final com.layer.b.b.a bpP;
  private final a bxa;
  final com.layer.b.a.a bxb;
  private final int bxc;
  protected com.layer.b.c.b bxd;
  private com.b.a.n bxe;
  private z bxf;
  private e bxg;
  public boolean bxh;
  private com.b.a.h bxi;
  private CountDownLatch bxj;
  private final int bxk;
  private final String f;
  private final String g;
  private final String h;
  
  public k(a parama, com.layer.b.b.a parama1, com.layer.b.a.a parama2, int paramInt, ExecutorService paramExecutorService, final e parame)
  {
    this.bxa = parama;
    this.bpP = parama1;
    this.bxk = 100;
    parama = new com.layer.b.c.b(this.bxa, this.bxk, paramExecutorService, parama2);
    parama.a(this.bxe);
    this.bxd = parama;
    this.bxb = parama2;
    this.bxc = paramInt;
    switch (16.bqe[(this.bxc - 1)])
    {
    default: 
      throw new IllegalStateException("unknown serialization format");
    }
    for (parama = "json";; parama = "thrift")
    {
      this.f = ("application/vnd.layer.messaging+" + parama + ";version=10");
      switch (16.bqe[(this.bxc - 1)])
      {
      default: 
        throw new IllegalStateException("unknown serialization format");
      }
    }
    for (parama = "json";; parama = "thrift")
    {
      this.g = ("application/vnd.layer.policy+" + parama + ";version=1");
      switch (16.bqe[(this.bxc - 1)])
      {
      default: 
        throw new IllegalStateException("unknown serialization format");
      }
    }
    for (parama = "json";; parama = "thrift")
    {
      this.h = ("application/vnd.layer.identity+" + parama + ";version=1");
      this.bxh = false;
      this.bxi = null;
      this.bxg = parame;
      this.bxf = new z()
      {
        private void a(UUID paramAnonymousUUID, ac paramAnonymousac)
          throws m
        {
          String str1 = paramAnonymousac.a(":conversation_identifier");
          String str2 = paramAnonymousac.a(":message_identifier");
          j localj = k.a(k.this, paramAnonymousac);
          Object localObject = localj.c;
          if (localObject != null)
          {
            paramAnonymousac = (ac)localObject;
            if (!((List)localObject).isEmpty()) {}
          }
          else
          {
            paramAnonymousac = Collections.singletonList(localj.bwR);
          }
          localObject = paramAnonymousac.iterator();
          while (((Iterator)localObject).hasNext()) {
            ((c)((Iterator)localObject).next()).bvS = paramAnonymousUUID;
          }
          parame.a(str1, str2, paramAnonymousac, localj.bwS, localj.bwU);
        }
        
        public final boolean a(ac paramAnonymousac)
        {
          String str;
          Matcher localMatcher2;
          try
          {
            str = paramAnonymousac.a(":path");
            if (str == null)
            {
              if (com.layer.b.e.a.a(6)) {
                com.layer.b.e.a.c("Push with no path. response: " + paramAnonymousac);
              }
              throw new IllegalStateException("Push with no path: " + paramAnonymousac);
            }
          }
          catch (m paramAnonymousac)
          {
            if (paramAnonymousac.bvU != f.bvV)
            {
              if (com.layer.b.e.a.a(6)) {
                com.layer.b.e.a.g("Push Error: ", paramAnonymousac);
              }
              parame.a(paramAnonymousac);
            }
            return true;
            Matcher localMatcher1 = k.wZ().matcher(str);
            localMatcher2 = k.xa().matcher(str);
            if (localMatcher1.matches())
            {
              a(UUID.fromString(localMatcher1.group(1)), paramAnonymousac);
              return true;
            }
          }
          catch (Exception paramAnonymousac)
          {
            if (com.layer.b.e.a.a(6)) {
              com.layer.b.e.a.g("Push Error: ", paramAnonymousac);
            }
            parame.a(paramAnonymousac);
            return true;
          }
          if ("/push/ack".equals(str))
          {
            parame.z();
            return true;
          }
          if ("/identity/changes".equals(str))
          {
            paramAnonymousac = k.a(k.this, paramAnonymousac).bwX;
            parame.b(paramAnonymousac);
            return true;
          }
          if (localMatcher2.matches())
          {
            paramAnonymousac = k.a(k.this, paramAnonymousac).bwY;
            parame.c(Arrays.asList(new com.layer.b.f.a.i[] { paramAnonymousac }));
            return true;
          }
          if ("/presence_sync".equals(str))
          {
            paramAnonymousac = k.a(k.this, paramAnonymousac).bwZ;
            parame.c(paramAnonymousac);
            return true;
          }
          if (com.layer.b.e.a.a(6)) {
            com.layer.b.e.a.c("Push from unexpected path: " + str + ". Response: " + paramAnonymousac);
          }
          throw new IllegalStateException("Push from unexpected path: " + str);
        }
      };
      return;
    }
  }
  
  private j b(ac paramac)
    throws m
  {
    for (;;)
    {
      try
      {
        localObject = c(paramac);
        locall = ((j)localObject).bwQ;
        if (locall == null) {
          return (j)localObject;
        }
        boolean bool = com.layer.b.c.b.a(paramac);
        localObject = locall.buJ;
        i = paramac.c();
        paramac = g.dn(i);
        localf = f.a((b)localObject, bool);
        switch (16.b[localf.ordinal()])
        {
        }
      }
      catch (m paramac)
      {
        Object localObject;
        l locall;
        int i;
        f localf;
        if (!com.layer.b.e.a.a(6)) {
          continue;
        }
        com.layer.b.e.a.g("TransportException: ", paramac);
        throw paramac;
        this.bxb.f();
        continue;
      }
      catch (c.a.a.g paramac)
      {
        if (!com.layer.b.e.a.a(6)) {
          continue;
        }
        com.layer.b.e.a.g("TransportException: ", paramac);
        throw new m(f.bvY, g.bwu, paramac.getMessage(), paramac);
      }
      catch (IOException paramac)
      {
        if (!com.layer.b.e.a.a(6)) {
          continue;
        }
        com.layer.b.e.a.g("TransportException: ", paramac);
        throw new m(f.bvX, g.bwf, paramac.getMessage(), paramac);
      }
      catch (Exception paramac)
      {
        if (!com.layer.b.e.a.a(6)) {
          continue;
        }
        com.layer.b.e.a.g("TransportException: ", paramac);
        throw new m(f.bvX, g.bwf, paramac.getMessage(), paramac);
      }
      throw new m(localf, paramac, (b)localObject, "Response type: " + localf + ", error code: " + localObject + ", status code (" + i + "): " + paramac + ", message: " + locall.b, null);
    }
  }
  
  /* Error */
  private j c(ac paramac)
    throws c.a.a.g, IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 4
    //   6: aconst_null
    //   7: astore_2
    //   8: aconst_null
    //   9: astore 5
    //   11: aload_1
    //   12: ifnonnull +7 -> 19
    //   15: aconst_null
    //   16: astore_2
    //   17: aload_2
    //   18: areturn
    //   19: aload_1
    //   20: invokevirtual 319	com/b/a/ac:Ap	()Lcom/b/a/b;
    //   23: astore_3
    //   24: aload_3
    //   25: ifnull +12 -> 37
    //   28: aload_3
    //   29: invokevirtual 324	com/b/a/b:b	()J
    //   32: lconst_0
    //   33: lcmp
    //   34: ifne +43 -> 77
    //   37: new 223	com/layer/b/d/j
    //   40: dup
    //   41: invokespecial 325	com/layer/b/d/j:<init>	()V
    //   44: astore_1
    //   45: aload_1
    //   46: astore_2
    //   47: aload_3
    //   48: ifnull -31 -> 17
    //   51: aload_3
    //   52: invokevirtual 328	com/b/a/b:close	()V
    //   55: aload_1
    //   56: areturn
    //   57: astore_3
    //   58: aload_1
    //   59: astore_2
    //   60: bipush 6
    //   62: invokestatic 283	com/layer/b/e/a:a	(I)Z
    //   65: ifeq -48 -> 17
    //   68: ldc_w 285
    //   71: aload_3
    //   72: invokestatic 288	com/layer/b/e/a:g	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   75: aload_1
    //   76: areturn
    //   77: aload_1
    //   78: ldc_w 330
    //   81: invokevirtual 333	com/b/a/ac:a	(Ljava/lang/String;)Ljava/lang/String;
    //   84: astore 6
    //   86: aload 6
    //   88: astore_1
    //   89: aload 6
    //   91: ifnull +15 -> 106
    //   94: aload 6
    //   96: ldc_w 335
    //   99: ldc_w 337
    //   102: invokevirtual 343	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   105: astore_1
    //   106: aload_0
    //   107: getfield 186	com/layer/b/d/k:g	Ljava/lang/String;
    //   110: aload_1
    //   111: invokevirtual 347	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   114: ifeq +237 -> 351
    //   117: new 349	com/layer/b/f/b/c
    //   120: dup
    //   121: invokespecial 350	com/layer/b/f/b/c:<init>	()V
    //   124: astore 4
    //   126: aload_0
    //   127: invokespecial 354	com/layer/b/d/k:wY	()Lc/a/a/f;
    //   130: aload 4
    //   132: aload_3
    //   133: invokevirtual 358	com/b/a/b:yf	()[B
    //   136: invokevirtual 363	c/a/a/f:a	(Lc/a/a/c;[B)V
    //   139: new 223	com/layer/b/d/j
    //   142: dup
    //   143: invokespecial 325	com/layer/b/d/j:<init>	()V
    //   146: astore_2
    //   147: aload 4
    //   149: getfield 367	com/layer/b/f/b/c:bAz	Lcom/layer/b/f/b/a;
    //   152: ifnonnull +60 -> 212
    //   155: aconst_null
    //   156: astore_1
    //   157: aload_2
    //   158: aload_1
    //   159: putfield 227	com/layer/b/d/j:bwQ	Lcom/layer/b/d/l;
    //   162: aload 4
    //   164: getfield 370	com/layer/b/f/b/c:b	Ljava/util/Map;
    //   167: ifnonnull +99 -> 266
    //   170: aload 5
    //   172: astore_1
    //   173: aload_2
    //   174: aload_1
    //   175: putfield 372	com/layer/b/d/j:g	Ljava/util/Map;
    //   178: aload_2
    //   179: astore_1
    //   180: aload_1
    //   181: astore_2
    //   182: aload_3
    //   183: ifnull -166 -> 17
    //   186: aload_3
    //   187: invokevirtual 328	com/b/a/b:close	()V
    //   190: aload_1
    //   191: areturn
    //   192: astore_3
    //   193: aload_1
    //   194: astore_2
    //   195: bipush 6
    //   197: invokestatic 283	com/layer/b/e/a:a	(I)Z
    //   200: ifeq -183 -> 17
    //   203: ldc_w 285
    //   206: aload_3
    //   207: invokestatic 288	com/layer/b/e/a:g	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   210: aload_1
    //   211: areturn
    //   212: aload 4
    //   214: getfield 367	com/layer/b/f/b/c:bAz	Lcom/layer/b/f/b/a;
    //   217: astore_1
    //   218: aload_1
    //   219: ifnonnull +8 -> 227
    //   222: aconst_null
    //   223: astore_1
    //   224: goto -67 -> 157
    //   227: new 232	com/layer/b/d/l
    //   230: dup
    //   231: aload_1
    //   232: getfield 378	com/layer/b/f/b/a:bAo	Lcom/layer/b/f/b/b;
    //   235: invokestatic 383	com/layer/b/d/b:a	(Lcom/layer/b/f/b/b;)Lcom/layer/b/d/b;
    //   238: aload_1
    //   239: getfield 384	com/layer/b/f/b/a:b	Ljava/lang/String;
    //   242: aload_1
    //   243: getfield 386	com/layer/b/f/b/a:c	Ljava/util/Map;
    //   246: invokespecial 389	com/layer/b/d/l:<init>	(Lcom/layer/b/d/b;Ljava/lang/String;Ljava/util/Map;)V
    //   249: astore_1
    //   250: goto -93 -> 157
    //   253: astore_1
    //   254: aload_3
    //   255: astore_2
    //   256: aload_2
    //   257: ifnull +7 -> 264
    //   260: aload_2
    //   261: invokevirtual 328	com/b/a/b:close	()V
    //   264: aload_1
    //   265: athrow
    //   266: aload 4
    //   268: getfield 370	com/layer/b/f/b/c:b	Ljava/util/Map;
    //   271: astore 4
    //   273: new 391	java/util/HashMap
    //   276: dup
    //   277: invokespecial 392	java/util/HashMap:<init>	()V
    //   280: astore_1
    //   281: aload 4
    //   283: invokeinterface 398 1 0
    //   288: invokeinterface 404 1 0
    //   293: astore 5
    //   295: aload 5
    //   297: invokeinterface 410 1 0
    //   302: ifeq +567 -> 869
    //   305: aload 5
    //   307: invokeinterface 414 1 0
    //   312: checkcast 339	java/lang/String
    //   315: astore 6
    //   317: aload_1
    //   318: aload 6
    //   320: new 416	java/util/Date
    //   323: dup
    //   324: aload 4
    //   326: aload 6
    //   328: invokeinterface 420 2 0
    //   333: checkcast 422	java/lang/Long
    //   336: invokevirtual 425	java/lang/Long:longValue	()J
    //   339: invokespecial 428	java/util/Date:<init>	(J)V
    //   342: invokeinterface 432 3 0
    //   347: pop
    //   348: goto -53 -> 295
    //   351: aload_0
    //   352: getfield 190	com/layer/b/d/k:h	Ljava/lang/String;
    //   355: aload_1
    //   356: invokevirtual 347	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   359: ifeq +194 -> 553
    //   362: new 434	com/layer/b/f/a/l
    //   365: dup
    //   366: invokespecial 435	com/layer/b/f/a/l:<init>	()V
    //   369: astore 5
    //   371: aload_0
    //   372: invokespecial 354	com/layer/b/d/k:wY	()Lc/a/a/f;
    //   375: aload 5
    //   377: aload_3
    //   378: invokevirtual 358	com/b/a/b:yf	()[B
    //   381: invokevirtual 363	c/a/a/f:a	(Lc/a/a/c;[B)V
    //   384: new 223	com/layer/b/d/j
    //   387: dup
    //   388: invokespecial 325	com/layer/b/d/j:<init>	()V
    //   391: astore_2
    //   392: aload 5
    //   394: getfield 439	com/layer/b/f/a/l:bzO	Lcom/layer/b/f/a/a;
    //   397: ifnonnull +61 -> 458
    //   400: aconst_null
    //   401: astore_1
    //   402: aload_2
    //   403: aload_1
    //   404: putfield 227	com/layer/b/d/j:bwQ	Lcom/layer/b/d/l;
    //   407: aload 5
    //   409: getfield 443	com/layer/b/f/a/l:bzQ	Lcom/layer/b/f/a/g;
    //   412: ifnonnull +90 -> 502
    //   415: aconst_null
    //   416: astore_1
    //   417: aload_2
    //   418: aload_1
    //   419: putfield 446	com/layer/b/d/j:bwX	Lcom/layer/b/f/a/g;
    //   422: aload 5
    //   424: getfield 450	com/layer/b/f/a/l:bzT	Lcom/layer/b/f/a/i;
    //   427: ifnonnull +91 -> 518
    //   430: aconst_null
    //   431: astore_1
    //   432: aload_2
    //   433: aload_1
    //   434: putfield 453	com/layer/b/d/j:bwY	Lcom/layer/b/f/a/i;
    //   437: aload 5
    //   439: getfield 457	com/layer/b/f/a/l:k	Ljava/util/List;
    //   442: ifnonnull +92 -> 534
    //   445: aload 4
    //   447: astore_1
    //   448: aload_2
    //   449: aload_1
    //   450: putfield 460	com/layer/b/d/j:bwZ	Ljava/util/List;
    //   453: aload_2
    //   454: astore_1
    //   455: goto -275 -> 180
    //   458: aload 5
    //   460: getfield 439	com/layer/b/f/a/l:bzO	Lcom/layer/b/f/a/a;
    //   463: astore_1
    //   464: aload_1
    //   465: ifnonnull +8 -> 473
    //   468: aconst_null
    //   469: astore_1
    //   470: goto -68 -> 402
    //   473: new 232	com/layer/b/d/l
    //   476: dup
    //   477: aload_1
    //   478: getfield 466	com/layer/b/f/a/a:bxC	Lcom/layer/b/f/a/b;
    //   481: invokestatic 469	com/layer/b/d/b:a	(Lcom/layer/b/f/a/b;)Lcom/layer/b/d/b;
    //   484: aload_1
    //   485: getfield 470	com/layer/b/f/a/a:b	Ljava/lang/String;
    //   488: new 391	java/util/HashMap
    //   491: dup
    //   492: invokespecial 392	java/util/HashMap:<init>	()V
    //   495: invokespecial 389	com/layer/b/d/l:<init>	(Lcom/layer/b/d/b;Ljava/lang/String;Ljava/util/Map;)V
    //   498: astore_1
    //   499: goto -97 -> 402
    //   502: new 472	com/layer/b/f/a/g
    //   505: dup
    //   506: aload 5
    //   508: getfield 443	com/layer/b/f/a/l:bzQ	Lcom/layer/b/f/a/g;
    //   511: invokespecial 475	com/layer/b/f/a/g:<init>	(Lcom/layer/b/f/a/g;)V
    //   514: astore_1
    //   515: goto -98 -> 417
    //   518: new 477	com/layer/b/f/a/i
    //   521: dup
    //   522: aload 5
    //   524: getfield 450	com/layer/b/f/a/l:bzT	Lcom/layer/b/f/a/i;
    //   527: invokespecial 480	com/layer/b/f/a/i:<init>	(Lcom/layer/b/f/a/i;)V
    //   530: astore_1
    //   531: goto -99 -> 432
    //   534: new 482	java/util/ArrayList
    //   537: dup
    //   538: aload 5
    //   540: getfield 457	com/layer/b/f/a/l:k	Ljava/util/List;
    //   543: invokestatic 485	com/layer/b/d/j:w	(Ljava/util/List;)Ljava/util/List;
    //   546: invokespecial 488	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   549: astore_1
    //   550: goto -102 -> 448
    //   553: new 490	com/layer/b/f/c/l
    //   556: dup
    //   557: invokespecial 491	com/layer/b/f/c/l:<init>	()V
    //   560: astore 5
    //   562: aload_0
    //   563: invokespecial 354	com/layer/b/d/k:wY	()Lc/a/a/f;
    //   566: aload 5
    //   568: aload_3
    //   569: invokevirtual 358	com/b/a/b:yf	()[B
    //   572: invokevirtual 363	c/a/a/f:a	(Lc/a/a/c;[B)V
    //   575: new 223	com/layer/b/d/j
    //   578: dup
    //   579: invokespecial 325	com/layer/b/d/j:<init>	()V
    //   582: astore 4
    //   584: aload 5
    //   586: getfield 495	com/layer/b/f/c/l:bEj	Lcom/layer/b/f/c/b;
    //   589: astore_1
    //   590: aload_1
    //   591: ifnonnull +133 -> 724
    //   594: aconst_null
    //   595: astore_1
    //   596: aload 4
    //   598: aload_1
    //   599: putfield 227	com/layer/b/d/j:bwQ	Lcom/layer/b/d/l;
    //   602: aload 5
    //   604: getfield 499	com/layer/b/f/c/l:bEk	Lcom/layer/b/f/c/d;
    //   607: ifnonnull +143 -> 750
    //   610: aconst_null
    //   611: astore_1
    //   612: aload 4
    //   614: aload_1
    //   615: putfield 503	com/layer/b/d/j:bwR	Lcom/layer/b/d/c;
    //   618: aload 5
    //   620: getfield 506	com/layer/b/f/c/l:j	Ljava/util/List;
    //   623: ifnonnull +144 -> 767
    //   626: aconst_null
    //   627: astore_1
    //   628: aload 4
    //   630: aload_1
    //   631: putfield 508	com/layer/b/d/j:c	Ljava/util/List;
    //   634: aload 5
    //   636: getfield 512	com/layer/b/f/c/l:bEl	Lcom/layer/b/f/c/m;
    //   639: ifnonnull +147 -> 786
    //   642: aconst_null
    //   643: astore_1
    //   644: aload 4
    //   646: aload_1
    //   647: putfield 516	com/layer/b/d/j:bwS	Lcom/layer/b/d/h;
    //   650: aload 5
    //   652: getfield 519	com/layer/b/f/c/l:d	Ljava/util/Set;
    //   655: ifnonnull +148 -> 803
    //   658: aconst_null
    //   659: astore_1
    //   660: aload 4
    //   662: aload_1
    //   663: putfield 522	com/layer/b/d/j:bwT	Ljava/util/List;
    //   666: aload 4
    //   668: aload 5
    //   670: getfield 526	com/layer/b/f/c/l:bEm	Lcom/layer/b/f/c/n;
    //   673: putfield 529	com/layer/b/d/j:bwU	Lcom/layer/b/f/c/n;
    //   676: aload 4
    //   678: aload 5
    //   680: getfield 532	com/layer/b/f/c/l:bEn	Ljava/util/Set;
    //   683: putfield 535	com/layer/b/d/j:bwV	Ljava/util/Set;
    //   686: aload 5
    //   688: getfield 539	com/layer/b/f/c/l:bEo	Lcom/layer/b/f/c/p;
    //   691: ifnonnull +124 -> 815
    //   694: aconst_null
    //   695: astore_1
    //   696: aload 4
    //   698: aload_1
    //   699: putfield 543	com/layer/b/d/j:bwW	Lcom/layer/b/d/i;
    //   702: aload 5
    //   704: getfield 544	com/layer/b/f/c/l:bwV	Ljava/util/Set;
    //   707: ifnonnull +124 -> 831
    //   710: aload_2
    //   711: astore_1
    //   712: aload 4
    //   714: aload_1
    //   715: putfield 545	com/layer/b/d/j:j	Ljava/util/List;
    //   718: aload 4
    //   720: astore_1
    //   721: goto -541 -> 180
    //   724: new 232	com/layer/b/d/l
    //   727: dup
    //   728: aload_1
    //   729: getfield 551	com/layer/b/f/c/b:bAP	Lcom/layer/b/f/c/c;
    //   732: invokestatic 554	com/layer/b/d/b:a	(Lcom/layer/b/f/c/c;)Lcom/layer/b/d/b;
    //   735: aload_1
    //   736: getfield 555	com/layer/b/f/c/b:b	Ljava/lang/String;
    //   739: aload_1
    //   740: getfield 556	com/layer/b/f/c/b:c	Ljava/util/Map;
    //   743: invokespecial 389	com/layer/b/d/l:<init>	(Lcom/layer/b/d/b;Ljava/lang/String;Ljava/util/Map;)V
    //   746: astore_1
    //   747: goto -151 -> 596
    //   750: new 558	com/layer/b/d/c
    //   753: dup
    //   754: aload 5
    //   756: getfield 499	com/layer/b/f/c/l:bEk	Lcom/layer/b/f/c/d;
    //   759: iconst_0
    //   760: invokespecial 561	com/layer/b/d/c:<init>	(Lcom/layer/b/f/c/d;B)V
    //   763: astore_1
    //   764: goto -152 -> 612
    //   767: new 482	java/util/ArrayList
    //   770: dup
    //   771: aload 5
    //   773: getfield 506	com/layer/b/f/c/l:j	Ljava/util/List;
    //   776: invokestatic 563	com/layer/b/d/j:a	(Ljava/util/List;)Ljava/util/List;
    //   779: invokespecial 488	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   782: astore_1
    //   783: goto -155 -> 628
    //   786: new 565	com/layer/b/d/h
    //   789: dup
    //   790: aload 5
    //   792: getfield 512	com/layer/b/f/c/l:bEl	Lcom/layer/b/f/c/m;
    //   795: iconst_0
    //   796: invokespecial 568	com/layer/b/d/h:<init>	(Lcom/layer/b/f/c/m;B)V
    //   799: astore_1
    //   800: goto -156 -> 644
    //   803: aload 5
    //   805: getfield 519	com/layer/b/f/c/l:d	Ljava/util/Set;
    //   808: invokestatic 571	com/layer/b/d/j:a	(Ljava/util/Set;)Ljava/util/List;
    //   811: astore_1
    //   812: goto -152 -> 660
    //   815: new 573	com/layer/b/d/i
    //   818: dup
    //   819: aload 5
    //   821: getfield 539	com/layer/b/f/c/l:bEo	Lcom/layer/b/f/c/p;
    //   824: invokespecial 576	com/layer/b/d/i:<init>	(Lcom/layer/b/f/c/p;)V
    //   827: astore_1
    //   828: goto -132 -> 696
    //   831: aload 5
    //   833: getfield 544	com/layer/b/f/c/l:bwV	Ljava/util/Set;
    //   836: invokestatic 578	com/layer/b/d/j:f	(Ljava/util/Set;)Ljava/util/List;
    //   839: astore_1
    //   840: goto -128 -> 712
    //   843: astore_2
    //   844: bipush 6
    //   846: invokestatic 283	com/layer/b/e/a:a	(I)Z
    //   849: ifeq -585 -> 264
    //   852: ldc_w 285
    //   855: aload_2
    //   856: invokestatic 288	com/layer/b/e/a:g	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   859: goto -595 -> 264
    //   862: astore_1
    //   863: aload 6
    //   865: astore_2
    //   866: goto -610 -> 256
    //   869: goto -696 -> 173
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	872	0	this	k
    //   0	872	1	paramac	ac
    //   7	704	2	localObject1	Object
    //   843	13	2	localIOException1	IOException
    //   865	1	2	str1	String
    //   23	29	3	localb	com.b.a.b
    //   57	130	3	localIOException2	IOException
    //   192	377	3	localIOException3	IOException
    //   4	715	4	localObject2	Object
    //   9	823	5	localObject3	Object
    //   1	863	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   51	55	57	java/io/IOException
    //   186	190	192	java/io/IOException
    //   28	37	253	finally
    //   37	45	253	finally
    //   77	86	253	finally
    //   94	106	253	finally
    //   106	155	253	finally
    //   157	170	253	finally
    //   173	178	253	finally
    //   212	218	253	finally
    //   227	250	253	finally
    //   266	295	253	finally
    //   295	348	253	finally
    //   351	400	253	finally
    //   402	415	253	finally
    //   417	430	253	finally
    //   432	445	253	finally
    //   448	453	253	finally
    //   458	464	253	finally
    //   473	499	253	finally
    //   502	515	253	finally
    //   518	531	253	finally
    //   534	550	253	finally
    //   553	590	253	finally
    //   596	610	253	finally
    //   612	626	253	finally
    //   628	642	253	finally
    //   644	658	253	finally
    //   660	694	253	finally
    //   696	710	253	finally
    //   712	718	253	finally
    //   724	747	253	finally
    //   750	764	253	finally
    //   767	783	253	finally
    //   786	800	253	finally
    //   803	812	253	finally
    //   815	828	253	finally
    //   831	840	253	finally
    //   260	264	843	java/io/IOException
    //   19	24	862	finally
  }
  
  private void w()
    throws m
  {
    try
    {
      if ((this.bxh) && (this.bxi == null)) {
        k();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private c.a.a.b.j wX()
  {
    switch (16.bqe[(this.bxc - 1)])
    {
    default: 
      throw new IllegalStateException("unknown serialization format");
    case 1: 
      return new e.a();
    }
    return new c.a();
  }
  
  private c.a.a.f wY()
  {
    return new c.a.a.f(wX());
  }
  
  final Map<String, List<String>> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Accept", Arrays.asList(new String[] { this.f }));
    return localHashMap;
  }
  
  public final void a(com.b.a.n paramn)
  {
    this.bxe = paramn;
    if (this.bxd != null) {
      this.bxd.a(paramn);
    }
  }
  
  public final void a(com.layer.b.b.a parama)
    throws IOException, m
  {
    if (com.layer.b.e.a.a(2)) {
      com.layer.b.e.a.a("Reconfiguring HTTP client with new configuration");
    }
    this.bxb.a(parama);
    this.bxd.b();
    this.bxd.a();
    w();
  }
  
  public final void a(final String paramString, final com.layer.b.f.a.m paramm)
    throws m
  {
    new f().a(new Integer[] { Integer.valueOf(200) }).a(new e()
    {
      public final ac xb()
        throws IOException, c.a.a.g
      {
        Object localObject = new com.layer.b.f.a.i(paramString, paramm);
        localObject = ab.a(w.dK(k.f(k.this)), k.e(k.this).a((c.a.a.c)localObject));
        com.layer.b.c.b localb = k.this.bxd;
        URL localURL = k.b(k.this).wE();
        Map localMap = k.this.c();
        return localb.b(localURL, b.a.buD, "presence", localMap, (ab)localObject);
      }
    });
  }
  
  public final void a(HostnameVerifier paramHostnameVerifier)
  {
    this.bxd.a(paramHostnameVerifier);
  }
  
  public final boolean aJ(final boolean paramBoolean)
    throws m
  {
    ((Boolean)new f().a(new Integer[] { Integer.valueOf(200) }).a(new e()
    {
      public final ac xb()
        throws c.a.a.g, IOException
      {
        return k.this.bxd.a(k.b(k.this).wD(), "init", k.this.a(), paramBoolean);
      }
    })).booleanValue();
  }
  
  final Map<String, List<String>> c()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Accept", Arrays.asList(new String[] { this.h }));
    return localHashMap;
  }
  
  public final void e()
    throws IOException, m
  {
    if (com.layer.b.e.a.a(2)) {
      com.layer.b.e.a.a("Configuring HTTP client");
    }
    this.bxd.a();
    aJ(false);
  }
  
  public final void f()
  {
    l();
    this.bxd.b();
  }
  
  public final Integer g()
  {
    if (this.bxd == null) {
      return null;
    }
    return this.bxd.wU();
  }
  
  public final void k()
    throws m
  {
    try
    {
      if (this.bxi != null) {
        return;
      }
      this.bxh = true;
      com.layer.b.c.b localb = this.bxd;
      URL localURL = this.bpP.wE();
      b.a locala = b.a.buB;
      HashMap localHashMap = new HashMap();
      localHashMap.put("Accept", Collections.singletonList(String.format(Locale.US, "%s,%s", new Object[] { this.f, this.h })));
      this.bxi = localb.a(localURL, locala, "push?ack&include_channels&presence_subscribe", localHashMap, this.bxf, new com.b.a.i()
      {
        public final void a(IOException paramAnonymousIOException)
        {
          k.g(k.this);
          if (k.h(k.this) != null) {
            k.h(k.this).countDown();
          }
          if (k.i(k.this).a(paramAnonymousIOException)) {}
          try
          {
            k.a(k.this);
            return;
          }
          catch (m paramAnonymousIOException)
          {
            while (!com.layer.b.e.a.a(6)) {}
            com.layer.b.e.a.g(paramAnonymousIOException.getMessage(), paramAnonymousIOException);
          }
        }
        
        public final void e(ac paramAnonymousac)
          throws IOException
        {
          int i = 1;
          for (;;)
          {
            try
            {
              k.a(k.this, paramAnonymousac);
              k.g(k.this);
              if (k.h(k.this) != null) {
                k.h(k.this).countDown();
              }
              if (!k.i(k.this).a(new Throwable(paramAnonymousac.toString()))) {}
            }
            catch (m localm)
            {
              int j = 0;
              i = j;
              if (localm.bvU == f.bvV) {
                continue;
              }
              i = j;
              if (!com.layer.b.e.a.a(6)) {
                continue;
              }
              i = j;
              com.layer.b.e.a.g(localm.getMessage(), localm);
              k.g(k.this);
              if (k.h(k.this) == null) {
                continue;
              }
              k.h(k.this).countDown();
              if (!k.i(k.this).a(new Throwable(paramAnonymousac.toString()))) {
                continue;
              }
              return;
            }
            finally
            {
              k.g(k.this);
              if (k.h(k.this) == null) {
                continue;
              }
              k.h(k.this).countDown();
              if ((!k.i(k.this).a(new Throwable(paramAnonymousac.toString()))) || (i == 0)) {
                break label252;
              }
            }
            try
            {
              k.a(k.this);
              return;
            }
            catch (m paramAnonymousac)
            {
              if (com.layer.b.e.a.a(6))
              {
                com.layer.b.e.a.g(paramAnonymousac.getMessage(), paramAnonymousac);
                return;
              }
            }
          }
          try
          {
            k.a(k.this);
            label252:
            throw ((Throwable)localObject);
          }
          catch (m paramAnonymousac)
          {
            for (;;)
            {
              if (com.layer.b.e.a.a(6)) {
                com.layer.b.e.a.g(paramAnonymousac.getMessage(), paramAnonymousac);
              }
            }
          }
        }
      });
      return;
    }
    catch (IOException localIOException)
    {
      this.bxi = null;
      if (this.bxg.a(localIOException))
      {
        w();
        return;
      }
      if (com.layer.b.e.a.a(6)) {
        com.layer.b.e.a.g("TransportException: ", localIOException);
      }
      throw new m(f.bvX, g.bwf, localIOException);
    }
  }
  
  public final void l()
  {
    if (this.bxi != null)
    {
      this.bxj = new CountDownLatch(1);
      this.bxi.c();
    }
    try
    {
      this.bxj.await(2500L, TimeUnit.MILLISECONDS);
      this.bxi = null;
      this.bxh = false;
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  final Map<String, List<String>> wW()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Accept", Arrays.asList(new String[] { this.g }));
    return localHashMap;
  }
  
  public static abstract interface a<T>
  {
    public abstract com.b.a.h a(com.b.a.i parami)
      throws IOException, c.a.a.g;
    
    public abstract T a(j paramj)
      throws m, IOException;
  }
  
  public final class b<T>
  {
    Integer b = null;
    final k.c<T> bxr;
    
    public b()
    {
      k.c localc;
      this.bxr = localc;
    }
    
    public final com.b.a.h a(final k.a<T> parama)
      throws m
    {
      try
      {
        parama = parama.a(new com.b.a.i()
        {
          public final void a(IOException paramAnonymousIOException)
          {
            if (com.layer.b.e.a.a(6)) {
              com.layer.b.e.a.g("TransportException: ", paramAnonymousIOException);
            }
            k.b.this.bxr.a(new m(f.bvX, g.bwt, paramAnonymousIOException.getMessage(), paramAnonymousIOException));
          }
          
          public final void e(ac paramAnonymousac)
            throws IOException
          {
            try
            {
              paramAnonymousac = k.this.bxd.a(paramAnonymousac, true);
              Object localObject = k.a(k.this, paramAnonymousac);
              localObject = parama.a((j)localObject);
              int i = paramAnonymousac.c();
              if ((k.b.this.b != null) && (!k.b.this.b.equals(Integer.valueOf(i))))
              {
                if (com.layer.b.e.a.a(6)) {
                  com.layer.b.e.a.c("Transport Error. Expected status code " + k.b.this.b + " but encountered " + i);
                }
                k.b.this.bxr.a(new m(f.bvW, g.dn(i), "Expected status code " + k.b.this.b + " but encountered " + i));
                return;
              }
              k.a(k.this);
              k.b.this.bxr.a(localObject);
              return;
            }
            catch (SSLHandshakeException paramAnonymousac)
            {
              if (com.layer.b.e.a.a(6)) {
                com.layer.b.e.a.g("TransportException: ", paramAnonymousac);
              }
              if ((paramAnonymousac.getMessage() != null) && (paramAnonymousac.getMessage().contains("Server is not trusted")))
              {
                k.b.this.bxr.a(new m(f.bvY, g.bws, paramAnonymousac.getMessage(), paramAnonymousac));
                return;
              }
              k.b.this.bxr.a(new m(f.bvX, g.bwf, paramAnonymousac.getMessage(), paramAnonymousac));
              return;
            }
            catch (m paramAnonymousac)
            {
              if (com.layer.b.e.a.a(6)) {
                com.layer.b.e.a.g("TransportException: ", paramAnonymousac);
              }
              k.b.this.bxr.a(paramAnonymousac);
              return;
            }
            catch (IOException paramAnonymousac)
            {
              if (com.layer.b.e.a.a(6)) {
                com.layer.b.e.a.g("TransportException: ", paramAnonymousac);
              }
              k.b.this.bxr.a(new m(f.bvX, g.bwf, paramAnonymousac.getMessage(), paramAnonymousac));
              return;
            }
            catch (Exception paramAnonymousac)
            {
              if (com.layer.b.e.a.a(6)) {
                com.layer.b.e.a.g("TransportException: ", paramAnonymousac);
              }
              k.b.this.bxr.a(new m(f.bvX, g.bwt, paramAnonymousac.getMessage(), paramAnonymousac));
            }
          }
        });
        return parama;
      }
      catch (IOException parama)
      {
        if (com.layer.b.e.a.a(6)) {
          com.layer.b.e.a.g("TransportException: ", parama);
        }
        throw new m(f.bvX, g.bwf, parama.getMessage(), parama);
      }
      catch (c.a.a.g parama)
      {
        if (com.layer.b.e.a.a(6)) {
          com.layer.b.e.a.g("TransportException: ", parama);
        }
        throw new m(f.bvY, g.bwm, "Invalid object: " + parama.getMessage(), parama);
      }
    }
    
    public final b<T> jdMethod_do(int paramInt)
    {
      this.b = Integer.valueOf(paramInt);
      return this;
    }
  }
  
  public static abstract interface c<T>
  {
    public abstract void a(m paramm);
    
    public abstract void a(T paramT);
  }
  
  public static enum d
  {
    public static final int bxu = 1;
    public static final int bxv = 2;
    
    public static int[] xc()
    {
      return (int[])bxw.clone();
    }
  }
  
  public static abstract interface e<T>
  {
    public abstract T a(ac paramac, j paramj)
      throws m, IOException;
    
    public abstract ac xb()
      throws m, c.a.a.g, IOException;
  }
  
  public final class f<T>
  {
    private HashSet<Integer> b = new HashSet();
    
    public f() {}
    
    public final f<T> a(Integer... paramVarArgs)
    {
      this.b.addAll(Arrays.asList(paramVarArgs));
      return this;
    }
    
    public final T a(k.e<T> parame)
      throws m
    {
      try
      {
        ac localac = parame.xb();
        parame = parame.a(localac, k.a(k.this, localac));
        int i = localac.c();
        if ((!this.b.isEmpty()) && (!this.b.contains(Integer.valueOf(i))))
        {
          if (com.layer.b.e.a.a(6)) {
            com.layer.b.e.a.c("Transport error. Expected status code " + Arrays.toString(this.b.toArray()) + " but encountered " + i);
          }
          throw new m(f.bvW, g.dn(i), "Expected status code " + Arrays.toString(this.b.toArray()) + " but encountered " + i);
        }
      }
      catch (SSLHandshakeException parame)
      {
        if ((parame.getMessage() != null) && (parame.getMessage().contains("Server is not trusted")))
        {
          if (com.layer.b.e.a.a(6)) {
            com.layer.b.e.a.g("TransportException", parame);
          }
          throw new m(f.bvY, g.bws, parame.getMessage(), parame);
          k.a(k.this);
          return parame;
        }
        if (com.layer.b.e.a.a(6)) {
          com.layer.b.e.a.g("TransportException", parame);
        }
        throw new m(f.bvX, g.bwf, parame.getMessage(), parame);
      }
      catch (IOException parame)
      {
        if (com.layer.b.e.a.a(6)) {
          com.layer.b.e.a.g("TransportException", parame);
        }
        throw new m(f.bvX, g.bwf, parame.getMessage(), parame);
      }
      catch (c.a.a.g parame)
      {
        if (com.layer.b.e.a.a(6)) {
          com.layer.b.e.a.g("TransportException", parame);
        }
        throw new m(f.bvY, g.bwm, "Invalid object: " + parame.getMessage(), parame);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/d/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */