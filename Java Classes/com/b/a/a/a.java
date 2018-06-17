package com.b.a.a;

import com.b.a.p;
import java.io.IOException;
import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

public final class a
{
  private final List<p> a;
  private int b = 0;
  public boolean c;
  public boolean d;
  
  public a(List<p> paramList)
  {
    this.a = paramList;
  }
  
  private boolean c(SSLSocket paramSSLSocket)
  {
    int i = this.b;
    while (i < this.a.size())
    {
      if (((p)this.a.get(i)).f(paramSSLSocket)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public final p b(SSLSocket paramSSLSocket)
    throws IOException
  {
    int i = this.b;
    int j = this.a.size();
    p localp;
    if (i < j)
    {
      localp = (p)this.a.get(i);
      if (localp.f(paramSSLSocket)) {
        this.b = (i + 1);
      }
    }
    for (;;)
    {
      if (localp == null)
      {
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.d + ", modes=" + this.a + ", supported protocols=" + Arrays.toString(paramSSLSocket.getEnabledProtocols()));
        i += 1;
        break;
      }
      this.c = c(paramSSLSocket);
      b.bIs.a(localp, paramSSLSocket, this.d);
      return localp;
      localp = null;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */