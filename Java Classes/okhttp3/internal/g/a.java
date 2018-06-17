package okhttp3.internal.g;

import android.os.Build.VERSION;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import okhttp3.u;

final class a
  extends f
{
  private final e<Socket> dbL;
  private final e<Socket> dbM;
  private final e<Socket> dbN;
  private final e<Socket> dbO;
  private final c dbP = c.Nd();
  private final Class<?> sslParametersClass;
  
  private a(Class<?> paramClass, e<Socket> parame1, e<Socket> parame2, e<Socket> parame3, e<Socket> parame4)
  {
    this.sslParametersClass = paramClass;
    this.dbL = parame1;
    this.dbM = parame2;
    this.dbN = parame3;
    this.dbO = parame4;
  }
  
  public static f Nc()
  {
    for (;;)
    {
      try
      {
        localClass1 = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
      }
      catch (ClassNotFoundException localClassNotFoundException1)
      {
        try
        {
          Class localClass1;
          e locale3 = new e(null, "setUseSessionTickets", new Class[] { Boolean.TYPE });
          e locale4 = new e(null, "setHostname", new Class[] { String.class });
          if (!supportsAlpn()) {
            break label117;
          }
          locale1 = new e(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
          locale2 = new e(null, "setAlpnProtocols", new Class[] { byte[].class });
          return new a(localClass1, locale3, locale4, locale1, locale2);
        }
        catch (ClassNotFoundException localClassNotFoundException2)
        {
          Class localClass2;
          return null;
        }
        localClassNotFoundException1 = localClassNotFoundException1;
        localClass2 = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
        continue;
      }
      label117:
      e locale2 = null;
      e locale1 = null;
    }
  }
  
  private boolean api23IsCleartextTrafficPermitted(String paramString, Class<?> paramClass, Object paramObject)
    throws InvocationTargetException, IllegalAccessException
  {
    try
    {
      boolean bool = ((Boolean)paramClass.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(paramObject, new Object[0])).booleanValue();
      return bool;
    }
    catch (NoSuchMethodException paramClass) {}
    return super.isCleartextTrafficPermitted(paramString);
  }
  
  private boolean api24IsCleartextTrafficPermitted(String paramString, Class<?> paramClass, Object paramObject)
    throws InvocationTargetException, IllegalAccessException
  {
    try
    {
      boolean bool = ((Boolean)paramClass.getMethod("isCleartextTrafficPermitted", new Class[] { String.class }).invoke(paramObject, new Object[] { paramString })).booleanValue();
      return bool;
    }
    catch (NoSuchMethodException localNoSuchMethodException) {}
    return api23IsCleartextTrafficPermitted(paramString, paramClass, paramObject);
  }
  
  private static boolean supportsAlpn()
  {
    if (Security.getProvider("GMSCore_OpenSSL") != null) {
      return true;
    }
    try
    {
      Class.forName("android.net.Network");
      return true;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return false;
  }
  
  public final okhttp3.internal.h.c a(X509TrustManager paramX509TrustManager)
  {
    try
    {
      Object localObject = Class.forName("android.net.http.X509TrustManagerExtensions");
      localObject = new a(((Class)localObject).getConstructor(new Class[] { X509TrustManager.class }).newInstance(new Object[] { paramX509TrustManager }), ((Class)localObject).getMethod("checkServerTrusted", new Class[] { X509Certificate[].class, String.class, String.class }));
      return (okhttp3.internal.h.c)localObject;
    }
    catch (Exception localException) {}
    return super.a(paramX509TrustManager);
  }
  
  public final okhttp3.internal.h.e b(X509TrustManager paramX509TrustManager)
  {
    try
    {
      Object localObject = paramX509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", new Class[] { X509Certificate.class });
      ((Method)localObject).setAccessible(true);
      localObject = new b(paramX509TrustManager, (Method)localObject);
      return (okhttp3.internal.h.e)localObject;
    }
    catch (NoSuchMethodException localNoSuchMethodException) {}
    return super.b(paramX509TrustManager);
  }
  
  public final void configureTlsExtensions(SSLSocket paramSSLSocket, String paramString, List<u> paramList)
  {
    if (paramString != null)
    {
      this.dbL.invokeOptionalWithoutCheckedException(paramSSLSocket, new Object[] { Boolean.valueOf(true) });
      this.dbM.invokeOptionalWithoutCheckedException(paramSSLSocket, new Object[] { paramString });
    }
    if ((this.dbO != null) && (this.dbO.isSupported(paramSSLSocket)))
    {
      paramString = new d.c();
      int j = paramList.size();
      int i = 0;
      while (i < j)
      {
        u localu = (u)paramList.get(i);
        if (localu != u.cZe)
        {
          paramString.fV(localu.toString().length());
          paramString.fE(localu.toString());
        }
        i += 1;
      }
      paramString = paramString.KA();
      this.dbO.invokeWithoutCheckedException(paramSSLSocket, new Object[] { paramString });
    }
  }
  
  public final void connectSocket(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
    throws IOException
  {
    try
    {
      paramSocket.connect(paramInetSocketAddress, paramInt);
      return;
    }
    catch (AssertionError paramSocket)
    {
      if (okhttp3.internal.c.isAndroidGetsocknameError(paramSocket)) {
        throw new IOException(paramSocket);
      }
      throw paramSocket;
    }
    catch (SecurityException paramSocket)
    {
      paramInetSocketAddress = new IOException("Exception in connect");
      paramInetSocketAddress.initCause(paramSocket);
      throw paramInetSocketAddress;
    }
    catch (ClassCastException paramSocket)
    {
      if (Build.VERSION.SDK_INT == 26)
      {
        paramInetSocketAddress = new IOException("Exception in connect");
        paramInetSocketAddress.initCause(paramSocket);
        throw paramInetSocketAddress;
      }
      throw paramSocket;
    }
  }
  
  @Nullable
  public final String getSelectedProtocol(SSLSocket paramSSLSocket)
  {
    if (this.dbN == null) {
      return null;
    }
    if (!this.dbN.isSupported(paramSSLSocket)) {
      return null;
    }
    paramSSLSocket = (byte[])this.dbN.invokeWithoutCheckedException(paramSSLSocket, new Object[0]);
    if (paramSSLSocket != null) {
      return new String(paramSSLSocket, okhttp3.internal.c.UTF_8);
    }
    return null;
  }
  
  public final Object getStackTraceForCloseable(String paramString)
  {
    return this.dbP.createAndOpen(paramString);
  }
  
  public final boolean isCleartextTrafficPermitted(String paramString)
  {
    try
    {
      Class localClass = Class.forName("android.security.NetworkSecurityPolicy");
      boolean bool = api24IsCleartextTrafficPermitted(paramString, localClass, localClass.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
      return bool;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      return super.isCleartextTrafficPermitted(paramString);
    }
    catch (IllegalAccessException paramString)
    {
      throw okhttp3.internal.c.assertionError("unable to determine cleartext support", paramString);
    }
    catch (IllegalArgumentException paramString)
    {
      for (;;) {}
    }
    catch (InvocationTargetException paramString)
    {
      for (;;) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
  
  public final void log(int paramInt, String paramString, Throwable paramThrowable)
  {
    int i;
    String str;
    int k;
    label52:
    int j;
    if (paramInt == 5)
    {
      i = 5;
      str = paramString;
      if (paramThrowable != null) {
        str = paramString + '\n' + Log.getStackTraceString(paramThrowable);
      }
      paramInt = 0;
      k = str.length();
      if (paramInt >= k) {
        break label131;
      }
      j = str.indexOf('\n', paramInt);
      if (j == -1) {
        break label124;
      }
    }
    for (;;)
    {
      int m = Math.min(j, paramInt + 4000);
      Log.println(i, "OkHttp", str.substring(paramInt, m));
      if (m >= j)
      {
        paramInt = m + 1;
        break label52;
        i = 3;
        break;
        label124:
        j = k;
        continue;
        label131:
        return;
      }
      paramInt = m;
    }
  }
  
  public final void logCloseableLeak(String paramString, Object paramObject)
  {
    if (!this.dbP.warnIfOpen(paramObject)) {
      log(5, paramString, null);
    }
  }
  
  static final class a
    extends okhttp3.internal.h.c
  {
    private final Method checkServerTrusted;
    private final Object x509TrustManagerExtensions;
    
    a(Object paramObject, Method paramMethod)
    {
      this.x509TrustManagerExtensions = paramObject;
      this.checkServerTrusted = paramMethod;
    }
    
    public final List<Certificate> clean(List<Certificate> paramList, String paramString)
      throws SSLPeerUnverifiedException
    {
      try
      {
        paramList = (X509Certificate[])paramList.toArray(new X509Certificate[paramList.size()]);
        paramList = (List)this.checkServerTrusted.invoke(this.x509TrustManagerExtensions, new Object[] { paramList, "RSA", paramString });
        return paramList;
      }
      catch (InvocationTargetException paramList)
      {
        paramString = new SSLPeerUnverifiedException(paramList.getMessage());
        paramString.initCause(paramList);
        throw paramString;
      }
      catch (IllegalAccessException paramList)
      {
        throw new AssertionError(paramList);
      }
    }
    
    public final boolean equals(Object paramObject)
    {
      return paramObject instanceof a;
    }
    
    public final int hashCode()
    {
      return 0;
    }
  }
  
  static final class b
    implements okhttp3.internal.h.e
  {
    private final Method findByIssuerAndSignatureMethod;
    private final X509TrustManager trustManager;
    
    b(X509TrustManager paramX509TrustManager, Method paramMethod)
    {
      this.findByIssuerAndSignatureMethod = paramMethod;
      this.trustManager = paramX509TrustManager;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (paramObject == this) {}
      do
      {
        return true;
        if (!(paramObject instanceof b)) {
          return false;
        }
        paramObject = (b)paramObject;
      } while ((this.trustManager.equals(((b)paramObject).trustManager)) && (this.findByIssuerAndSignatureMethod.equals(((b)paramObject).findByIssuerAndSignatureMethod)));
      return false;
    }
    
    public final X509Certificate findByIssuerAndSignature(X509Certificate paramX509Certificate)
    {
      try
      {
        paramX509Certificate = (TrustAnchor)this.findByIssuerAndSignatureMethod.invoke(this.trustManager, new Object[] { paramX509Certificate });
        if (paramX509Certificate != null)
        {
          paramX509Certificate = paramX509Certificate.getTrustedCert();
          return paramX509Certificate;
        }
        return null;
      }
      catch (IllegalAccessException paramX509Certificate)
      {
        throw okhttp3.internal.c.assertionError("unable to get issues and signature", paramX509Certificate);
      }
      catch (InvocationTargetException paramX509Certificate) {}
      return null;
    }
    
    public final int hashCode()
    {
      return this.trustManager.hashCode() + this.findByIssuerAndSignatureMethod.hashCode() * 31;
    }
  }
  
  static final class c
  {
    private final Method getMethod;
    private final Method openMethod;
    private final Method warnIfOpenMethod;
    
    private c(Method paramMethod1, Method paramMethod2, Method paramMethod3)
    {
      this.getMethod = paramMethod1;
      this.openMethod = paramMethod2;
      this.warnIfOpenMethod = paramMethod3;
    }
    
    static c Nd()
    {
      try
      {
        Object localObject1 = Class.forName("dalvik.system.CloseGuard");
        localMethod2 = ((Class)localObject1).getMethod("get", new Class[0]);
        localMethod1 = ((Class)localObject1).getMethod("open", new Class[] { String.class });
        localObject1 = ((Class)localObject1).getMethod("warnIfOpen", new Class[0]);
        return new c(localMethod2, localMethod1, (Method)localObject1);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Object localObject2 = null;
          Method localMethod1 = null;
          Method localMethod2 = null;
        }
      }
    }
    
    final Object createAndOpen(String paramString)
    {
      if (this.getMethod != null) {
        try
        {
          Object localObject = this.getMethod.invoke(null, new Object[0]);
          this.openMethod.invoke(localObject, new Object[] { paramString });
          return localObject;
        }
        catch (Exception paramString) {}
      }
      return null;
    }
    
    final boolean warnIfOpen(Object paramObject)
    {
      boolean bool = false;
      if (paramObject != null) {}
      try
      {
        this.warnIfOpenMethod.invoke(paramObject, new Object[0]);
        bool = true;
        return bool;
      }
      catch (Exception paramObject) {}
      return false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/g/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */