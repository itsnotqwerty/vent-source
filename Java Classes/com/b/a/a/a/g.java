package com.b.a.a.a;

import b.d;
import b.e;
import b.r;
import b.s;
import com.b.a.a;
import com.b.a.a.i;
import com.b.a.aa;
import com.b.a.ab;
import com.b.a.ac;
import com.b.a.ac.a;
import com.b.a.t.a;
import com.b.a.v;
import com.b.a.v.a;
import com.b.a.w;
import com.b.a.x;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.SocketException;
import java.net.URL;
import java.util.Date;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;

public final class g
{
  public static final com.b.a.b bJb = new com.b.a.b()
  {
    public final long b()
    {
      return 0L;
    }
    
    public final w zo()
    {
      return null;
    }
    
    public final e zp()
    {
      return new b.c();
    }
  };
  public long b = -1L;
  public final x bJc;
  public com.b.a.m bJd;
  public a bJe;
  public p bJf;
  public com.b.a.c bJg;
  public final ac bJh;
  public t bJi;
  public final aa bJj;
  public aa bJk;
  public ac bJl;
  public ac bJm;
  public r bJn;
  public d bJo;
  public b bJp;
  public c bJq;
  public boolean bqW;
  public boolean brj;
  public final boolean c;
  public final boolean s;
  public final boolean t;
  
  public g(x paramx, aa paramaa, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, com.b.a.m paramm, p paramp, ac paramac) {}
  
  public g(x paramx, aa paramaa, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, com.b.a.m paramm, p paramp, n paramn, ac paramac)
  {
    this.bJc = paramx;
    this.bJj = paramaa;
    this.bqW = paramBoolean1;
    this.c = paramBoolean2;
    this.s = paramBoolean3;
    this.t = paramBoolean4;
    this.bJd = paramm;
    this.bJf = paramp;
    this.bJn = paramn;
    this.bJh = paramac;
    if (paramm != null)
    {
      com.b.a.a.b.bIs.b(paramm, this);
      this.bJg = paramm.bIg;
      return;
    }
    this.bJg = null;
  }
  
  public static com.b.a.t a(com.b.a.t paramt1, com.b.a.t paramt2)
    throws IOException
  {
    int j = 0;
    t.a locala = new t.a();
    int k = paramt1.a.length / 2;
    int i = 0;
    while (i < k)
    {
      String str1 = paramt1.dV(i);
      String str2 = paramt1.dW(i);
      if (((!"Warning".equalsIgnoreCase(str1)) || (!str2.startsWith("1"))) && ((!j.a(str1)) || (paramt2.a(str1) == null))) {
        locala.M(str1, str2);
      }
      i += 1;
    }
    k = paramt2.a.length / 2;
    i = j;
    while (i < k)
    {
      paramt1 = paramt2.dV(i);
      if ((!"Content-Length".equalsIgnoreCase(paramt1)) && (j.a(paramt1))) {
        locala.M(paramt1, paramt2.dW(i));
      }
      i += 1;
    }
    return locala.Ac();
  }
  
  public static boolean a(ac paramac)
  {
    if (paramac.bIK.b.equals("HEAD")) {}
    do
    {
      return false;
      int i = paramac.c;
      if (((i < 100) || (i >= 200)) && (i != 204) && (i != 304)) {
        return true;
      }
    } while ((j.i(paramac) == -1L) && (!"chunked".equalsIgnoreCase(paramac.a("Transfer-Encoding"))));
    return true;
  }
  
  public static boolean a(ac paramac1, ac paramac2)
  {
    if (paramac2.c == 304) {}
    do
    {
      return true;
      paramac1 = paramac1.bMy.dH("Last-Modified");
      if (paramac1 == null) {
        break;
      }
      paramac2 = paramac2.bMy.dH("Last-Modified");
    } while ((paramac2 != null) && (paramac2.getTime() < paramac1.getTime()));
    return false;
  }
  
  public static String d(URL paramURL)
  {
    if (i.c(paramURL) != i.dD(paramURL.getProtocol())) {
      return paramURL.getHost() + ":" + paramURL.getPort();
    }
    return paramURL.getHost();
  }
  
  public static ac f(ac paramac)
  {
    ac localac = paramac;
    if (paramac != null)
    {
      localac = paramac;
      if (paramac.bMz != null)
      {
        paramac = paramac.Aq();
        paramac.bMz = null;
        localac = paramac.xb();
      }
    }
    return localac;
  }
  
  public final void a(p paramp, IOException paramIOException)
  {
    if (com.b.a.a.b.bIs.c(this.bJd) > 0) {
      return;
    }
    com.b.a.c localc = this.bJd.bIg;
    if ((localc.bFT.type() != Proxy.Type.DIRECT) && (paramp.bFS.bFR != null)) {
      paramp.bFS.bFR.connectFailed(paramp.bJB, localc.bFT.address(), paramIOException);
    }
    paramp.bJD.a(localc);
  }
  
  public final void a(com.b.a.t paramt)
    throws IOException
  {
    CookieHandler localCookieHandler = this.bJc.bLX;
    if (localCookieHandler != null) {
      localCookieHandler.put(this.bJj.Ad(), j.d(paramt));
    }
  }
  
  public final void b()
  {
    if (this.b != -1L) {
      throw new IllegalStateException();
    }
    this.b = System.currentTimeMillis();
  }
  
  public final boolean c()
  {
    return (h.dF(this.bJj.b)) && (this.bqW);
  }
  
  public final boolean e(URL paramURL)
  {
    URL localURL = this.bJj.wC();
    return (localURL.getHost().equals(paramURL.getHost())) && (i.c(localURL) == i.c(paramURL)) && (localURL.getProtocol().equals(paramURL.getProtocol()));
  }
  
  public final ac g(ac paramac)
    throws IOException
  {
    if ((!this.brj) || (!"gzip".equalsIgnoreCase(this.bJm.a("Content-Encoding")))) {}
    while (paramac.bMz == null) {
      return paramac;
    }
    b.j localj = new b.j(paramac.bMz.zp());
    com.b.a.t localt = paramac.bMy.Ab().dI("Content-Encoding").dI("Content-Length").Ac();
    paramac = paramac.Aq().e(localt);
    paramac.bMz = new k(localt, b.m.b(localj));
    return paramac.xb();
  }
  
  public final void h()
    throws IOException
  {
    if ((this.bJi != null) && (this.bJd != null)) {
      this.bJi.c();
    }
    this.bJd = null;
  }
  
  public final void i()
  {
    if (this.bJi != null) {}
    try
    {
      this.bJi.d(this);
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public final com.b.a.m zC()
    throws o
  {
    com.b.a.o localo = this.bJc.bMf;
    for (;;)
    {
      com.b.a.m localm = localo.a(this.bJe);
      if (localm == null) {
        break;
      }
      if ((this.bJk.b.equals("GET")) || (com.b.a.a.b.bIs.d(localm))) {
        return localm;
      }
      i.a(localm.bIi);
    }
    p localp;
    try
    {
      localp = this.bJf;
      if (localp.e()) {
        break label229;
      }
      if (localp.c()) {
        break label132;
      }
      if (!localp.xi()) {
        throw new NoSuchElementException();
      }
    }
    catch (IOException localIOException)
    {
      throw new o(localIOException);
    }
    Object localObject = (com.b.a.c)localp.bJG.remove(0);
    for (;;)
    {
      return new com.b.a.m(localo, (com.b.a.c)localObject);
      label132:
      if (!localp.c()) {
        throw new SocketException("No route to " + localp.bFS.b + "; exhausted proxy configurations: " + localp.bzS);
      }
      localObject = localp.bzS;
      int i = localp.i;
      localp.i = (i + 1);
      localObject = (Proxy)((List)localObject).get(i);
      localp.a((Proxy)localObject);
      localp.bJE = ((Proxy)localObject);
      label229:
      if (!localp.e()) {
        throw new SocketException("No route to " + localp.bFS.b + "; exhausted inet socket addresses: " + localp.j);
      }
      localObject = localp.j;
      i = localp.bCG;
      localp.bCG = (i + 1);
      localp.bJF = ((InetSocketAddress)((List)localObject).get(i));
      localObject = new com.b.a.c(localp.bFS, localp.bJE, localp.bJF);
      if (localp.bJD.c((com.b.a.c)localObject))
      {
        localp.bJG.add(localObject);
        break;
      }
    }
  }
  
  public final ac zD()
  {
    if (this.bJm == null) {
      throw new IllegalStateException();
    }
    return this.bJm;
  }
  
  public final com.b.a.m zE()
  {
    if (this.bJo != null) {
      i.a(this.bJo);
    }
    while (this.bJm == null)
    {
      if (this.bJd != null) {
        i.a(this.bJd.bIi);
      }
      this.bJd = null;
      return null;
      if (this.bJn != null) {
        i.a(this.bJn);
      }
    }
    i.a(this.bJm.bMz);
    if ((this.bJi != null) && (this.bJd != null) && (!this.bJi.d()))
    {
      i.a(this.bJd.bIi);
      this.bJd = null;
      return null;
    }
    if ((this.bJd != null) && (!com.b.a.a.b.bIs.b(this.bJd))) {
      this.bJd = null;
    }
    com.b.a.m localm = this.bJd;
    this.bJd = null;
    return localm;
  }
  
  public final ac zF()
    throws IOException
  {
    this.bJi.a();
    Object localObject = this.bJi.zG();
    ((ac.a)localObject).bIK = this.bJk;
    ((ac.a)localObject).bMx = this.bJd.bIm;
    ac localac = ((ac.a)localObject).R(j.b, Long.toString(this.b)).R(j.c, Long.toString(System.currentTimeMillis())).xb();
    localObject = localac;
    if (!this.t)
    {
      localObject = localac.Aq();
      ((ac.a)localObject).bMz = this.bJi.h(localac);
      localObject = ((ac.a)localObject).xb();
    }
    com.b.a.a.b.bIs.a(this.bJd, ((ac)localObject).bMk);
    return (ac)localObject;
  }
  
  public final class a
    implements v.a
  {
    private final int b;
    private final aa bGh;
    private int d;
    
    public a(int paramInt, aa paramaa)
    {
      this.b = paramInt;
      this.bGh = paramaa;
    }
    
    public final ac a(aa paramaa)
      throws IOException
    {
      this.d += 1;
      Object localObject1;
      Object localObject2;
      if (this.b > 0)
      {
        localObject1 = (v)g.this.bJc.j.get(this.b - 1);
        localObject2 = g.a(g.this).bIg.bFS;
        if ((!paramaa.wC().getHost().equals(((a)localObject2).b)) || (i.c(paramaa.wC()) != ((a)localObject2).c)) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must retain the same host and port");
        }
        if (this.d > 1) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
        }
      }
      if (this.b < g.this.bJc.j.size())
      {
        localObject1 = new a(g.this, this.b + 1, paramaa);
        localObject2 = (v)g.this.bJc.j.get(this.b);
        paramaa = ((v)localObject2).Ae();
        if (((a)localObject1).d != 1) {
          throw new IllegalStateException("network interceptor " + localObject2 + " must call proceed() exactly once");
        }
      }
      int i;
      do
      {
        do
        {
          return paramaa;
          g.b(g.this).c(paramaa);
          g.a(g.this, paramaa);
          if ((g.this.c()) && (paramaa.bMp != null))
          {
            localObject1 = b.m.b(g.b(g.this).a(paramaa, paramaa.bMp.a()));
            paramaa.bMp.a((d)localObject1);
            ((d)localObject1).close();
          }
          localObject1 = g.c(g.this);
          i = ((ac)localObject1).c;
          if (i == 204) {
            break;
          }
          paramaa = (aa)localObject1;
        } while (i != 205);
        paramaa = (aa)localObject1;
      } while (((ac)localObject1).bMz.b() <= 0L);
      throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + ((ac)localObject1).bMz.b());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */