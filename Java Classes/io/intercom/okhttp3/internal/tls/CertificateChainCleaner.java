package io.intercom.okhttp3.internal.tls;

import io.intercom.okhttp3.internal.platform.Platform;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;

public abstract class CertificateChainCleaner
{
  public static CertificateChainCleaner get(X509TrustManager paramX509TrustManager)
  {
    return Platform.get().buildCertificateChainCleaner(paramX509TrustManager);
  }
  
  public static CertificateChainCleaner get(X509Certificate... paramVarArgs)
  {
    return new BasicCertificateChainCleaner(new BasicTrustRootIndex(paramVarArgs));
  }
  
  public abstract List<Certificate> clean(List<Certificate> paramList, String paramString)
    throws SSLPeerUnverifiedException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/tls/CertificateChainCleaner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */