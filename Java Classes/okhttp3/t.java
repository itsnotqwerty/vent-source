package okhttp3;

import java.lang.ref.Reference;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public class t
  implements Cloneable
{
  static final List<i> DEFAULT_CONNECTION_SPECS;
  static final List<u> DEFAULT_PROTOCOLS = okhttp3.internal.c.immutableList(new u[] { u.cZh, u.cZf });
  public final m cVY;
  public final b cVZ;
  public final f cWa;
  @Nullable
  final okhttp3.internal.a.f cWc;
  @Nullable
  final okhttp3.internal.h.c cWw;
  final l cYY;
  final n.a cYZ;
  public final k cZa;
  @Nullable
  public final c cZb;
  public final b cZc;
  public final h cZd;
  final int connectTimeout;
  public final List<i> connectionSpecs;
  public final boolean followRedirects;
  public final boolean followSslRedirects;
  public final HostnameVerifier hostnameVerifier;
  final List<r> interceptors;
  final List<r> networkInterceptors;
  public final int pingInterval;
  public final List<u> protocols;
  @Nullable
  public final Proxy proxy;
  public final ProxySelector proxySelector;
  final int readTimeout;
  public final boolean retryOnConnectionFailure;
  public final SocketFactory socketFactory;
  @Nullable
  public final SSLSocketFactory sslSocketFactory;
  final int writeTimeout;
  
  static
  {
    DEFAULT_CONNECTION_SPECS = okhttp3.internal.c.immutableList(new i[] { i.cYJ, i.cYL });
    okhttp3.internal.a.cZG = new okhttp3.internal.a()
    {
      public final int a(y.a paramAnonymousa)
      {
        return paramAnonymousa.code;
      }
      
      public final Socket a(h paramAnonymoush, a paramAnonymousa, okhttp3.internal.b.g paramAnonymousg)
      {
        if ((!h.$assertionsDisabled) && (!Thread.holdsLock(paramAnonymoush))) {
          throw new AssertionError();
        }
        Object localObject = paramAnonymoush.connections.iterator();
        while (((Iterator)localObject).hasNext())
        {
          paramAnonymoush = (okhttp3.internal.b.c)((Iterator)localObject).next();
          if ((paramAnonymoush.a(paramAnonymousa, null)) && (paramAnonymoush.isMultiplexed()) && (paramAnonymoush != paramAnonymousg.MR()))
          {
            if ((!okhttp3.internal.b.g.$assertionsDisabled) && (!Thread.holdsLock(paramAnonymousg.cZd))) {
              throw new AssertionError();
            }
            if ((paramAnonymousg.daj != null) || (paramAnonymousg.dai.allocations.size() != 1)) {
              throw new IllegalStateException();
            }
            paramAnonymousa = (Reference)paramAnonymousg.dai.allocations.get(0);
            localObject = paramAnonymousg.deallocate(true, false, false);
            paramAnonymousg.dai = paramAnonymoush;
            paramAnonymoush.allocations.add(paramAnonymousa);
            return (Socket)localObject;
          }
        }
        return null;
      }
      
      public final okhttp3.internal.b.c a(h paramAnonymoush, a paramAnonymousa, okhttp3.internal.b.g paramAnonymousg, aa paramAnonymousaa)
      {
        if ((!h.$assertionsDisabled) && (!Thread.holdsLock(paramAnonymoush))) {
          throw new AssertionError();
        }
        paramAnonymoush = paramAnonymoush.connections.iterator();
        while (paramAnonymoush.hasNext())
        {
          okhttp3.internal.b.c localc = (okhttp3.internal.b.c)paramAnonymoush.next();
          if (localc.a(paramAnonymousa, paramAnonymousaa))
          {
            paramAnonymousg.a(localc, true);
            return localc;
          }
        }
        return null;
      }
      
      public final okhttp3.internal.b.d a(h paramAnonymoush)
      {
        return paramAnonymoush.cYG;
      }
      
      public final void a(i paramAnonymousi, SSLSocket paramAnonymousSSLSocket, boolean paramAnonymousBoolean)
      {
        String[] arrayOfString1;
        if (paramAnonymousi.cipherSuites != null)
        {
          arrayOfString1 = okhttp3.internal.c.intersect(g.ORDER_BY_NAME, paramAnonymousSSLSocket.getEnabledCipherSuites(), paramAnonymousi.cipherSuites);
          if (paramAnonymousi.tlsVersions == null) {
            break label156;
          }
        }
        label156:
        for (String[] arrayOfString2 = okhttp3.internal.c.intersect(okhttp3.internal.c.NATURAL_ORDER, paramAnonymousSSLSocket.getEnabledProtocols(), paramAnonymousi.tlsVersions);; arrayOfString2 = paramAnonymousSSLSocket.getEnabledProtocols())
        {
          String[] arrayOfString4 = paramAnonymousSSLSocket.getSupportedCipherSuites();
          int i = okhttp3.internal.c.indexOf(g.ORDER_BY_NAME, arrayOfString4, "TLS_FALLBACK_SCSV");
          String[] arrayOfString3 = arrayOfString1;
          if (paramAnonymousBoolean)
          {
            arrayOfString3 = arrayOfString1;
            if (i != -1) {
              arrayOfString3 = okhttp3.internal.c.concat(arrayOfString1, arrayOfString4[i]);
            }
          }
          paramAnonymousi = new i.a(paramAnonymousi).g(arrayOfString3).h(arrayOfString2).Mc();
          if (paramAnonymousi.tlsVersions != null) {
            paramAnonymousSSLSocket.setEnabledProtocols(paramAnonymousi.tlsVersions);
          }
          if (paramAnonymousi.cipherSuites != null) {
            paramAnonymousSSLSocket.setEnabledCipherSuites(paramAnonymousi.cipherSuites);
          }
          return;
          arrayOfString1 = paramAnonymousSSLSocket.getEnabledCipherSuites();
          break;
        }
      }
      
      public final void a(p.a paramAnonymousa, String paramAnonymousString)
      {
        paramAnonymousa.fr(paramAnonymousString);
      }
      
      public final void a(p.a paramAnonymousa, String paramAnonymousString1, String paramAnonymousString2)
      {
        paramAnonymousa.Y(paramAnonymousString1, paramAnonymousString2);
      }
      
      public final boolean a(a paramAnonymousa1, a paramAnonymousa2)
      {
        return paramAnonymousa1.a(paramAnonymousa2);
      }
      
      public final boolean a(h paramAnonymoush, okhttp3.internal.b.c paramAnonymousc)
      {
        if ((!h.$assertionsDisabled) && (!Thread.holdsLock(paramAnonymoush))) {
          throw new AssertionError();
        }
        if ((paramAnonymousc.noNewStreams) || (paramAnonymoush.maxIdleConnections == 0))
        {
          paramAnonymoush.connections.remove(paramAnonymousc);
          return true;
        }
        paramAnonymoush.notifyAll();
        return false;
      }
      
      public final void b(h paramAnonymoush, okhttp3.internal.b.c paramAnonymousc)
      {
        if ((!h.$assertionsDisabled) && (!Thread.holdsLock(paramAnonymoush))) {
          throw new AssertionError();
        }
        if (!paramAnonymoush.cleanupRunning)
        {
          paramAnonymoush.cleanupRunning = true;
          h.executor.execute(paramAnonymoush.cleanupRunnable);
        }
        paramAnonymoush.connections.add(paramAnonymousc);
      }
    };
  }
  
  public t()
  {
    this(new a());
  }
  
  public t(a parama)
  {
    this.cYY = parama.cYY;
    this.proxy = parama.proxy;
    this.protocols = parama.protocols;
    this.connectionSpecs = parama.connectionSpecs;
    this.interceptors = okhttp3.internal.c.immutableList(parama.interceptors);
    this.networkInterceptors = okhttp3.internal.c.immutableList(parama.networkInterceptors);
    this.cYZ = parama.cYZ;
    this.proxySelector = parama.proxySelector;
    this.cZa = parama.cZa;
    this.cZb = parama.cZb;
    this.cWc = parama.cWc;
    this.socketFactory = parama.socketFactory;
    Object localObject1 = this.connectionSpecs.iterator();
    int i = 0;
    Object localObject2;
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = (i)((Iterator)localObject1).next();
      if ((i != 0) || (((i)localObject2).tls)) {}
      for (i = 1;; i = 0) {
        break;
      }
    }
    if ((parama.sslSocketFactory != null) || (i == 0))
    {
      this.sslSocketFactory = parama.sslSocketFactory;
      this.cWw = parama.cWw;
      this.hostnameVerifier = parama.hostnameVerifier;
      localObject1 = parama.cWa;
      localObject2 = this.cWw;
      if (!okhttp3.internal.c.equal(((f)localObject1).cWw, localObject2)) {
        break label377;
      }
    }
    for (;;)
    {
      this.cWa = ((f)localObject1);
      this.cVZ = parama.cVZ;
      this.cZc = parama.cZc;
      this.cZd = parama.cZd;
      this.cVY = parama.cVY;
      this.followSslRedirects = parama.followSslRedirects;
      this.followRedirects = parama.followRedirects;
      this.retryOnConnectionFailure = parama.retryOnConnectionFailure;
      this.connectTimeout = parama.connectTimeout;
      this.readTimeout = parama.readTimeout;
      this.writeTimeout = parama.writeTimeout;
      this.pingInterval = parama.pingInterval;
      if (!this.interceptors.contains(null)) {
        break label394;
      }
      throw new IllegalStateException("Null interceptor: " + this.interceptors);
      localObject1 = systemDefaultTrustManager();
      this.sslSocketFactory = systemDefaultSslSocketFactory((X509TrustManager)localObject1);
      this.cWw = okhttp3.internal.g.f.Ng().a((X509TrustManager)localObject1);
      break;
      label377:
      localObject1 = new f(((f)localObject1).pins, (okhttp3.internal.h.c)localObject2);
    }
    label394:
    if (this.networkInterceptors.contains(null)) {
      throw new IllegalStateException("Null network interceptor: " + this.networkInterceptors);
    }
  }
  
  private static SSLSocketFactory systemDefaultSslSocketFactory(X509TrustManager paramX509TrustManager)
  {
    try
    {
      SSLContext localSSLContext = okhttp3.internal.g.f.Ng().Ne();
      localSSLContext.init(null, new TrustManager[] { paramX509TrustManager }, null);
      paramX509TrustManager = localSSLContext.getSocketFactory();
      return paramX509TrustManager;
    }
    catch (GeneralSecurityException paramX509TrustManager)
    {
      throw okhttp3.internal.c.assertionError("No System TLS", paramX509TrustManager);
    }
  }
  
  private static X509TrustManager systemDefaultTrustManager()
  {
    try
    {
      Object localObject = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
      ((TrustManagerFactory)localObject).init(null);
      localObject = ((TrustManagerFactory)localObject).getTrustManagers();
      if ((localObject.length != 1) || (!(localObject[0] instanceof X509TrustManager))) {
        throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString((Object[])localObject));
      }
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw okhttp3.internal.c.assertionError("No System TLS", localGeneralSecurityException);
    }
    X509TrustManager localX509TrustManager = (X509TrustManager)localGeneralSecurityException[0];
    return localX509TrustManager;
  }
  
  public static final class a
  {
    m cVY = m.cYN;
    b cVZ = b.cWb;
    f cWa = f.cWv;
    @Nullable
    public okhttp3.internal.a.f cWc;
    @Nullable
    okhttp3.internal.h.c cWw;
    l cYY = new l();
    n.a cYZ = n.a(n.cYO);
    k cZa = k.cYM;
    @Nullable
    public c cZb;
    b cZc = b.cWb;
    h cZd = new h();
    public int connectTimeout = 10000;
    public List<i> connectionSpecs = t.DEFAULT_CONNECTION_SPECS;
    boolean followRedirects = true;
    boolean followSslRedirects = true;
    HostnameVerifier hostnameVerifier = okhttp3.internal.h.d.dbT;
    final List<r> interceptors = new ArrayList();
    final List<r> networkInterceptors = new ArrayList();
    int pingInterval = 0;
    List<u> protocols = t.DEFAULT_PROTOCOLS;
    @Nullable
    Proxy proxy;
    ProxySelector proxySelector = ProxySelector.getDefault();
    public int readTimeout = 10000;
    boolean retryOnConnectionFailure = true;
    SocketFactory socketFactory = SocketFactory.getDefault();
    @Nullable
    SSLSocketFactory sslSocketFactory;
    public int writeTimeout = 10000;
    
    public final a E(List<u> paramList)
    {
      paramList = new ArrayList(paramList);
      if (!paramList.contains(u.cZf)) {
        throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + paramList);
      }
      if (paramList.contains(u.cZe)) {
        throw new IllegalArgumentException("protocols must not contain http/1.0: " + paramList);
      }
      if (paramList.contains(null)) {
        throw new IllegalArgumentException("protocols must not contain null");
      }
      paramList.remove(u.cZg);
      this.protocols = Collections.unmodifiableList(paramList);
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */