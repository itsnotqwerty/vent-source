package com.b.a;

import com.b.a.a.i;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

public final class s
{
  final String a;
  public final List<Certificate> b;
  private final List<Certificate> c;
  
  private s(String paramString, List<Certificate> paramList1, List<Certificate> paramList2)
  {
    this.a = paramString;
    this.b = paramList1;
    this.c = paramList2;
  }
  
  public static s a(SSLSession paramSSLSession)
  {
    String str = paramSSLSession.getCipherSuite();
    if (str == null) {
      throw new IllegalStateException("cipherSuite == null");
    }
    try
    {
      Object localObject = paramSSLSession.getPeerCertificates();
      if (localObject != null)
      {
        localObject = i.c((Object[])localObject);
        paramSSLSession = paramSSLSession.getLocalCertificates();
        if (paramSSLSession == null) {
          break label77;
        }
        paramSSLSession = i.c(paramSSLSession);
        return new s(str, (List)localObject, paramSSLSession);
      }
    }
    catch (SSLPeerUnverifiedException localSSLPeerUnverifiedException)
    {
      for (;;)
      {
        List localList = null;
        continue;
        localList = Collections.emptyList();
        continue;
        label77:
        paramSSLSession = Collections.emptyList();
      }
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof s)) {}
    do
    {
      return false;
      paramObject = (s)paramObject;
    } while ((!this.a.equals(((s)paramObject).a)) || (!this.b.equals(((s)paramObject).b)) || (!this.c.equals(((s)paramObject).c)));
    return true;
  }
  
  public final int hashCode()
  {
    return ((this.a.hashCode() + 527) * 31 + this.b.hashCode()) * 31 + this.c.hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */