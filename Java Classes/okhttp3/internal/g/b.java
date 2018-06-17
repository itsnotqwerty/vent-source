package okhttp3.internal.g;

import java.security.NoSuchAlgorithmException;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import okhttp3.u;
import org.conscrypt.Conscrypt;
import org.conscrypt.OpenSSLProvider;

public final class b
  extends f
{
  public static f Nc()
  {
    try
    {
      Class.forName("org.conscrypt.ConscryptEngineSocket");
      if (!Conscrypt.isAvailable()) {
        return null;
      }
      Conscrypt.setUseEngineSocketByDefault(true);
      b localb = new b();
      return localb;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return null;
  }
  
  public final SSLContext Ne()
  {
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("TLS", new OpenSSLProvider());
      return localSSLContext;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new IllegalStateException("No TLS provider", localNoSuchAlgorithmException);
    }
  }
  
  public final void configureTlsExtensions(SSLSocket paramSSLSocket, String paramString, List<u> paramList)
  {
    if (Conscrypt.isConscrypt(paramSSLSocket))
    {
      if (paramString != null)
      {
        Conscrypt.setUseSessionTickets(paramSSLSocket, true);
        Conscrypt.setHostname(paramSSLSocket, paramString);
      }
      Conscrypt.setApplicationProtocols(paramSSLSocket, (String[])f.alpnProtocolNames(paramList).toArray(new String[0]));
      return;
    }
    super.configureTlsExtensions(paramSSLSocket, paramString, paramList);
  }
  
  @Nullable
  public final String getSelectedProtocol(SSLSocket paramSSLSocket)
  {
    if (Conscrypt.isConscrypt(paramSSLSocket)) {
      return Conscrypt.getApplicationProtocol(paramSSLSocket);
    }
    return super.getSelectedProtocol(paramSSLSocket);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/g/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */