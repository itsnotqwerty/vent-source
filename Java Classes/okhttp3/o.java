package okhttp3;

import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import okhttp3.internal.c;

public final class o
{
  final ab cYQ;
  public final g cYR;
  final List<Certificate> localCertificates;
  public final List<Certificate> peerCertificates;
  
  o(ab paramab, g paramg, List<Certificate> paramList1, List<Certificate> paramList2)
  {
    this.cYQ = paramab;
    this.cYR = paramg;
    this.peerCertificates = paramList1;
    this.localCertificates = paramList2;
  }
  
  public static o b(SSLSession paramSSLSession)
  {
    Object localObject = paramSSLSession.getCipherSuite();
    if (localObject == null) {
      throw new IllegalStateException("cipherSuite == null");
    }
    g localg = g.fq((String)localObject);
    localObject = paramSSLSession.getProtocol();
    if (localObject == null) {
      throw new IllegalStateException("tlsVersion == null");
    }
    ab localab = ab.fA((String)localObject);
    try
    {
      localObject = paramSSLSession.getPeerCertificates();
      if (localObject != null)
      {
        localObject = c.immutableList((Object[])localObject);
        paramSSLSession = paramSSLSession.getLocalCertificates();
        if (paramSSLSession == null) {
          break label109;
        }
        paramSSLSession = c.immutableList(paramSSLSession);
        return new o(localab, localg, (List)localObject, paramSSLSession);
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
        label109:
        paramSSLSession = Collections.emptyList();
      }
    }
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    if (!(paramObject instanceof o)) {}
    do
    {
      return false;
      paramObject = (o)paramObject;
    } while ((!this.cYQ.equals(((o)paramObject).cYQ)) || (!this.cYR.equals(((o)paramObject).cYR)) || (!this.peerCertificates.equals(((o)paramObject).peerCertificates)) || (!this.localCertificates.equals(((o)paramObject).localCertificates)));
    return true;
  }
  
  public final int hashCode()
  {
    return (((this.cYQ.hashCode() + 527) * 31 + this.cYR.hashCode()) * 31 + this.peerCertificates.hashCode()) * 31 + this.localCertificates.hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */