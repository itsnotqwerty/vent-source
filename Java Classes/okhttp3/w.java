package okhttp3;

import javax.annotation.Nullable;
import okhttp3.internal.c.f;

public final class w
{
  public final q cVX;
  public final p cZo;
  @Nullable
  public final x cZp;
  private volatile d cZq;
  public final String method;
  final Object tag;
  
  w(a parama)
  {
    this.cVX = parama.cVX;
    this.method = parama.method;
    this.cZo = parama.cZr.MB();
    this.cZp = parama.cZp;
    if (parama.tag != null) {}
    for (parama = parama.tag;; parama = this)
    {
      this.tag = parama;
      return;
    }
  }
  
  public final a MF()
  {
    return new a(this);
  }
  
  public final d MG()
  {
    d locald = this.cZq;
    if (locald != null) {
      return locald;
    }
    locald = d.a(this.cZo);
    this.cZq = locald;
    return locald;
  }
  
  @Nullable
  public final String header(String paramString)
  {
    return this.cZo.get(paramString);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Request{method=").append(this.method).append(", url=").append(this.cVX).append(", tag=");
    if (this.tag != this) {}
    for (Object localObject = this.tag;; localObject = null) {
      return localObject + '}';
    }
  }
  
  public static final class a
  {
    q cVX;
    x cZp;
    public p.a cZr;
    String method;
    Object tag;
    
    public a()
    {
      this.method = "GET";
      this.cZr = new p.a();
    }
    
    a(w paramw)
    {
      this.cVX = paramw.cVX;
      this.method = paramw.method;
      this.cZp = paramw.cZp;
      this.tag = paramw.tag;
      this.cZr = paramw.cZo.MA();
    }
    
    public final w MH()
    {
      if (this.cVX == null) {
        throw new IllegalStateException("url == null");
      }
      return new w(this);
    }
    
    public final a Z(String paramString1, String paramString2)
    {
      p.a locala = this.cZr;
      p.a.checkNameAndValue(paramString1, paramString2);
      locala.fs(paramString1);
      locala.Y(paramString1, paramString2);
      return this;
    }
    
    public final a a(String paramString, @Nullable x paramx)
    {
      if (paramString == null) {
        throw new NullPointerException("method == null");
      }
      if (paramString.length() == 0) {
        throw new IllegalArgumentException("method.length() == 0");
      }
      if ((paramx != null) && (!f.permitsRequestBody(paramString))) {
        throw new IllegalArgumentException("method " + paramString + " must not have a request body.");
      }
      if (paramx == null)
      {
        if ((paramString.equals("POST")) || (paramString.equals("PUT")) || (paramString.equals("PATCH")) || (paramString.equals("PROPPATCH")) || (paramString.equals("REPORT"))) {}
        for (int i = 1; i != 0; i = 0) {
          throw new IllegalArgumentException("method " + paramString + " must have a request body.");
        }
      }
      this.method = paramString;
      this.cZp = paramx;
      return this;
    }
    
    public final a b(p paramp)
    {
      this.cZr = paramp.MA();
      return this;
    }
    
    public final a b(q paramq)
    {
      if (paramq == null) {
        throw new NullPointerException("url == null");
      }
      this.cVX = paramq;
      return this;
    }
    
    public final a fy(String paramString)
    {
      if (paramString == null) {
        throw new NullPointerException("url == null");
      }
      String str;
      if (paramString.regionMatches(true, 0, "ws:", 0, 3)) {
        str = "http:" + paramString.substring(3);
      }
      for (;;)
      {
        paramString = q.fu(str);
        if (paramString != null) {
          break;
        }
        throw new IllegalArgumentException("unexpected url: " + str);
        str = paramString;
        if (paramString.regionMatches(true, 0, "wss:", 0, 4)) {
          str = "https:" + paramString.substring(4);
        }
      }
      return b(paramString);
    }
    
    public final a fz(String paramString)
    {
      this.cZr.fs(paramString);
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */