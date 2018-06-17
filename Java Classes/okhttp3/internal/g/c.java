package okhttp3.internal.g;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import okhttp3.u;

final class c
  extends f
{
  final Method getProtocolMethod;
  final Method setProtocolMethod;
  
  private c(Method paramMethod1, Method paramMethod2)
  {
    this.setProtocolMethod = paramMethod1;
    this.getProtocolMethod = paramMethod2;
  }
  
  public static c Nf()
  {
    try
    {
      c localc = new c(SSLParameters.class.getMethod("setApplicationProtocols", new Class[] { String[].class }), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
      return localc;
    }
    catch (NoSuchMethodException localNoSuchMethodException) {}
    return null;
  }
  
  public final void configureTlsExtensions(SSLSocket paramSSLSocket, String paramString, List<u> paramList)
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
      throw okhttp3.internal.c.assertionError("unable to set ssl parameters", paramSSLSocket);
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      for (;;) {}
    }
  }
  
  @Nullable
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
      throw okhttp3.internal.c.assertionError("unable to get selected protocols", paramSSLSocket);
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      for (;;) {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/g/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */