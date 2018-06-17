package okhttp3.internal.g;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import okhttp3.internal.h.e;
import okhttp3.t;
import okhttp3.u;

public class f
{
  static final f dbQ;
  private static final Logger logger;
  
  static
  {
    Object localObject1 = a.Nc();
    if (localObject1 != null)
    {
      dbQ = (f)localObject1;
      logger = Logger.getLogger(t.class.getName());
      return;
    }
    if ("conscrypt".equals(System.getProperty("okhttp.platform"))) {}
    for (boolean bool = true;; bool = "Conscrypt".equals(java.security.Security.getProviders()[0].getName()))
    {
      if (bool)
      {
        localObject2 = b.Nc();
        localObject1 = localObject2;
        if (localObject2 != null) {
          break;
        }
      }
      Object localObject2 = c.Nf();
      localObject1 = localObject2;
      if (localObject2 != null) {
        break;
      }
      localObject2 = d.Nc();
      localObject1 = localObject2;
      if (localObject2 != null) {
        break;
      }
      localObject1 = new f();
      break;
    }
  }
  
  public static f Ng()
  {
    return dbQ;
  }
  
  public static List<String> alpnProtocolNames(List<u> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      u localu = (u)paramList.get(i);
      if (localu != u.cZe) {
        localArrayList.add(localu.toString());
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public static String getPrefix()
  {
    return "OkHttp";
  }
  
  public SSLContext Ne()
  {
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("TLS");
      return localSSLContext;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new IllegalStateException("No TLS provider", localNoSuchAlgorithmException);
    }
  }
  
  public okhttp3.internal.h.c a(X509TrustManager paramX509TrustManager)
  {
    return new okhttp3.internal.h.a(b(paramX509TrustManager));
  }
  
  public void afterHandshake(SSLSocket paramSSLSocket) {}
  
  public e b(X509TrustManager paramX509TrustManager)
  {
    return new okhttp3.internal.h.b(paramX509TrustManager.getAcceptedIssuers());
  }
  
  public void configureTlsExtensions(SSLSocket paramSSLSocket, String paramString, List<u> paramList) {}
  
  public void connectSocket(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
    throws IOException
  {
    paramSocket.connect(paramInetSocketAddress, paramInt);
  }
  
  @Nullable
  public String getSelectedProtocol(SSLSocket paramSSLSocket)
  {
    return null;
  }
  
  public Object getStackTraceForCloseable(String paramString)
  {
    if (logger.isLoggable(Level.FINE)) {
      return new Throwable(paramString);
    }
    return null;
  }
  
  public boolean isCleartextTrafficPermitted(String paramString)
  {
    return true;
  }
  
  public void log(int paramInt, String paramString, Throwable paramThrowable)
  {
    if (paramInt == 5) {}
    for (Level localLevel = Level.WARNING;; localLevel = Level.INFO)
    {
      logger.log(localLevel, paramString, paramThrowable);
      return;
    }
  }
  
  public void logCloseableLeak(String paramString, Object paramObject)
  {
    String str = paramString;
    if (paramObject == null) {
      str = paramString + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
    }
    log(5, str, (Throwable)paramObject);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/g/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */