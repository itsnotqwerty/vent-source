package okhttp3;

import d.h;
import d.l;
import d.r;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.a.b;
import okhttp3.internal.a.d.a;
import okhttp3.internal.a.d.c;
import okhttp3.internal.c.k;
import okhttp3.internal.f.a;

public final class c
  implements Closeable, Flushable
{
  final okhttp3.internal.a.f cWc = new okhttp3.internal.a.f()
  {
    public final b a(y paramAnonymousy)
      throws IOException
    {
      return c.this.a(paramAnonymousy);
    }
    
    public final y a(w paramAnonymousw)
      throws IOException
    {
      return c.this.a(paramAnonymousw);
    }
    
    public final void a(okhttp3.internal.a.c paramAnonymousc)
    {
      c.this.a(paramAnonymousc);
    }
    
    public final void a(y paramAnonymousy1, y paramAnonymousy2)
    {
      c.c localc = new c.c(paramAnonymousy2);
      paramAnonymousy2 = ((c.b)paramAnonymousy1.cZu).cWl;
      paramAnonymousy1 = null;
      try
      {
        paramAnonymousy2 = paramAnonymousy2.cZW.c(paramAnonymousy2.key, paramAnonymousy2.sequenceNumber);
        if (paramAnonymousy2 != null)
        {
          paramAnonymousy1 = paramAnonymousy2;
          localc.b(paramAnonymousy2);
          paramAnonymousy1 = paramAnonymousy2;
          paramAnonymousy2.commit();
        }
        return;
      }
      catch (IOException paramAnonymousy2)
      {
        c.a(paramAnonymousy1);
      }
    }
    
    public final void b(w paramAnonymousw)
      throws IOException
    {
      c.this.b(paramAnonymousw);
    }
    
    public final void trackConditionalCacheHit()
    {
      c.this.trackConditionalCacheHit();
    }
  };
  public final okhttp3.internal.a.d cWd;
  private int hitCount;
  private int networkCount;
  private int requestCount;
  int writeAbortCount;
  int writeSuccessCount;
  
  public c(File paramFile)
  {
    this(paramFile, a.dbK);
  }
  
  private c(File paramFile, a parama)
  {
    this.cWd = okhttp3.internal.a.d.a(parama, paramFile);
  }
  
  static int a(d.e parame)
    throws IOException
  {
    long l;
    try
    {
      l = parame.Kw();
      parame = parame.Kz();
      if ((l < 0L) || (l > 2147483647L) || (!parame.isEmpty())) {
        throw new IOException("expected an int but was \"" + l + parame + "\"");
      }
    }
    catch (NumberFormatException parame)
    {
      throw new IOException(parame.getMessage());
    }
    return (int)l;
  }
  
  private static String a(q paramq)
  {
    return d.f.fG(paramq.toString()).Nl().KJ();
  }
  
  static void a(@Nullable d.a parama)
  {
    if (parama != null) {}
    try
    {
      parama.abort();
      return;
    }
    catch (IOException parama) {}
  }
  
  /* Error */
  @Nullable
  final b a(y paramy)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 139	okhttp3/y:cZt	Lokhttp3/w;
    //   4: getfield 145	okhttp3/w:method	Ljava/lang/String;
    //   7: astore_2
    //   8: aload_1
    //   9: getfield 139	okhttp3/y:cZt	Lokhttp3/w;
    //   12: getfield 145	okhttp3/w:method	Ljava/lang/String;
    //   15: invokestatic 151	okhttp3/internal/c/f:invalidatesCache	(Ljava/lang/String;)Z
    //   18: ifeq +13 -> 31
    //   21: aload_0
    //   22: aload_1
    //   23: getfield 139	okhttp3/y:cZt	Lokhttp3/w;
    //   26: invokevirtual 154	okhttp3/c:b	(Lokhttp3/w;)V
    //   29: aconst_null
    //   30: areturn
    //   31: aload_2
    //   32: ldc -100
    //   34: invokevirtual 160	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   37: ifeq -8 -> 29
    //   40: aload_1
    //   41: invokestatic 166	okhttp3/internal/c/e:g	(Lokhttp3/y;)Z
    //   44: ifne -15 -> 29
    //   47: new 22	okhttp3/c$c
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 169	okhttp3/c$c:<init>	(Lokhttp3/y;)V
    //   55: astore_2
    //   56: aload_0
    //   57: getfield 60	okhttp3/c:cWd	Lokhttp3/internal/a/d;
    //   60: aload_1
    //   61: getfield 139	okhttp3/y:cZt	Lokhttp3/w;
    //   64: getfield 173	okhttp3/w:cVX	Lokhttp3/q;
    //   67: invokestatic 175	okhttp3/c:a	(Lokhttp3/q;)Ljava/lang/String;
    //   70: ldc2_w 176
    //   73: invokevirtual 180	okhttp3/internal/a/d:c	(Ljava/lang/String;J)Lokhttp3/internal/a/d$a;
    //   76: astore_1
    //   77: aload_1
    //   78: ifnull -49 -> 29
    //   81: aload_2
    //   82: aload_1
    //   83: invokevirtual 182	okhttp3/c$c:b	(Lokhttp3/internal/a/d$a;)V
    //   86: new 12	okhttp3/c$a
    //   89: dup
    //   90: aload_0
    //   91: aload_1
    //   92: invokespecial 185	okhttp3/c$a:<init>	(Lokhttp3/c;Lokhttp3/internal/a/d$a;)V
    //   95: astore_2
    //   96: aload_2
    //   97: areturn
    //   98: astore_1
    //   99: aconst_null
    //   100: astore_1
    //   101: aload_1
    //   102: invokestatic 187	okhttp3/c:a	(Lokhttp3/internal/a/d$a;)V
    //   105: aconst_null
    //   106: areturn
    //   107: astore_2
    //   108: goto -7 -> 101
    //   111: astore_1
    //   112: aconst_null
    //   113: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	c
    //   0	114	1	paramy	y
    //   7	90	2	localObject	Object
    //   107	1	2	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   56	77	98	java/io/IOException
    //   81	96	107	java/io/IOException
    //   21	29	111	java/io/IOException
  }
  
  @Nullable
  final y a(w paramw)
  {
    int j = 0;
    Object localObject1 = a(paramw.cVX);
    try
    {
      localObject1 = this.cWd.fC((String)localObject1);
      if (localObject1 == null) {
        return null;
      }
      try
      {
        c localc = new c(localObject1.daa[0]);
        String str1 = localc.cWr.get("Content-Type");
        String str2 = localc.cWr.get("Content-Length");
        Object localObject2 = new w.a().fy(localc.url).a(localc.requestMethod, null).b(localc.cWp).MH();
        y.a locala = new y.a();
        locala.cZt = ((w)localObject2);
        locala.cWq = localc.cWq;
        locala.code = localc.code;
        locala.message = localc.message;
        localObject2 = locala.c(localc.cWr);
        ((y.a)localObject2).cZu = new b((d.c)localObject1, str1, str2);
        ((y.a)localObject2).cWs = localc.cWs;
        ((y.a)localObject2).sentRequestAtMillis = localc.sentRequestMillis;
        ((y.a)localObject2).receivedResponseAtMillis = localc.receivedResponseMillis;
        localObject1 = ((y.a)localObject2).MJ();
        int i = j;
        if (localc.url.equals(paramw.cVX.toString()))
        {
          i = j;
          if (localc.requestMethod.equals(paramw.method))
          {
            i = j;
            if (okhttp3.internal.c.e.a((y)localObject1, localc.cWp, paramw)) {
              i = 1;
            }
          }
        }
        if (i == 0)
        {
          okhttp3.internal.c.closeQuietly(((y)localObject1).cZu);
          return null;
        }
      }
      catch (IOException paramw)
      {
        okhttp3.internal.c.closeQuietly((Closeable)localObject1);
        return null;
      }
      return (y)localObject1;
    }
    catch (IOException paramw) {}
    return null;
  }
  
  /* Error */
  final void a(okhttp3.internal.a.c paramc)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield 304	okhttp3/c:requestCount	I
    //   7: iconst_1
    //   8: iadd
    //   9: putfield 304	okhttp3/c:requestCount	I
    //   12: aload_1
    //   13: getfield 309	okhttp3/internal/a/c:cZT	Lokhttp3/w;
    //   16: ifnull +16 -> 32
    //   19: aload_0
    //   20: aload_0
    //   21: getfield 311	okhttp3/c:networkCount	I
    //   24: iconst_1
    //   25: iadd
    //   26: putfield 311	okhttp3/c:networkCount	I
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_1
    //   33: getfield 315	okhttp3/internal/a/c:cZw	Lokhttp3/y;
    //   36: ifnull -7 -> 29
    //   39: aload_0
    //   40: aload_0
    //   41: getfield 317	okhttp3/c:hitCount	I
    //   44: iconst_1
    //   45: iadd
    //   46: putfield 317	okhttp3/c:hitCount	I
    //   49: goto -20 -> 29
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	c
    //   0	57	1	paramc	okhttp3.internal.a.c
    // Exception table:
    //   from	to	target	type
    //   2	29	52	finally
    //   32	49	52	finally
  }
  
  final void b(w paramw)
    throws IOException
  {
    this.cWd.remove(a(paramw.cVX));
  }
  
  public final void close()
    throws IOException
  {
    this.cWd.close();
  }
  
  public final void flush()
    throws IOException
  {
    this.cWd.flush();
  }
  
  final void trackConditionalCacheHit()
  {
    try
    {
      this.hitCount += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private final class a
    implements b
  {
    private final d.a cWf;
    private r cWg;
    private r cWh;
    boolean done;
    
    a(final d.a parama)
    {
      this.cWf = parama;
      this.cWg = parama.fP(1);
      this.cWh = new d.g(this.cWg)
      {
        public final void close()
          throws IOException
        {
          synchronized (c.this)
          {
            if (c.a.this.done) {
              return;
            }
            c.a.this.done = true;
            c localc2 = c.this;
            localc2.writeSuccessCount += 1;
            super.close();
            parama.commit();
            return;
          }
        }
      };
    }
    
    public final r LW()
    {
      return this.cWh;
    }
    
    public final void abort()
    {
      synchronized (c.this)
      {
        if (this.done) {
          return;
        }
        this.done = true;
        c localc2 = c.this;
        localc2.writeAbortCount += 1;
        okhttp3.internal.c.closeQuietly(this.cWg);
        try
        {
          this.cWf.abort();
          return;
        }
        catch (IOException localIOException) {}
      }
    }
  }
  
  private static final class b
    extends z
  {
    final d.c cWl;
    private final d.e cWm;
    @Nullable
    private final String contentLength;
    @Nullable
    private final String contentType;
    
    b(final d.c paramc, String paramString1, String paramString2)
    {
      this.cWl = paramc;
      this.contentType = paramString1;
      this.contentLength = paramString2;
      this.cWm = l.b(new h(paramc.daa[1])
      {
        public final void close()
          throws IOException
        {
          paramc.close();
          super.close();
        }
      });
    }
    
    public final s LX()
    {
      if (this.contentType != null) {
        return s.fw(this.contentType);
      }
      return null;
    }
    
    public final d.e LY()
    {
      return this.cWm;
    }
    
    public final long contentLength()
    {
      long l = -1L;
      try
      {
        if (this.contentLength != null) {
          l = Long.parseLong(this.contentLength);
        }
        return l;
      }
      catch (NumberFormatException localNumberFormatException) {}
      return -1L;
    }
  }
  
  private static final class c
  {
    private static final String RECEIVED_MILLIS = okhttp3.internal.g.f.getPrefix() + "-Received-Millis";
    private static final String SENT_MILLIS;
    final p cWp;
    final u cWq;
    final p cWr;
    @Nullable
    final o cWs;
    final int code;
    final String message;
    final long receivedResponseMillis;
    final String requestMethod;
    final long sentRequestMillis;
    final String url;
    
    static
    {
      StringBuilder localStringBuilder = new StringBuilder();
      okhttp3.internal.g.f.Ng();
      SENT_MILLIS = okhttp3.internal.g.f.getPrefix() + "-Sent-Millis";
      localStringBuilder = new StringBuilder();
      okhttp3.internal.g.f.Ng();
    }
    
    c(d.s params)
      throws IOException
    {
      for (;;)
      {
        try
        {
          d.e locale1 = l.b(params);
          this.url = locale1.Kz();
          this.requestMethod = locale1.Kz();
          localObject1 = new p.a();
          int k = c.a(locale1);
          int i = 0;
          if (i < k)
          {
            ((p.a)localObject1).fr(locale1.Kz());
            i += 1;
            continue;
          }
          this.cWp = ((p.a)localObject1).MB();
          localObject1 = k.fD(locale1.Kz());
          this.cWq = ((k)localObject1).cWq;
          this.code = ((k)localObject1).code;
          this.message = ((k)localObject1).message;
          localObject1 = new p.a();
          k = c.a(locale1);
          i = j;
          if (i < k)
          {
            ((p.a)localObject1).fr(locale1.Kz());
            i += 1;
            continue;
          }
          localObject2 = ((p.a)localObject1).get(SENT_MILLIS);
          localObject3 = ((p.a)localObject1).get(RECEIVED_MILLIS);
          ((p.a)localObject1).fs(SENT_MILLIS);
          ((p.a)localObject1).fs(RECEIVED_MILLIS);
          if (localObject2 != null)
          {
            l1 = Long.parseLong((String)localObject2);
            this.sentRequestMillis = l1;
            l1 = l2;
            if (localObject3 != null) {
              l1 = Long.parseLong((String)localObject3);
            }
            this.receivedResponseMillis = l1;
            this.cWr = ((p.a)localObject1).MB();
            if (!isHttps()) {
              break label449;
            }
            localObject1 = locale1.Kz();
            if (((String)localObject1).length() <= 0) {
              break;
            }
            throw new IOException("expected \"\" but was \"" + (String)localObject1 + "\"");
          }
        }
        finally
        {
          params.close();
        }
        long l1 = 0L;
      }
      Object localObject1 = g.fq(locale2.Kz());
      Object localObject2 = b(locale2);
      Object localObject3 = b(locale2);
      if (!locale2.Kr()) {}
      for (ab localab = ab.fA(locale2.Kz()); localab == null; localab = ab.cZE) {
        throw new NullPointerException("tlsVersion == null");
      }
      if (localObject1 == null) {
        throw new NullPointerException("cipherSuite == null");
      }
      label449:
      for (this.cWs = new o(localab, (g)localObject1, okhttp3.internal.c.immutableList((List)localObject2), okhttp3.internal.c.immutableList((List)localObject3));; this.cWs = null)
      {
        params.close();
        return;
      }
    }
    
    c(y paramy)
    {
      this.url = paramy.cZt.cVX.toString();
      this.cWp = okhttp3.internal.c.e.h(paramy);
      this.requestMethod = paramy.cZt.method;
      this.cWq = paramy.cWq;
      this.code = paramy.code;
      this.message = paramy.message;
      this.cWr = paramy.cZo;
      this.cWs = paramy.cWs;
      this.sentRequestMillis = paramy.sentRequestAtMillis;
      this.receivedResponseMillis = paramy.receivedResponseAtMillis;
    }
    
    private static void a(d.d paramd, List<Certificate> paramList)
      throws IOException
    {
      try
      {
        paramd.aD(paramList.size()).gb(10);
        int j = paramList.size();
        int i = 0;
        while (i < j)
        {
          paramd.fF(d.f.R(((Certificate)paramList.get(i)).getEncoded()).KF()).gb(10);
          i += 1;
        }
        return;
      }
      catch (CertificateEncodingException paramd)
      {
        throw new IOException(paramd.getMessage());
      }
    }
    
    /* Error */
    private static List<Certificate> b(d.e parame)
      throws IOException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokestatic 85	okhttp3/c:a	(Ld/e;)I
      //   4: istore_2
      //   5: iload_2
      //   6: iconst_m1
      //   7: if_icmpne +9 -> 16
      //   10: invokestatic 286	java/util/Collections:emptyList	()Ljava/util/List;
      //   13: astore_3
      //   14: aload_3
      //   15: areturn
      //   16: ldc_w 288
      //   19: invokestatic 294	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
      //   22: astore 5
      //   24: new 296	java/util/ArrayList
      //   27: dup
      //   28: iload_2
      //   29: invokespecial 299	java/util/ArrayList:<init>	(I)V
      //   32: astore 4
      //   34: iconst_0
      //   35: istore_1
      //   36: aload 4
      //   38: astore_3
      //   39: iload_1
      //   40: iload_2
      //   41: if_icmpge -27 -> 14
      //   44: aload_0
      //   45: invokeinterface 74 1 0
      //   50: astore_3
      //   51: new 301	d/c
      //   54: dup
      //   55: invokespecial 302	d/c:<init>	()V
      //   58: astore 6
      //   60: aload 6
      //   62: aload_3
      //   63: invokestatic 306	d/f:fI	(Ljava/lang/String;)Ld/f;
      //   66: invokevirtual 310	d/c:d	(Ld/f;)Ld/c;
      //   69: pop
      //   70: aload 4
      //   72: aload 5
      //   74: aload 6
      //   76: invokevirtual 314	d/c:Ks	()Ljava/io/InputStream;
      //   79: invokevirtual 318	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
      //   82: invokeinterface 322 2 0
      //   87: pop
      //   88: iload_1
      //   89: iconst_1
      //   90: iadd
      //   91: istore_1
      //   92: goto -56 -> 36
      //   95: astore_0
      //   96: new 62	java/io/IOException
      //   99: dup
      //   100: aload_0
      //   101: invokevirtual 323	java/security/cert/CertificateException:getMessage	()Ljava/lang/String;
      //   104: invokespecial 147	java/io/IOException:<init>	(Ljava/lang/String;)V
      //   107: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	108	0	parame	d.e
      //   35	57	1	i	int
      //   4	38	2	j	int
      //   13	50	3	localObject	Object
      //   32	39	4	localArrayList	java.util.ArrayList
      //   22	51	5	localCertificateFactory	java.security.cert.CertificateFactory
      //   58	17	6	localc	d.c
      // Exception table:
      //   from	to	target	type
      //   16	34	95	java/security/cert/CertificateException
      //   44	88	95	java/security/cert/CertificateException
    }
    
    private boolean isHttps()
    {
      return this.url.startsWith("https://");
    }
    
    public final void b(d.a parama)
      throws IOException
    {
      int j = 0;
      parama = l.a(parama.fP(0));
      parama.fF(this.url).gb(10);
      parama.fF(this.requestMethod).gb(10);
      parama.aD(this.cWp.namesAndValues.length / 2).gb(10);
      int k = this.cWp.namesAndValues.length / 2;
      int i = 0;
      while (i < k)
      {
        parama.fF(this.cWp.name(i)).fF(": ").fF(this.cWp.value(i)).gb(10);
        i += 1;
      }
      parama.fF(new k(this.cWq, this.code, this.message).toString()).gb(10);
      parama.aD(this.cWr.namesAndValues.length / 2 + 2).gb(10);
      k = this.cWr.namesAndValues.length / 2;
      i = j;
      while (i < k)
      {
        parama.fF(this.cWr.name(i)).fF(": ").fF(this.cWr.value(i)).gb(10);
        i += 1;
      }
      parama.fF(SENT_MILLIS).fF(": ").aD(this.sentRequestMillis).gb(10);
      parama.fF(RECEIVED_MILLIS).fF(": ").aD(this.receivedResponseMillis).gb(10);
      if (isHttps())
      {
        parama.gb(10);
        parama.fF(this.cWs.cYR.javaName).gb(10);
        a(parama, this.cWs.peerCertificates);
        a(parama, this.cWs.localCertificates);
        parama.fF(this.cWs.cYQ.javaName).gb(10);
      }
      parama.close();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */