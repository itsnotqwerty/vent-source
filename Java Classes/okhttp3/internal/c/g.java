package okhttp3.internal.c;

import java.io.IOException;
import java.util.List;
import okhttp3.e;
import okhttp3.n;
import okhttp3.r;
import okhttp3.r.a;
import okhttp3.w;
import okhttp3.y;

public final class g
  implements r.a
{
  final n cZl;
  public final w cZt;
  private int calls;
  private final int connectTimeout;
  final e daf;
  final okhttp3.internal.b.c dai;
  public final okhttp3.internal.b.g dak;
  final c dal;
  private final int index;
  private final List<r> interceptors;
  private final int readTimeout;
  private final int writeTimeout;
  
  public g(List<r> paramList, okhttp3.internal.b.g paramg, c paramc, okhttp3.internal.b.c paramc1, int paramInt1, w paramw, e parame, n paramn, int paramInt2, int paramInt3, int paramInt4)
  {
    this.interceptors = paramList;
    this.dai = paramc1;
    this.dak = paramg;
    this.dal = paramc;
    this.index = paramInt1;
    this.cZt = paramw;
    this.daf = parame;
    this.cZl = paramn;
    this.connectTimeout = paramInt2;
    this.readTimeout = paramInt3;
    this.writeTimeout = paramInt4;
  }
  
  public final w MD()
  {
    return this.cZt;
  }
  
  public final y a(w paramw, okhttp3.internal.b.g paramg, c paramc, okhttp3.internal.b.c paramc1)
    throws IOException
  {
    if (this.index >= this.interceptors.size()) {
      throw new AssertionError();
    }
    this.calls += 1;
    if ((this.dal != null) && (!this.dai.c(paramw.cVX))) {
      throw new IllegalStateException("network interceptor " + this.interceptors.get(this.index - 1) + " must retain the same host and port");
    }
    if ((this.dal != null) && (this.calls > 1)) {
      throw new IllegalStateException("network interceptor " + this.interceptors.get(this.index - 1) + " must call proceed() exactly once");
    }
    paramw = new g(this.interceptors, paramg, paramc, paramc1, this.index + 1, paramw, this.daf, this.cZl, this.connectTimeout, this.readTimeout, this.writeTimeout);
    paramg = (r)this.interceptors.get(this.index);
    paramc1 = paramg.a(paramw);
    if ((paramc != null) && (this.index + 1 < this.interceptors.size()) && (paramw.calls != 1)) {
      throw new IllegalStateException("network interceptor " + paramg + " must call proceed() exactly once");
    }
    if (paramc1 == null) {
      throw new NullPointerException("interceptor " + paramg + " returned null");
    }
    if (paramc1.cZu == null) {
      throw new IllegalStateException("interceptor " + paramg + " returned a response with no body");
    }
    return paramc1;
  }
  
  public final y c(w paramw)
    throws IOException
  {
    return a(paramw, this.dak, this.dal, this.dai);
  }
  
  public final int connectTimeoutMillis()
  {
    return this.connectTimeout;
  }
  
  public final int readTimeoutMillis()
  {
    return this.readTimeout;
  }
  
  public final int writeTimeoutMillis()
  {
    return this.writeTimeout;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/c/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */