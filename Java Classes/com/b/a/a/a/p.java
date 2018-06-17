package com.b.a.a.a;

import com.b.a.a;
import com.b.a.a.b;
import com.b.a.a.e;
import com.b.a.a.h;
import com.b.a.a.i;
import com.b.a.c;
import com.b.a.x;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.SocketException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class p
{
  int bCG;
  final a bFS;
  private final x bGe;
  final URI bJB;
  private final e bJC;
  final h bJD;
  Proxy bJE;
  InetSocketAddress bJF;
  final List<c> bJG = new ArrayList();
  List<Proxy> bzS = Collections.emptyList();
  int i;
  List<InetSocketAddress> j = Collections.emptyList();
  
  public p(a parama, URI paramURI, x paramx)
  {
    this.bFS = parama;
    this.bJB = paramURI;
    this.bGe = paramx;
    this.bJD = b.bIs.b(paramx);
    this.bJC = b.bIs.c(paramx);
    parama = parama.bFL;
    if (parama != null) {
      this.bzS = Collections.singletonList(parama);
    }
    for (;;)
    {
      this.i = 0;
      return;
      this.bzS = new ArrayList();
      parama = this.bGe.bFR.select(paramURI);
      if (parama != null) {
        this.bzS.addAll(parama);
      }
      this.bzS.removeAll(Collections.singleton(Proxy.NO_PROXY));
      this.bzS.add(Proxy.NO_PROXY);
    }
  }
  
  final void a(Proxy paramProxy)
    throws IOException
  {
    this.j = new ArrayList();
    int k;
    InetSocketAddress localInetSocketAddress;
    if ((paramProxy.type() == Proxy.Type.DIRECT) || (paramProxy.type() == Proxy.Type.SOCKS))
    {
      paramProxy = this.bFS.b;
      k = i.g(this.bJB);
      if ((k <= 0) || (k > 65535)) {
        throw new SocketException("No route to " + paramProxy + ":" + k + "; port is out of range");
      }
    }
    else
    {
      paramProxy = paramProxy.address();
      if (!(paramProxy instanceof InetSocketAddress)) {
        throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + paramProxy.getClass());
      }
      localInetSocketAddress = (InetSocketAddress)paramProxy;
      paramProxy = localInetSocketAddress.getAddress();
      if (paramProxy == null) {}
      for (paramProxy = localInetSocketAddress.getHostName();; paramProxy = paramProxy.getHostAddress())
      {
        k = localInetSocketAddress.getPort();
        break;
      }
    }
    paramProxy = this.bJC.dC(paramProxy);
    int n = paramProxy.length;
    int m = 0;
    while (m < n)
    {
      localInetSocketAddress = paramProxy[m];
      this.j.add(new InetSocketAddress(localInetSocketAddress, k));
      m += 1;
    }
    this.bCG = 0;
  }
  
  public final boolean a()
  {
    return (e()) || (c()) || (xi());
  }
  
  final boolean c()
  {
    return this.i < this.bzS.size();
  }
  
  final boolean e()
  {
    return this.bCG < this.j.size();
  }
  
  final boolean xi()
  {
    return !this.bJG.isEmpty();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */