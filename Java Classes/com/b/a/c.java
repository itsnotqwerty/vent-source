package com.b.a;

import java.net.InetSocketAddress;
import java.net.Proxy;

public final class c
{
  public final a bFS;
  public final Proxy bFT;
  public final InetSocketAddress bFU;
  
  public c(a parama, Proxy paramProxy, InetSocketAddress paramInetSocketAddress)
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
    this.bFS = parama;
    this.bFT = paramProxy;
    this.bFU = paramInetSocketAddress;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof c))
    {
      paramObject = (c)paramObject;
      bool1 = bool2;
      if (this.bFS.equals(((c)paramObject).bFS))
      {
        bool1 = bool2;
        if (this.bFT.equals(((c)paramObject).bFT))
        {
          bool1 = bool2;
          if (this.bFU.equals(((c)paramObject).bFU)) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public final int hashCode()
  {
    return ((this.bFS.hashCode() + 527) * 31 + this.bFT.hashCode()) * 31 + this.bFU.hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */