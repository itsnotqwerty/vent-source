package io.intercom.okhttp3.internal.platform;

import io.intercom.okhttp3.Protocol;
import io.intercom.okhttp3.internal.Util;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

final class Jdk9Platform
  extends Platform
{
  final Method getProtocolMethod;
  final Method setProtocolMethod;
  
  Jdk9Platform(Method paramMethod1, Method paramMethod2)
  {
    this.setProtocolMethod = paramMethod1;
    this.getProtocolMethod = paramMethod2;
  }
  
  public static Jdk9Platform buildIfSupported()
  {
    try
    {
      Jdk9Platform localJdk9Platform = new Jdk9Platform(SSLParameters.class.getMethod("setApplicationProtocols", new Class[] { String[].class }), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
      return localJdk9Platform;
    }
    catch (NoSuchMethodException localNoSuchMethodException) {}
    return null;
  }
  
  public final void configureTlsExtensions(SSLSocket paramSSLSocket, String paramString, List<Protocol> paramList)
  {
    try
    {
      paramString = paramSSLSocket.getSSLParameters();
      paramList = alpnProtocolNames(paramList);
      this.setProtocolMethod.invoke(paramString, new Object[] { paramList.toArray(new String[paramList.size()]) });
      paramSSLSocket.setSSLParameters(paramString);
      return;
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw Util.assertionError("unable to set ssl parameters", paramSSLSocket);
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      for (;;) {}
    }
  }
  
  public final String getSelectedProtocol(SSLSocket paramSSLSocket)
  {
    try
    {
      paramSSLSocket = (String)this.getProtocolMethod.invoke(paramSSLSocket, new Object[0]);
      if (paramSSLSocket != null)
      {
        boolean bool = paramSSLSocket.equals("");
        if (!bool) {}
      }
      else
      {
        paramSSLSocket = null;
      }
      return paramSSLSocket;
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw Util.assertionError("unable to get selected protocols", paramSSLSocket);
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      for (;;) {}
    }
  }
  
  public final X509TrustManager trustManager(SSLSocketFactory paramSSLSocketFactory)
  {
    throw new UnsupportedOperationException("clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/platform/Jdk9Platform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */