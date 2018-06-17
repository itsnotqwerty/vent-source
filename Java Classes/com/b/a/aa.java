package com.b.a;

import com.b.a.a.a.h;
import java.io.IOException;
import java.net.URI;
import java.net.URL;

public final class aa
{
  public final String b;
  final u bMn;
  public final t bMo;
  public final ab bMp;
  final Object bMq;
  public final z bMr;
  private volatile URI bMs;
  private volatile g bMt;
  private volatile URL bue;
  
  private aa(a parama)
  {
    this.bMn = parama.bMn;
    this.b = parama.b;
    this.bMo = parama.bMu.Ac();
    this.bMp = parama.bMp;
    if (parama.bMq != null) {}
    for (Object localObject = parama.bMq;; localObject = this)
    {
      this.bMq = localObject;
      this.bMr = parama.bMr;
      return;
    }
  }
  
  public final URI Ad()
    throws IOException
  {
    try
    {
      URI localURI = this.bMs;
      if (localURI != null) {
        return localURI;
      }
      localURI = this.bMn.Ad();
      this.bMs = localURI;
      return localURI;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      throw new IOException(localIllegalStateException.getMessage());
    }
  }
  
  public final a Ak()
  {
    return new a(this, (byte)0);
  }
  
  public final g Al()
  {
    g localg = this.bMt;
    if (localg != null) {
      return localg;
    }
    localg = g.b(this.bMo);
    this.bMt = localg;
    return localg;
  }
  
  public final String a(String paramString)
  {
    return this.bMo.a(paramString);
  }
  
  public final boolean k()
  {
    return this.bMn.b.equals("https");
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Request{method=").append(this.b).append(", url=").append(this.bMn).append(", tag=");
    if (this.bMq != this) {}
    for (Object localObject = this.bMq;; localObject = null) {
      return localObject + '}';
    }
  }
  
  public final URL wC()
  {
    URL localURL = this.bue;
    if (localURL != null) {
      return localURL;
    }
    localURL = this.bMn.wC();
    this.bue = localURL;
    return localURL;
  }
  
  public static final class a
  {
    String b;
    u bMn;
    ab bMp;
    public Object bMq;
    z bMr = null;
    t.a bMu;
    
    public a()
    {
      this.b = "GET";
      this.bMu = new t.a();
    }
    
    private a(aa paramaa)
    {
      this.bMn = paramaa.bMn;
      this.b = paramaa.b;
      this.bMp = paramaa.bMp;
      this.bMq = paramaa.bMq;
      this.bMu = paramaa.bMo.Ab();
      this.bMr = paramaa.bMr;
    }
    
    private a a(u paramu)
    {
      if (paramu == null) {
        throw new IllegalArgumentException("url == null");
      }
      this.bMn = paramu;
      return this;
    }
    
    public final a Am()
    {
      return a("GET", null);
    }
    
    public final aa An()
    {
      if (this.bMn == null) {
        throw new IllegalStateException("url == null");
      }
      return new aa(this, (byte)0);
    }
    
    public final a P(String paramString1, String paramString2)
    {
      this.bMu.O(paramString1, paramString2);
      return this;
    }
    
    public final a Q(String paramString1, String paramString2)
    {
      this.bMu.M(paramString1, paramString2);
      return this;
    }
    
    public final a a(ab paramab)
    {
      return a("POST", paramab);
    }
    
    public final a a(z paramz)
    {
      this.bMr = paramz;
      return this;
    }
    
    public final a a(String paramString)
    {
      if (paramString == null) {
        throw new IllegalArgumentException("url == null");
      }
      String str;
      if (paramString.regionMatches(true, 0, "ws:", 0, 3)) {
        str = "http:" + paramString.substring(3);
      }
      for (;;)
      {
        paramString = u.dJ(str);
        if (paramString != null) {
          break;
        }
        throw new IllegalArgumentException("unexpected url: " + str);
        str = paramString;
        if (paramString.regionMatches(true, 0, "wss:", 0, 4)) {
          str = "https:" + paramString.substring(4);
        }
      }
      return a(paramString);
    }
    
    public final a a(String paramString, ab paramab)
    {
      if ((paramString == null) || (paramString.length() == 0)) {
        throw new IllegalArgumentException("method == null || method.length() == 0");
      }
      if ((paramab != null) && (!h.dF(paramString))) {
        throw new IllegalArgumentException("method " + paramString + " must not have a request body.");
      }
      this.b = paramString;
      this.bMp = paramab;
      return this;
    }
    
    public final a dM(String paramString)
    {
      this.bMu.dI(paramString);
      return this;
    }
    
    public final a g(URL paramURL)
    {
      if (paramURL == null) {
        throw new IllegalArgumentException("url == null");
      }
      u localu = u.f(paramURL);
      if (localu == null) {
        throw new IllegalArgumentException("unexpected url: " + paramURL);
      }
      return a(localu);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */