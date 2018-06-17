package okhttp3.internal.b;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import okhttp3.a;
import okhttp3.aa;
import okhttp3.e;
import okhttp3.internal.c;
import okhttp3.m;
import okhttp3.n;
import okhttp3.q;

public final class f
{
  final d cYG;
  private final n cZl;
  final a cZz;
  private final e daf;
  private List<InetSocketAddress> inetSocketAddresses = Collections.emptyList();
  private int nextProxyIndex;
  private final List<aa> postponedRoutes = new ArrayList();
  private List<Proxy> proxies = Collections.emptyList();
  
  public f(a parama, d paramd, e parame, n paramn)
  {
    this.cZz = parama;
    this.cYG = paramd;
    this.daf = parame;
    this.cZl = paramn;
    paramd = parama.cVX;
    parama = parama.proxy;
    if (parama != null) {
      parama = Collections.singletonList(parama);
    }
    for (;;)
    {
      this.proxies = parama;
      this.nextProxyIndex = 0;
      return;
      parama = this.cZz.proxySelector.select(paramd.uri());
      if ((parama != null) && (!parama.isEmpty())) {
        parama = c.immutableList(parama);
      } else {
        parama = c.immutableList(new Proxy[] { Proxy.NO_PROXY });
      }
    }
  }
  
  private boolean hasNextProxy()
  {
    return this.nextProxyIndex < this.proxies.size();
  }
  
  private void resetNextInetSocketAddress(Proxy paramProxy)
    throws IOException
  {
    this.inetSocketAddresses = new ArrayList();
    Object localObject;
    int i;
    if ((paramProxy.type() == Proxy.Type.DIRECT) || (paramProxy.type() == Proxy.Type.SOCKS))
    {
      localObject = this.cZz.cVX.host;
      i = this.cZz.cVX.port;
      if ((i <= 0) || (i > 65535)) {
        throw new SocketException("No route to " + (String)localObject + ":" + i + "; port is out of range");
      }
    }
    else
    {
      localObject = paramProxy.address();
      if (!(localObject instanceof InetSocketAddress)) {
        throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + localObject.getClass());
      }
      InetSocketAddress localInetSocketAddress = (InetSocketAddress)localObject;
      localObject = localInetSocketAddress.getAddress();
      if (localObject == null) {}
      for (localObject = localInetSocketAddress.getHostName();; localObject = ((InetAddress)localObject).getHostAddress())
      {
        i = localInetSocketAddress.getPort();
        break;
      }
    }
    if (paramProxy.type() == Proxy.Type.SOCKS) {
      this.inetSocketAddresses.add(InetSocketAddress.createUnresolved((String)localObject, i));
    }
    for (;;)
    {
      return;
      n.Mg();
      paramProxy = this.cZz.cVY.lookup((String)localObject);
      if (paramProxy.isEmpty()) {
        throw new UnknownHostException(this.cZz.cVY + " returned no addresses for " + (String)localObject);
      }
      n.Mh();
      int k = paramProxy.size();
      int j = 0;
      while (j < k)
      {
        localObject = (InetAddress)paramProxy.get(j);
        this.inetSocketAddresses.add(new InetSocketAddress((InetAddress)localObject, i));
        j += 1;
      }
    }
  }
  
  public final a MO()
    throws IOException
  {
    if (!hasNext()) {
      throw new NoSuchElementException();
    }
    ArrayList localArrayList = new ArrayList();
    do
    {
      if (!hasNextProxy()) {
        break;
      }
      if (!hasNextProxy()) {
        throw new SocketException("No route to " + this.cZz.cVX.host + "; exhausted proxy configurations: " + this.proxies);
      }
      Object localObject = this.proxies;
      int i = this.nextProxyIndex;
      this.nextProxyIndex = (i + 1);
      localObject = (Proxy)((List)localObject).get(i);
      resetNextInetSocketAddress((Proxy)localObject);
      int j = this.inetSocketAddresses.size();
      i = 0;
      if (i < j)
      {
        aa localaa = new aa(this.cZz, (Proxy)localObject, (InetSocketAddress)this.inetSocketAddresses.get(i));
        if (this.cYG.c(localaa)) {
          this.postponedRoutes.add(localaa);
        }
        for (;;)
        {
          i += 1;
          break;
          localArrayList.add(localaa);
        }
      }
    } while (localArrayList.isEmpty());
    if (localArrayList.isEmpty())
    {
      localArrayList.addAll(this.postponedRoutes);
      this.postponedRoutes.clear();
    }
    return new a(localArrayList);
  }
  
  public final boolean hasNext()
  {
    return (hasNextProxy()) || (!this.postponedRoutes.isEmpty());
  }
  
  public static final class a
  {
    int nextRouteIndex = 0;
    final List<aa> routes;
    
    a(List<aa> paramList)
    {
      this.routes = paramList;
    }
    
    public final boolean hasNext()
    {
      return this.nextRouteIndex < this.routes.size();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/b/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */