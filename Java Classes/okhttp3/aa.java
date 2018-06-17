package okhttp3;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import javax.annotation.Nullable;

public final class aa
{
  public final a cZz;
  public final InetSocketAddress inetSocketAddress;
  public final Proxy proxy;
  
  public aa(a parama, Proxy paramProxy, InetSocketAddress paramInetSocketAddress)
  {
    if (parama == null) {
      throw new NullPointerException("address == null");
    }
    if (paramProxy == null) {
      throw new NullPointerException("proxy == null");
    }
    if (paramInetSocketAddress == null) {
      throw new NullPointerException("inetSocketAddress == null");
    }
    this.cZz = parama;
    this.proxy = paramProxy;
    this.inetSocketAddress = paramInetSocketAddress;
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    return ((paramObject instanceof aa)) && (((aa)paramObject).cZz.equals(this.cZz)) && (((aa)paramObject).proxy.equals(this.proxy)) && (((aa)paramObject).inetSocketAddress.equals(this.inetSocketAddress));
  }
  
  public final int hashCode()
  {
    return ((this.cZz.hashCode() + 527) * 31 + this.proxy.hashCode()) * 31 + this.inetSocketAddress.hashCode();
  }
  
  public final boolean requiresTunnel()
  {
    return (this.cZz.sslSocketFactory != null) && (this.proxy.type() == Proxy.Type.HTTP);
  }
  
  public final String toString()
  {
    return "Route{" + this.inetSocketAddress + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */