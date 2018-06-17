package com.layer.b.c;

import com.b.a.aa.a;
import com.b.a.ab;
import com.b.a.ac;
import com.b.a.h;
import com.b.a.i;
import com.b.a.n;
import com.b.a.o;
import com.b.a.x;
import com.b.a.z;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;

public final class b
{
  private static final long g;
  private final int bpE;
  protected n buA;
  protected ExecutorService buv;
  protected x buw;
  protected HostnameVerifier bux;
  protected com.layer.b.d.a buy;
  protected a buz;
  
  static
  {
    try
    {
      String str = System.getenv("LAYER_TRANSPORT_READ_TIMEOUT");
      if (str != null)
      {
        l = Long.parseLong(str);
        g = l;
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        Object localObject = null;
        continue;
        long l = 30000L;
      }
    }
  }
  
  public b(com.layer.b.d.a parama, int paramInt, ExecutorService paramExecutorService, a parama1)
  {
    this.buy = parama;
    this.bpE = (paramInt + 1);
    if (paramExecutorService != null) {}
    for (;;)
    {
      this.buv = paramExecutorService;
      this.buz = parama1;
      return;
      paramExecutorService = new com.layer.a.b.c("Transport", this.bpE, 10000L, TimeUnit.MILLISECONDS);
    }
  }
  
  private ac a(URL paramURL, a parama, String paramString, Map<String, List<String>> paramMap, ab paramab, int paramInt, boolean paramBoolean)
    throws IOException
  {
    for (;;)
    {
      Object localObject2 = null;
      ac localac2 = null;
      ac localac1 = localac2;
      try
      {
        h localh = a(paramURL, parama, paramString, paramMap, paramab);
        localac1 = localac2;
        localObject2 = localh;
        localac2 = localh.xb();
        localac1 = localac2;
        localObject2 = localh;
        localac2 = a(localac2, paramBoolean);
        return localac2;
      }
      catch (IOException localIOException)
      {
        if (localac1 != null) {}
        try
        {
          localac1.Ap().close();
          if (localObject2 != null) {
            ((h)localObject2).c();
          }
          if (paramInt <= 0)
          {
            if (com.layer.b.e.a.a(6)) {
              com.layer.b.e.a.g("Request failed, giving up.", localIOException);
            }
            throw localIOException;
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            if (com.layer.b.e.a.a(6)) {
              com.layer.b.e.a.g(localException.getMessage(), localException);
            }
          }
          int i;
          if (!(localIOException instanceof SSLHandshakeException)) {
            i = 0;
          }
          for (;;)
          {
            if (i == 0) {
              break label261;
            }
            if (com.layer.b.e.a.a(2)) {
              com.layer.b.e.a.f("Request failed, regenerating TLS and trying again.", localIOException);
            }
            a(this.buz.wP());
            paramInt -= 1;
            break;
            Object localObject1 = new StringWriter();
            localIOException.printStackTrace(new PrintWriter((Writer)localObject1));
            localObject1 = ((StringWriter)localObject1).toString();
            boolean bool = Pattern.compile("unknown.ca", 2).matcher((CharSequence)localObject1).find();
            i = bool;
            if (bool)
            {
              i = bool;
              if (com.layer.b.e.a.a(5))
              {
                com.layer.b.e.a.b("Received Unknown CA error during SSL handshake");
                i = bool;
              }
            }
          }
          label261:
          if (com.layer.b.e.a.a(6)) {
            com.layer.b.e.a.f("Request failed.", localIOException);
          }
          throw localIOException;
        }
      }
    }
  }
  
  private h a(URL paramURL, a parama, String paramString, Map<String, List<String>> paramMap, ab paramab)
    throws IOException
  {
    return a(paramURL, parama, paramString, paramMap, paramab, null, this.buw);
  }
  
  private h a(URL paramURL, a parama, String paramString, Map<String, List<String>> paramMap, ab paramab, z paramz, x paramx)
    throws IOException
  {
    if (paramx == null) {
      throw new IllegalStateException("Not connected");
    }
    paramURL = com.layer.b.e.c.a(paramURL, paramString);
    paramURL = this.buy.a(new aa.a()).a(parama.name(), paramab).g(paramURL);
    parama = this.buz.c();
    if (parama != null) {
      paramURL.Q("Authorization", parama);
    }
    a(paramURL, paramMap);
    if (paramz != null) {
      paramURL.a(paramz);
    }
    return paramx.e(paramURL.An());
  }
  
  /* Error */
  private x a(d paramd)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 239	com/layer/b/c/c
    //   5: dup
    //   6: aload_1
    //   7: invokespecial 242	com/layer/b/c/c:<init>	(Lcom/layer/b/c/d;)V
    //   10: astore_1
    //   11: aload_0
    //   12: getfield 180	com/layer/b/c/b:buw	Lcom/b/a/x;
    //   15: ifnonnull +145 -> 160
    //   18: iconst_2
    //   19: invokestatic 109	com/layer/b/e/a:a	(I)Z
    //   22: ifeq +8 -> 30
    //   25: ldc -12
    //   27: invokestatic 246	com/layer/b/e/a:a	(Ljava/lang/String;)V
    //   30: new 248	com/b/a/r
    //   33: dup
    //   34: aload_0
    //   35: getfield 56	com/layer/b/c/b:buv	Ljava/util/concurrent/ExecutorService;
    //   38: invokespecial 251	com/b/a/r:<init>	(Ljava/util/concurrent/ExecutorService;)V
    //   41: astore_2
    //   42: aload_2
    //   43: aload_0
    //   44: getfield 54	com/layer/b/c/b:bpE	I
    //   47: invokevirtual 254	com/b/a/r:a	(I)V
    //   50: aload_2
    //   51: aload_0
    //   52: getfield 54	com/layer/b/c/b:bpE	I
    //   55: invokevirtual 256	com/b/a/r:b	(I)V
    //   58: new 258	com/b/a/o
    //   61: dup
    //   62: iconst_1
    //   63: ldc2_w 259
    //   66: aload_0
    //   67: getfield 262	com/layer/b/c/b:buA	Lcom/b/a/n;
    //   70: invokespecial 265	com/b/a/o:<init>	(IJLcom/b/a/n;)V
    //   73: astore_3
    //   74: new 232	com/b/a/x
    //   77: dup
    //   78: invokespecial 266	com/b/a/x:<init>	()V
    //   81: aload_1
    //   82: invokevirtual 269	com/b/a/x:a	(Ljavax/net/ssl/SSLSocketFactory;)Lcom/b/a/x;
    //   85: aload_2
    //   86: invokevirtual 272	com/b/a/x:a	(Lcom/b/a/r;)Lcom/b/a/x;
    //   89: aload_3
    //   90: invokevirtual 275	com/b/a/x:b	(Lcom/b/a/o;)Lcom/b/a/x;
    //   93: iconst_2
    //   94: anewarray 277	com/b/a/y
    //   97: dup
    //   98: iconst_0
    //   99: getstatic 281	com/b/a/y:bJL	Lcom/b/a/y;
    //   102: aastore
    //   103: dup
    //   104: iconst_1
    //   105: getstatic 284	com/b/a/y:bMk	Lcom/b/a/y;
    //   108: aastore
    //   109: invokestatic 290	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   112: invokevirtual 294	com/b/a/x:x	(Ljava/util/List;)Lcom/b/a/x;
    //   115: invokevirtual 298	com/b/a/x:Af	()Lcom/b/a/x;
    //   118: astore_1
    //   119: aload_1
    //   120: getstatic 43	com/layer/b/c/b:g	J
    //   123: getstatic 70	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   126: invokevirtual 301	com/b/a/x:b	(JLjava/util/concurrent/TimeUnit;)V
    //   129: aload_1
    //   130: getstatic 70	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   133: invokevirtual 304	com/b/a/x:a	(Ljava/util/concurrent/TimeUnit;)V
    //   136: aload_1
    //   137: ldc2_w 305
    //   140: getstatic 70	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   143: invokevirtual 308	com/b/a/x:a	(JLjava/util/concurrent/TimeUnit;)V
    //   146: aload_0
    //   147: aload_1
    //   148: putfield 180	com/layer/b/c/b:buw	Lcom/b/a/x;
    //   151: aload_0
    //   152: getfield 180	com/layer/b/c/b:buw	Lcom/b/a/x;
    //   155: astore_1
    //   156: aload_0
    //   157: monitorexit
    //   158: aload_1
    //   159: areturn
    //   160: iconst_2
    //   161: invokestatic 109	com/layer/b/e/a:a	(I)Z
    //   164: ifeq +9 -> 173
    //   167: ldc_w 310
    //   170: invokestatic 246	com/layer/b/e/a:a	(Ljava/lang/String;)V
    //   173: aload_0
    //   174: getfield 180	com/layer/b/c/b:buw	Lcom/b/a/x;
    //   177: aload_1
    //   178: invokevirtual 269	com/b/a/x:a	(Ljavax/net/ssl/SSLSocketFactory;)Lcom/b/a/x;
    //   181: pop
    //   182: aload_0
    //   183: getfield 180	com/layer/b/c/b:buw	Lcom/b/a/x;
    //   186: invokevirtual 314	com/b/a/x:Ag	()Lcom/b/a/o;
    //   189: invokevirtual 317	com/b/a/o:d	()V
    //   192: goto -41 -> 151
    //   195: astore_1
    //   196: aload_0
    //   197: monitorexit
    //   198: aload_1
    //   199: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	200	0	this	b
    //   0	200	1	paramd	d
    //   41	45	2	localr	com.b.a.r
    //   73	17	3	localo	o
    // Exception table:
    //   from	to	target	type
    //   2	30	195	finally
    //   30	151	195	finally
    //   151	156	195	finally
    //   160	173	195	finally
    //   173	192	195	finally
  }
  
  private static void a(aa.a parama, Map<String, List<String>> paramMap)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      Iterator localIterator = ((List)localEntry.getValue()).iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        parama.Q((String)localEntry.getKey(), str);
      }
    }
  }
  
  public static boolean a(ac paramac)
  {
    return paramac.a("WWW-Authenticate") != null;
  }
  
  public final ac a(ac paramac, boolean paramBoolean)
  {
    if (paramac.c() == 401)
    {
      if ((a(paramac)) && (paramBoolean)) {
        this.buz.b(paramac.a("WWW-Authenticate"));
      }
      return paramac;
    }
    this.buz.a(paramac.Ao());
    return paramac;
  }
  
  public final ac a(URL paramURL, String paramString, Map<String, List<String>> paramMap)
    throws IOException
  {
    return a(paramURL, paramString, paramMap, true);
  }
  
  public final ac a(URL paramURL, String paramString, Map<String, List<String>> paramMap, ab paramab)
    throws IOException
  {
    return b(paramURL, a.buE, paramString, paramMap, paramab);
  }
  
  public final ac a(URL paramURL, String paramString, Map<String, List<String>> paramMap, boolean paramBoolean)
    throws IOException
  {
    return a(paramURL, a.buB, paramString, paramMap, null, 1, paramBoolean);
  }
  
  public final h a(URL paramURL, a parama, String paramString, Map<String, List<String>> paramMap, ab paramab, i parami)
    throws IOException
  {
    paramURL = a(paramURL, parama, paramString, paramMap, paramab);
    paramURL.b(parami);
    return paramURL;
  }
  
  public final h a(URL paramURL, a parama, String paramString, Map<String, List<String>> paramMap, z paramz, i parami)
    throws IOException
  {
    if (this.buw == null) {
      throw new IllegalStateException("Not connected");
    }
    x localx = this.buw.Ah();
    localx.b(0L, TimeUnit.MILLISECONDS);
    paramURL = a(paramURL, parama, paramString, paramMap, null, paramz, localx);
    paramURL.b(parami);
    return paramURL;
  }
  
  public final h a(URL paramURL, String paramString, Map<String, List<String>> paramMap, ab paramab, i parami)
    throws IOException
  {
    return a(paramURL, a.buE, paramString, paramMap, paramab, parami);
  }
  
  public final h a(URL paramURL, String paramString, Map<String, List<String>> paramMap, i parami)
    throws IOException
  {
    return a(paramURL, a.buB, paramString, paramMap, null, parami);
  }
  
  public final void a()
    throws IOException
  {
    a(this.buz.wO());
    if ((this.buw != null) && (this.bux != null)) {
      this.buw.b(this.bux);
    }
  }
  
  public final void a(n paramn)
  {
    this.buA = paramn;
  }
  
  public final void a(HostnameVerifier paramHostnameVerifier)
  {
    this.bux = paramHostnameVerifier;
    if (this.buw != null) {
      this.buw.b(paramHostnameVerifier);
    }
  }
  
  public final ac b(URL paramURL, a parama, String paramString, Map<String, List<String>> paramMap, ab paramab)
    throws IOException
  {
    return a(paramURL, parama, paramString, paramMap, paramab, 1, false);
  }
  
  public final ac b(URL paramURL, String paramString, Map<String, List<String>> paramMap)
    throws IOException
  {
    return b(paramURL, a.buF, paramString, paramMap, null);
  }
  
  public final void b()
  {
    if ((this.buw != null) && (this.buw.Ag() != null)) {
      this.buw.Ag().d();
    }
  }
  
  public final Integer wU()
  {
    if ((this.buw != null) && (this.buw.Ag() != null)) {
      return Integer.valueOf(this.buw.Ag().c());
    }
    return null;
  }
  
  public static enum a
  {
    private a() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/c/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */