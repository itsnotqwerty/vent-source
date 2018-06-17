package com.b.a;

import b.e;
import com.b.a.a.a.j;
import java.util.Collections;
import java.util.List;

public final class ac
{
  public final aa bIK;
  ac bJh;
  ac bMA;
  final ac bMB;
  private volatile g bMC;
  public final y bMk;
  public final s bMx;
  public final t bMy;
  public final b bMz;
  public final int c;
  public final String d;
  
  private ac(a parama)
  {
    this.bIK = parama.bIK;
    this.bMk = parama.bMk;
    this.c = parama.c;
    this.d = parama.d;
    this.bMx = parama.bMx;
    this.bMy = parama.bMD.Ac();
    this.bMz = parama.bMz;
    this.bMA = parama.bMA;
    this.bJh = parama.bJh;
    this.bMB = parama.bMB;
  }
  
  public final t Ao()
  {
    return this.bMy;
  }
  
  public final b Ap()
  {
    return this.bMz;
  }
  
  public final a Aq()
  {
    return new a(this, (byte)0);
  }
  
  public final g Ar()
  {
    g localg = this.bMC;
    if (localg != null) {
      return localg;
    }
    localg = g.b(this.bMy);
    this.bMC = localg;
    return localg;
  }
  
  public final String a(String paramString)
  {
    paramString = this.bMy.a(paramString);
    if (paramString != null) {
      return paramString;
    }
    return null;
  }
  
  public final int c()
  {
    return this.c;
  }
  
  public final boolean d()
  {
    return (this.c >= 200) && (this.c < 300);
  }
  
  public final List<k> j()
  {
    if (this.c == 401) {}
    for (String str = "WWW-Authenticate";; str = "Proxy-Authenticate")
    {
      return j.b(this.bMy, str);
      if (this.c != 407) {
        break;
      }
    }
    return Collections.emptyList();
  }
  
  public final String toString()
  {
    return "Response{protocol=" + this.bMk + ", code=" + this.c + ", message=" + this.d + ", url=" + this.bIK.bMn.toString() + '}';
  }
  
  public static final class a
  {
    public aa bIK;
    ac bJh;
    ac bMA;
    ac bMB;
    t.a bMD;
    public y bMk;
    public s bMx;
    public b bMz;
    public int c = -1;
    public String d;
    
    public a()
    {
      this.bMD = new t.a();
    }
    
    private a(ac paramac)
    {
      this.bIK = paramac.bIK;
      this.bMk = paramac.bMk;
      this.c = paramac.c;
      this.d = paramac.d;
      this.bMx = paramac.bMx;
      this.bMD = paramac.bMy.Ab();
      this.bMz = paramac.bMz;
      this.bMA = paramac.bMA;
      this.bJh = paramac.bJh;
      this.bMB = paramac.bMB;
    }
    
    private static void a(String paramString, ac paramac)
    {
      if (paramac.bMz != null) {
        throw new IllegalArgumentException(paramString + ".body != null");
      }
      if (paramac.bMA != null) {
        throw new IllegalArgumentException(paramString + ".networkResponse != null");
      }
      if (paramac.bJh != null) {
        throw new IllegalArgumentException(paramString + ".cacheResponse != null");
      }
      if (paramac.bMB != null) {
        throw new IllegalArgumentException(paramString + ".priorResponse != null");
      }
    }
    
    public final a R(String paramString1, String paramString2)
    {
      this.bMD.O(paramString1, paramString2);
      return this;
    }
    
    public final a S(String paramString1, String paramString2)
    {
      this.bMD.M(paramString1, paramString2);
      return this;
    }
    
    public final a e(t paramt)
    {
      this.bMD = paramt.Ab();
      return this;
    }
    
    public final a j(ac paramac)
    {
      if (paramac != null) {
        a("networkResponse", paramac);
      }
      this.bMA = paramac;
      return this;
    }
    
    public final a k(ac paramac)
    {
      if (paramac != null) {
        a("cacheResponse", paramac);
      }
      this.bJh = paramac;
      return this;
    }
    
    public final a l(ac paramac)
    {
      if ((paramac != null) && (paramac.bMz != null)) {
        throw new IllegalArgumentException("priorResponse.body != null");
      }
      this.bMB = paramac;
      return this;
    }
    
    public final ac xb()
    {
      if (this.bIK == null) {
        throw new IllegalStateException("request == null");
      }
      if (this.bMk == null) {
        throw new IllegalStateException("protocol == null");
      }
      if (this.c < 0) {
        throw new IllegalStateException("code < 0: " + this.c);
      }
      return new ac(this, (byte)0);
    }
    
    private final class a
      extends b
    {
      private final e bKS;
      private final w bqx;
      private final long d;
      
      public a(e parame)
      {
        if (ac.a.this.bMD == null) {
          throw new IllegalStateException("Set headers before setting the body");
        }
        Object localObject = ac.a.this.bMD.c("Content-Type");
        if (localObject != null) {}
        for (localObject = w.dK((String)localObject);; localObject = null)
        {
          this.bqx = ((w)localObject);
          this.bKS = parame;
          this.d = j.c(ac.a.this.bMD.Ac());
          return;
        }
      }
      
      public final long b()
      {
        return this.d;
      }
      
      public final w zo()
      {
        return this.bqx;
      }
      
      public final e zp()
      {
        return this.bKS;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */