package okhttp3;

import java.io.Closeable;
import javax.annotation.Nullable;

public final class y
  implements Closeable
{
  final u cWq;
  @Nullable
  public final o cWs;
  public final p cZo;
  private volatile d cZq;
  public final w cZt;
  @Nullable
  public final z cZu;
  @Nullable
  public final y cZv;
  @Nullable
  final y cZw;
  @Nullable
  public final y cZx;
  public final int code;
  public final String message;
  public final long receivedResponseAtMillis;
  public final long sentRequestAtMillis;
  
  y(a parama)
  {
    this.cZt = parama.cZt;
    this.cWq = parama.cWq;
    this.code = parama.code;
    this.message = parama.message;
    this.cWs = parama.cWs;
    this.cZo = parama.cZr.MB();
    this.cZu = parama.cZu;
    this.cZv = parama.cZv;
    this.cZw = parama.cZw;
    this.cZx = parama.cZx;
    this.sentRequestAtMillis = parama.sentRequestAtMillis;
    this.receivedResponseAtMillis = parama.receivedResponseAtMillis;
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
  
  public final a MI()
  {
    return new a(this);
  }
  
  public final void close()
  {
    if (this.cZu == null) {
      throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }
    this.cZu.close();
  }
  
  @Nullable
  public final String header(String paramString)
  {
    return header(paramString, null);
  }
  
  @Nullable
  public final String header(String paramString1, @Nullable String paramString2)
  {
    paramString1 = this.cZo.get(paramString1);
    if (paramString1 != null) {
      paramString2 = paramString1;
    }
    return paramString2;
  }
  
  public final String toString()
  {
    return "Response{protocol=" + this.cWq + ", code=" + this.code + ", message=" + this.message + ", url=" + this.cZt.cVX + '}';
  }
  
  public static final class a
  {
    public u cWq;
    @Nullable
    public o cWs;
    p.a cZr;
    public w cZt;
    public z cZu;
    y cZv;
    y cZw;
    public y cZx;
    public int code = -1;
    public String message;
    public long receivedResponseAtMillis;
    public long sentRequestAtMillis;
    
    public a()
    {
      this.cZr = new p.a();
    }
    
    a(y paramy)
    {
      this.cZt = paramy.cZt;
      this.cWq = paramy.cWq;
      this.code = paramy.code;
      this.message = paramy.message;
      this.cWs = paramy.cWs;
      this.cZr = paramy.cZo.MA();
      this.cZu = paramy.cZu;
      this.cZv = paramy.cZv;
      this.cZw = paramy.cZw;
      this.cZx = paramy.cZx;
      this.sentRequestAtMillis = paramy.sentRequestAtMillis;
      this.receivedResponseAtMillis = paramy.receivedResponseAtMillis;
    }
    
    private static void a(String paramString, y paramy)
    {
      if (paramy.cZu != null) {
        throw new IllegalArgumentException(paramString + ".body != null");
      }
      if (paramy.cZv != null) {
        throw new IllegalArgumentException(paramString + ".networkResponse != null");
      }
      if (paramy.cZw != null) {
        throw new IllegalArgumentException(paramString + ".cacheResponse != null");
      }
      if (paramy.cZx != null) {
        throw new IllegalArgumentException(paramString + ".priorResponse != null");
      }
    }
    
    public final y MJ()
    {
      if (this.cZt == null) {
        throw new IllegalStateException("request == null");
      }
      if (this.cWq == null) {
        throw new IllegalStateException("protocol == null");
      }
      if (this.code < 0) {
        throw new IllegalStateException("code < 0: " + this.code);
      }
      if (this.message == null) {
        throw new IllegalStateException("message == null");
      }
      return new y(this);
    }
    
    public final a aa(String paramString1, String paramString2)
    {
      this.cZr.X(paramString1, paramString2);
      return this;
    }
    
    public final a b(@Nullable y paramy)
    {
      if (paramy != null) {
        a("networkResponse", paramy);
      }
      this.cZv = paramy;
      return this;
    }
    
    public final a c(p paramp)
    {
      this.cZr = paramp.MA();
      return this;
    }
    
    public final a c(@Nullable y paramy)
    {
      if (paramy != null) {
        a("cacheResponse", paramy);
      }
      this.cZw = paramy;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */