package okhttp3;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.internal.c;

public final class a
{
  public final q cVX;
  public final m cVY;
  public final b cVZ;
  @Nullable
  public final f cWa;
  public final List<i> connectionSpecs;
  @Nullable
  public final HostnameVerifier hostnameVerifier;
  public final List<u> protocols;
  @Nullable
  public final Proxy proxy;
  public final ProxySelector proxySelector;
  public final SocketFactory socketFactory;
  @Nullable
  public final SSLSocketFactory sslSocketFactory;
  
  public a(String paramString, int paramInt, m paramm, SocketFactory paramSocketFactory, @Nullable SSLSocketFactory paramSSLSocketFactory, @Nullable HostnameVerifier paramHostnameVerifier, @Nullable f paramf, b paramb, @Nullable Proxy paramProxy, List<u> paramList, List<i> paramList1, ProxySelector paramProxySelector)
  {
    q.a locala = new q.a();
    if (paramSSLSocketFactory != null)
    {
      str = "https";
      if (!str.equalsIgnoreCase("http")) {
        break label60;
      }
      locala.scheme = "http";
    }
    for (;;)
    {
      if (paramString == null)
      {
        throw new NullPointerException("host == null");
        str = "http";
        break;
        label60:
        if (str.equalsIgnoreCase("https")) {
          locala.scheme = "https";
        } else {
          throw new IllegalArgumentException("unexpected scheme: " + str);
        }
      }
    }
    String str = q.a.canonicalizeHost(paramString, 0, paramString.length());
    if (str == null) {
      throw new IllegalArgumentException("unexpected host: " + paramString);
    }
    locala.host = str;
    if ((paramInt <= 0) || (paramInt > 65535)) {
      throw new IllegalArgumentException("unexpected port: " + paramInt);
    }
    locala.port = paramInt;
    this.cVX = locala.MC();
    if (paramm == null) {
      throw new NullPointerException("dns == null");
    }
    this.cVY = paramm;
    if (paramSocketFactory == null) {
      throw new NullPointerException("socketFactory == null");
    }
    this.socketFactory = paramSocketFactory;
    if (paramb == null) {
      throw new NullPointerException("proxyAuthenticator == null");
    }
    this.cVZ = paramb;
    if (paramList == null) {
      throw new NullPointerException("protocols == null");
    }
    this.protocols = c.immutableList(paramList);
    if (paramList1 == null) {
      throw new NullPointerException("connectionSpecs == null");
    }
    this.connectionSpecs = c.immutableList(paramList1);
    if (paramProxySelector == null) {
      throw new NullPointerException("proxySelector == null");
    }
    this.proxySelector = paramProxySelector;
    this.proxy = paramProxy;
    this.sslSocketFactory = paramSSLSocketFactory;
    this.hostnameVerifier = paramHostnameVerifier;
    this.cWa = paramf;
  }
  
  final boolean a(a parama)
  {
    return (this.cVY.equals(parama.cVY)) && (this.cVZ.equals(parama.cVZ)) && (this.protocols.equals(parama.protocols)) && (this.connectionSpecs.equals(parama.connectionSpecs)) && (this.proxySelector.equals(parama.proxySelector)) && (c.equal(this.proxy, parama.proxy)) && (c.equal(this.sslSocketFactory, parama.sslSocketFactory)) && (c.equal(this.hostnameVerifier, parama.hostnameVerifier)) && (c.equal(this.cWa, parama.cWa)) && (this.cVX.port == parama.cVX.port);
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    return ((paramObject instanceof a)) && (this.cVX.equals(((a)paramObject).cVX)) && (a((a)paramObject));
  }
  
  public final int hashCode()
  {
    int m = 0;
    int n = this.cVX.hashCode();
    int i1 = this.cVY.hashCode();
    int i2 = this.cVZ.hashCode();
    int i3 = this.protocols.hashCode();
    int i4 = this.connectionSpecs.hashCode();
    int i5 = this.proxySelector.hashCode();
    int i;
    int j;
    if (this.proxy != null)
    {
      i = this.proxy.hashCode();
      if (this.sslSocketFactory == null) {
        break label185;
      }
      j = this.sslSocketFactory.hashCode();
      label91:
      if (this.hostnameVerifier == null) {
        break label190;
      }
    }
    label185:
    label190:
    for (int k = this.hostnameVerifier.hashCode();; k = 0)
    {
      if (this.cWa != null) {
        m = this.cWa.hashCode();
      }
      return (k + (j + (i + ((((((n + 527) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + i4) * 31 + i5) * 31) * 31) * 31) * 31 + m;
      i = 0;
      break;
      j = 0;
      break label91;
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Address{").append(this.cVX.host).append(":").append(this.cVX.port);
    if (this.proxy != null) {
      localStringBuilder.append(", proxy=").append(this.proxy);
    }
    for (;;)
    {
      localStringBuilder.append("}");
      return localStringBuilder.toString();
      localStringBuilder.append(", proxySelector=").append(this.proxySelector);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */