package okhttp3.internal.g;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import okhttp3.internal.c;
import okhttp3.u;

final class d
  extends f
{
  private final Class<?> clientProviderClass;
  private final Method getMethod;
  private final Method putMethod;
  private final Method removeMethod;
  private final Class<?> serverProviderClass;
  
  private d(Method paramMethod1, Method paramMethod2, Method paramMethod3, Class<?> paramClass1, Class<?> paramClass2)
  {
    this.putMethod = paramMethod1;
    this.getMethod = paramMethod2;
    this.removeMethod = paramMethod3;
    this.clientProviderClass = paramClass1;
    this.serverProviderClass = paramClass2;
  }
  
  public static f Nc()
  {
    try
    {
      Object localObject = Class.forName("org.eclipse.jetty.alpn.ALPN");
      Class localClass1 = Class.forName("org.eclipse.jetty.alpn.ALPN" + "$Provider");
      Class localClass2 = Class.forName("org.eclipse.jetty.alpn.ALPN" + "$ClientProvider");
      Class localClass3 = Class.forName("org.eclipse.jetty.alpn.ALPN" + "$ServerProvider");
      localObject = new d(((Class)localObject).getMethod("put", new Class[] { SSLSocket.class, localClass1 }), ((Class)localObject).getMethod("get", new Class[] { SSLSocket.class }), ((Class)localObject).getMethod("remove", new Class[] { SSLSocket.class }), localClass2, localClass3);
      return (f)localObject;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      return null;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
  
  public final void afterHandshake(SSLSocket paramSSLSocket)
  {
    try
    {
      this.removeMethod.invoke(null, new Object[] { paramSSLSocket });
      return;
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw c.assertionError("unable to remove alpn", paramSSLSocket);
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      for (;;) {}
    }
  }
  
  public final void configureTlsExtensions(SSLSocket paramSSLSocket, String paramString, List<u> paramList)
  {
    Object localObject = alpnProtocolNames(paramList);
    try
    {
      paramString = f.class.getClassLoader();
      paramList = this.clientProviderClass;
      Class localClass = this.serverProviderClass;
      localObject = new a((List)localObject);
      paramString = Proxy.newProxyInstance(paramString, new Class[] { paramList, localClass }, (InvocationHandler)localObject);
      this.putMethod.invoke(null, new Object[] { paramSSLSocket, paramString });
      return;
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw c.assertionError("unable to set alpn", paramSSLSocket);
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
      paramSSLSocket = (a)Proxy.getInvocationHandler(this.getMethod.invoke(null, new Object[] { paramSSLSocket }));
      if ((!paramSSLSocket.unsupported) && (paramSSLSocket.selected == null))
      {
        f.dbQ.log(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", null);
        return null;
      }
      if (paramSSLSocket.unsupported) {
        return null;
      }
      paramSSLSocket = paramSSLSocket.selected;
      return paramSSLSocket;
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw c.assertionError("unable to get selected protocol", paramSSLSocket);
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      for (;;) {}
    }
  }
  
  private static final class a
    implements InvocationHandler
  {
    private final List<String> protocols;
    String selected;
    boolean unsupported;
    
    a(List<String> paramList)
    {
      this.protocols = paramList;
    }
    
    public final Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
      throws Throwable
    {
      String str = paramMethod.getName();
      Class localClass = paramMethod.getReturnType();
      paramObject = paramArrayOfObject;
      if (paramArrayOfObject == null) {
        paramObject = c.EMPTY_STRING_ARRAY;
      }
      if ((str.equals("supports")) && (Boolean.TYPE == localClass)) {
        return Boolean.valueOf(true);
      }
      if ((str.equals("unsupported")) && (Void.TYPE == localClass))
      {
        this.unsupported = true;
        return null;
      }
      if ((str.equals("protocols")) && (paramObject.length == 0)) {
        return this.protocols;
      }
      if (((str.equals("selectProtocol")) || (str.equals("select"))) && (String.class == localClass) && (paramObject.length == 1) && ((paramObject[0] instanceof List)))
      {
        paramObject = (List)paramObject[0];
        int j = ((List)paramObject).size();
        int i = 0;
        while (i < j)
        {
          if (this.protocols.contains(((List)paramObject).get(i)))
          {
            paramObject = (String)((List)paramObject).get(i);
            this.selected = ((String)paramObject);
            return paramObject;
          }
          i += 1;
        }
        paramObject = (String)this.protocols.get(0);
        this.selected = ((String)paramObject);
        return paramObject;
      }
      if (((str.equals("protocolSelected")) || (str.equals("selected"))) && (paramObject.length == 1))
      {
        this.selected = ((String)paramObject[0]);
        return null;
      }
      return paramMethod.invoke(this, (Object[])paramObject);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/g/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */