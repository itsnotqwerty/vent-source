package com.b.a.a.a;

import com.b.a.a.i;
import com.b.a.aa;
import com.b.a.aa.a;
import com.b.a.ac;
import com.b.a.e;
import com.b.a.k;
import com.b.a.q;
import java.io.IOException;
import java.net.Authenticator;
import java.net.Authenticator.RequestorType;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.List;

public final class a
  implements e
{
  public static final e bIJ = new a();
  
  private static InetAddress a(Proxy paramProxy, URL paramURL)
    throws IOException
  {
    if ((paramProxy != null) && (paramProxy.type() != Proxy.Type.DIRECT)) {
      return ((InetSocketAddress)paramProxy.address()).getAddress();
    }
    return InetAddress.getByName(paramURL.getHost());
  }
  
  public final aa a(Proxy paramProxy, ac paramac)
    throws IOException
  {
    List localList = paramac.j();
    paramac = paramac.bIK;
    URL localURL = paramac.wC();
    int j = localList.size();
    int i = 0;
    while (i < j)
    {
      Object localObject = (k)localList.get(i);
      if ("Basic".equalsIgnoreCase(((k)localObject).a))
      {
        localObject = Authenticator.requestPasswordAuthentication(localURL.getHost(), a(paramProxy, localURL), i.c(localURL), localURL.getProtocol(), ((k)localObject).b, ((k)localObject).a, localURL, Authenticator.RequestorType.SERVER);
        if (localObject != null)
        {
          paramProxy = q.a(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
          return paramac.Ak().P("Authorization", paramProxy).An();
        }
      }
      i += 1;
    }
    return null;
  }
  
  public final aa b(Proxy paramProxy, ac paramac)
    throws IOException
  {
    List localList = paramac.j();
    paramac = paramac.bIK;
    URL localURL = paramac.wC();
    int j = localList.size();
    int i = 0;
    while (i < j)
    {
      Object localObject = (k)localList.get(i);
      if ("Basic".equalsIgnoreCase(((k)localObject).a))
      {
        InetSocketAddress localInetSocketAddress = (InetSocketAddress)paramProxy.address();
        localObject = Authenticator.requestPasswordAuthentication(localInetSocketAddress.getHostName(), a(paramProxy, localURL), localInetSocketAddress.getPort(), localURL.getProtocol(), ((k)localObject).b, ((k)localObject).a, localURL, Authenticator.RequestorType.PROXY);
        if (localObject != null)
        {
          paramProxy = q.a(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
          return paramac.Ak().P("Proxy-Authorization", paramProxy).An();
        }
      }
      i += 1;
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */