package com.b.a;

import com.b.a.a.a.q;
import com.b.a.a.a.q.a;
import com.b.a.a.a.t;
import com.b.a.a.b.l;
import com.b.a.a.b.n;
import com.b.a.a.b.n.a;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownServiceException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public class x
  implements Cloneable
{
  private static final List<y> a = com.b.a.a.i.c(new y[] { y.bMl, y.bJL, y.bMk });
  private static final List<p> b = com.b.a.a.i.c(new p[] { p.bLL, p.bLM, p.bLN });
  private static SSLSocketFactory bLU;
  final List<v> bCF = new ArrayList();
  public ProxySelector bFR;
  public Proxy bJE;
  final com.b.a.a.h bLV;
  public r bLW;
  public CookieHandler bLX;
  com.b.a.a.c bLY;
  private f bLZ;
  public SocketFactory bMa;
  public SSLSocketFactory bMb;
  public HostnameVerifier bMc;
  public j bMd;
  public e bMe;
  public o bMf;
  private com.b.a.a.e bMg;
  public boolean bMh = true;
  public boolean bMi = true;
  int bMj;
  public List<y> bzR;
  public List<p> bzS;
  public final List<v> j = new ArrayList();
  public boolean v = true;
  int y;
  public int z;
  
  static
  {
    com.b.a.a.b.bIs = new com.b.a.a.b()
    {
      public final t a(m paramAnonymousm, com.b.a.a.a.g paramAnonymousg)
        throws IOException
      {
        if (paramAnonymousm.bIk != null) {
          return new com.b.a.a.a.r(paramAnonymousg, paramAnonymousm.bIk);
        }
        return new com.b.a.a.a.i(paramAnonymousg, paramAnonymousm.bIj);
      }
      
      public final com.b.a.a.c a(x paramAnonymousx)
      {
        return paramAnonymousx.bLY;
      }
      
      public final void a(m paramAnonymousm, y paramAnonymousy)
      {
        if (paramAnonymousy == null) {
          throw new IllegalArgumentException("protocol == null");
        }
        paramAnonymousm.bIl = paramAnonymousy;
      }
      
      public final void a(m paramAnonymousm, Object paramAnonymousObject)
        throws IOException
      {
        if (paramAnonymousm.k()) {
          throw new IllegalStateException();
        }
        synchronized (paramAnonymousm.bIf)
        {
          if (paramAnonymousm.buh != paramAnonymousObject) {
            return;
          }
          paramAnonymousm.buh = null;
          paramAnonymousm.bIi.close();
          return;
        }
      }
      
      public final void a(o paramAnonymouso, m paramAnonymousm)
      {
        if ((!paramAnonymousm.k()) && (paramAnonymousm.a()))
        {
          if (!paramAnonymousm.e()) {
            com.b.a.a.i.a(paramAnonymousm.bIi);
          }
        }
        else {
          return;
        }
        try
        {
          com.b.a.a.g.zw().b(paramAnonymousm.bIi);
          try
          {
            paramAnonymouso.a(paramAnonymousm);
            paramAnonymousm.bCG += 1;
            if (paramAnonymousm.bIk != null) {
              throw new IllegalStateException("spdyConnection != null");
            }
          }
          finally {}
          paramAnonymousm.i = System.nanoTime();
        }
        catch (SocketException paramAnonymouso)
        {
          com.b.a.a.g.zw();
          com.b.a.a.g.a("Unable to untagSocket(): " + paramAnonymouso);
          com.b.a.a.i.a(paramAnonymousm.bIi);
          return;
        }
      }
      
      public final void a(p paramAnonymousp, SSLSocket paramAnonymousSSLSocket, boolean paramAnonymousBoolean)
      {
        Object localObject = null;
        if (paramAnonymousp.bLO != null)
        {
          localObject = paramAnonymousSSLSocket.getEnabledCipherSuites();
          localObject = (String[])com.b.a.a.i.a(String.class, paramAnonymousp.bLO, (Object[])localObject);
        }
        String[] arrayOfString;
        if ((paramAnonymousBoolean) && (Arrays.asList(paramAnonymousSSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV"))) {
          if (localObject != null)
          {
            arrayOfString = new String[localObject.length + 1];
            System.arraycopy(localObject, 0, arrayOfString, 0, localObject.length);
            arrayOfString[(arrayOfString.length - 1)] = "TLS_FALLBACK_SCSV";
            localObject = arrayOfString;
          }
        }
        for (;;)
        {
          arrayOfString = paramAnonymousSSLSocket.getEnabledProtocols();
          arrayOfString = (String[])com.b.a.a.i.a(String.class, paramAnonymousp.h, arrayOfString);
          paramAnonymousp = new p.a(paramAnonymousp).e((String[])localObject).f(arrayOfString).zZ();
          paramAnonymousSSLSocket.setEnabledProtocols(paramAnonymousp.h);
          paramAnonymousp = paramAnonymousp.bLO;
          if (paramAnonymousp != null) {
            paramAnonymousSSLSocket.setEnabledCipherSuites(paramAnonymousp);
          }
          return;
          localObject = paramAnonymousSSLSocket.getEnabledCipherSuites();
          break;
        }
      }
      
      public final void a(t.a paramAnonymousa, String paramAnonymousString)
      {
        int i = paramAnonymousString.indexOf(":", 1);
        if (i != -1)
        {
          paramAnonymousa.N(paramAnonymousString.substring(0, i), paramAnonymousString.substring(i + 1));
          return;
        }
        if (paramAnonymousString.startsWith(":"))
        {
          paramAnonymousa.N("", paramAnonymousString.substring(1));
          return;
        }
        paramAnonymousa.N("", paramAnonymousString);
      }
      
      public final void a(x paramAnonymousx, m paramAnonymousm, com.b.a.a.a.g paramAnonymousg, aa paramAnonymousaa)
        throws com.b.a.a.a.o
      {
        paramAnonymousm.a(paramAnonymousg);
        int i;
        int j;
        if (!paramAnonymousm.e)
        {
          paramAnonymousg = paramAnonymousm.bIg.bFS.j;
          i = paramAnonymousx.y;
          j = paramAnonymousx.z;
          int k = paramAnonymousx.bMj;
          boolean bool = paramAnonymousx.bMi;
          if (paramAnonymousm.e) {
            throw new IllegalStateException("already connected");
          }
          q localq = new q(paramAnonymousm, paramAnonymousm.bIf);
          if (paramAnonymousm.bIg.bFS.bFN != null) {
            paramAnonymousg = localq.a(i, j, k, paramAnonymousaa, paramAnonymousm.bIg, paramAnonymousg, bool);
          }
          for (;;)
          {
            paramAnonymousm.bIi = paramAnonymousg.bJK;
            paramAnonymousm.bIm = paramAnonymousg.bJM;
            if (paramAnonymousg.bJL == null)
            {
              paramAnonymousg = (y)paramAnonymousm.bIg.bFS.bCF.get(0);
              paramAnonymousm.bIl = paramAnonymousg;
              label161:
              paramAnonymousm.bIl = paramAnonymousg;
            }
            try
            {
              if ((paramAnonymousm.bIl == y.bJL) || (paramAnonymousm.bIl == y.bMl))
              {
                paramAnonymousm.bIi.setSoTimeout(0);
                paramAnonymousg = new n.a(paramAnonymousm.bIg.bFS.b, paramAnonymousm.bIi);
                paramAnonymousg.bLu = paramAnonymousm.bIl;
                paramAnonymousm.bIk = new n(paramAnonymousg, (byte)0);
                paramAnonymousg = paramAnonymousm.bIk;
                paramAnonymousg.bLl.a();
                paramAnonymousg.bLl.b(paramAnonymousg.bLg);
                i = paramAnonymousg.bLg.zS();
                if (i != 65536) {
                  paramAnonymousg.bLl.g(0, i - 65536);
                }
              }
              for (;;)
              {
                paramAnonymousm.e = true;
                if (!paramAnonymousm.k()) {
                  break label456;
                }
                paramAnonymousg = paramAnonymousx.bMf;
                if (paramAnonymousm.k()) {
                  break label440;
                }
                throw new IllegalArgumentException();
                if (!paramAnonymousg.contains(p.bLN)) {
                  throw new com.b.a.a.a.o(new UnknownServiceException("CLEARTEXT communication not supported: " + paramAnonymousg));
                }
                paramAnonymousg = paramAnonymousm.bIg;
                paramAnonymousg = new q.a(paramAnonymousg, q.a(j, i, paramAnonymousg));
                break;
                paramAnonymousg = paramAnonymousg.bJL;
                break label161;
                paramAnonymousm.bIj = new com.b.a.a.a.e(paramAnonymousm.bIf, paramAnonymousm, paramAnonymousm.bIi);
              }
              if (!paramAnonymousm.e()) {
                break label456;
              }
            }
            catch (IOException paramAnonymousx)
            {
              throw new com.b.a.a.a.o(paramAnonymousx);
            }
          }
        }
        try
        {
          label440:
          paramAnonymousg.a(paramAnonymousm);
          label456:
          paramAnonymousx.bLV.b(paramAnonymousm.bIg);
          i = paramAnonymousx.z;
          j = paramAnonymousx.bMj;
          if (!paramAnonymousm.e) {
            throw new IllegalStateException("setTimeouts - not connected");
          }
        }
        finally {}
        if (paramAnonymousm.bIj != null) {}
        try
        {
          paramAnonymousm.bIi.setSoTimeout(i);
          paramAnonymousm.bIj.aA(i, j);
          return;
        }
        catch (IOException paramAnonymousx)
        {
          throw new com.b.a.a.a.o(paramAnonymousx);
        }
      }
      
      public final com.b.a.a.h b(x paramAnonymousx)
      {
        return paramAnonymousx.bLV;
      }
      
      public final void b(m paramAnonymousm, com.b.a.a.a.g paramAnonymousg)
      {
        paramAnonymousm.a(paramAnonymousg);
      }
      
      public final boolean b(m paramAnonymousm)
      {
        return paramAnonymousm.a();
      }
      
      public final int c(m paramAnonymousm)
      {
        return paramAnonymousm.bCG;
      }
      
      public final com.b.a.a.e c(x paramAnonymousx)
      {
        return x.d(paramAnonymousx);
      }
      
      public final boolean d(m paramAnonymousm)
      {
        if (paramAnonymousm.bIj != null) {
          return paramAnonymousm.bIj.f();
        }
        return true;
      }
    };
  }
  
  public x()
  {
    this.bLV = new com.b.a.a.h();
    this.bLW = new r();
  }
  
  private x(x paramx)
  {
    this.bLV = paramx.bLV;
    this.bLW = paramx.bLW;
    this.bJE = paramx.bJE;
    this.bzR = paramx.bzR;
    this.bzS = paramx.bzS;
    this.bCF.addAll(paramx.bCF);
    this.j.addAll(paramx.j);
    this.bFR = paramx.bFR;
    this.bLX = paramx.bLX;
    this.bLZ = paramx.bLZ;
    if (this.bLZ != null) {}
    for (com.b.a.a.c localc = this.bLZ.bGa;; localc = paramx.bLY)
    {
      this.bLY = localc;
      this.bMa = paramx.bMa;
      this.bMb = paramx.bMb;
      this.bMc = paramx.bMc;
      this.bMd = paramx.bMd;
      this.bMe = paramx.bMe;
      this.bMf = paramx.bMf;
      this.bMg = paramx.bMg;
      this.v = paramx.v;
      this.bMh = paramx.bMh;
      this.bMi = paramx.bMi;
      this.y = paramx.y;
      this.z = paramx.z;
      this.bMj = paramx.bMj;
      return;
    }
  }
  
  /* Error */
  private SSLSocketFactory Ai()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 177	com/b/a/x:bLU	Ljavax/net/ssl/SSLSocketFactory;
    //   5: astore_1
    //   6: aload_1
    //   7: ifnonnull +23 -> 30
    //   10: ldc -77
    //   12: invokestatic 185	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   15: astore_1
    //   16: aload_1
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual 189	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   23: aload_1
    //   24: invokevirtual 192	javax/net/ssl/SSLContext:getSocketFactory	()Ljavax/net/ssl/SSLSocketFactory;
    //   27: putstatic 177	com/b/a/x:bLU	Ljavax/net/ssl/SSLSocketFactory;
    //   30: getstatic 177	com/b/a/x:bLU	Ljavax/net/ssl/SSLSocketFactory;
    //   33: astore_1
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_1
    //   37: areturn
    //   38: astore_1
    //   39: new 194	java/lang/AssertionError
    //   42: dup
    //   43: invokespecial 195	java/lang/AssertionError:<init>	()V
    //   46: athrow
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	x
    //   5	32	1	localObject1	Object
    //   38	1	1	localGeneralSecurityException	java.security.GeneralSecurityException
    //   47	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   10	30	38	java/security/GeneralSecurityException
    //   2	6	47	finally
    //   10	30	47	finally
    //   30	34	47	finally
    //   39	47	47	finally
  }
  
  private x Aj()
  {
    return new x(this);
  }
  
  public final x Af()
  {
    this.bLZ = null;
    this.bLY = null;
    return this;
  }
  
  public final o Ag()
  {
    return this.bMf;
  }
  
  public final x Ah()
  {
    x localx = Aj();
    if (localx.bFR == null) {
      localx.bFR = ProxySelector.getDefault();
    }
    if (localx.bLX == null) {
      localx.bLX = CookieHandler.getDefault();
    }
    if (localx.bMa == null) {
      localx.bMa = SocketFactory.getDefault();
    }
    if (localx.bMb == null) {
      localx.bMb = Ai();
    }
    if (localx.bMc == null) {
      localx.bMc = com.b.a.a.c.b.bLJ;
    }
    if (localx.bMd == null) {
      localx.bMd = j.bGk;
    }
    if (localx.bMe == null) {
      localx.bMe = com.b.a.a.a.a.bIJ;
    }
    if (localx.bMf == null) {
      localx.bMf = o.zt();
    }
    if (localx.bzR == null) {
      localx.bzR = a;
    }
    if (localx.bzS == null) {
      localx.bzS = b;
    }
    if (localx.bMg == null) {
      localx.bMg = com.b.a.a.e.bIt;
    }
    return localx;
  }
  
  public final x a(r paramr)
  {
    this.bLW = paramr;
    return this;
  }
  
  public final x a(SSLSocketFactory paramSSLSocketFactory)
  {
    this.bMb = paramSSLSocketFactory;
    return this;
  }
  
  public final void a(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("timeout < 0");
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("unit == null");
    }
    long l = paramTimeUnit.toMillis(paramLong);
    if (l > 2147483647L) {
      throw new IllegalArgumentException("Timeout too large.");
    }
    if ((l == 0L) && (paramLong > 0L)) {
      throw new IllegalArgumentException("Timeout too small.");
    }
    this.y = ((int)l);
  }
  
  public final void a(TimeUnit paramTimeUnit)
  {
    if (20000L < 0L) {
      throw new IllegalArgumentException("timeout < 0");
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("unit == null");
    }
    long l = paramTimeUnit.toMillis(20000L);
    if (l > 2147483647L) {
      throw new IllegalArgumentException("Timeout too large.");
    }
    if ((l == 0L) && (20000L > 0L)) {
      throw new IllegalArgumentException("Timeout too small.");
    }
    this.bMj = ((int)l);
  }
  
  public final x b(o paramo)
  {
    this.bMf = paramo;
    return this;
  }
  
  public final x b(HostnameVerifier paramHostnameVerifier)
  {
    this.bMc = paramHostnameVerifier;
    return this;
  }
  
  public final void b(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("timeout < 0");
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("unit == null");
    }
    long l = paramTimeUnit.toMillis(paramLong);
    if (l > 2147483647L) {
      throw new IllegalArgumentException("Timeout too large.");
    }
    if ((l == 0L) && (paramLong > 0L)) {
      throw new IllegalArgumentException("Timeout too small.");
    }
    this.z = ((int)l);
  }
  
  public final h e(aa paramaa)
  {
    return new h(this, paramaa);
  }
  
  public final x x(List<y> paramList)
  {
    paramList = com.b.a.a.i.a(paramList);
    if (!paramList.contains(y.bMk)) {
      throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + paramList);
    }
    if (paramList.contains(y.bJR)) {
      throw new IllegalArgumentException("protocols must not contain http/1.0: " + paramList);
    }
    if (paramList.contains(null)) {
      throw new IllegalArgumentException("protocols must not contain null");
    }
    this.bzR = com.b.a.a.i.a(paramList);
    return this;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */