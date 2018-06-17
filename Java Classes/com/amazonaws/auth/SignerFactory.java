package com.amazonaws.auth;

import com.amazonaws.internal.config.InternalConfig;
import com.amazonaws.internal.config.InternalConfig.Factory;
import com.amazonaws.internal.config.SignerConfig;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class SignerFactory
{
  private static final Map<String, Class<? extends Signer>> anC;
  
  static
  {
    ConcurrentHashMap localConcurrentHashMap = new ConcurrentHashMap();
    anC = localConcurrentHashMap;
    localConcurrentHashMap.put("QueryStringSignerType", QueryStringSigner.class);
    anC.put("AWS3SignerType", AWS3Signer.class);
    anC.put("AWS4SignerType", AWS4Signer.class);
    anC.put("NoOpSignerType", NoOpSigner.class);
  }
  
  public static void a(String paramString, Class<? extends Signer> paramClass)
  {
    anC.put(paramString, paramClass);
  }
  
  public static Signer d(String paramString1, String paramString2)
  {
    InternalConfig localInternalConfig = InternalConfig.Factory.jI();
    if (paramString1 == null) {
      throw new IllegalArgumentException();
    }
    Object localObject;
    if (paramString2 != null)
    {
      localObject = paramString1 + "/" + paramString2;
      SignerConfig localSignerConfig = (SignerConfig)localInternalConfig.aop.get(localObject);
      localObject = localSignerConfig;
      if (localSignerConfig == null)
      {
        paramString2 = (SignerConfig)localInternalConfig.aoq.get(paramString2);
        localObject = paramString2;
        if (paramString2 != null) {}
      }
    }
    else
    {
      paramString2 = (SignerConfig)localInternalConfig.aor.get(paramString1);
      localObject = paramString2;
      if (paramString2 == null) {
        localObject = localInternalConfig.aoo;
      }
    }
    return f(((SignerConfig)localObject).aov, paramString1);
  }
  
  public static Signer e(String paramString1, String paramString2)
  {
    return f(paramString1, paramString2);
  }
  
  private static Signer f(String paramString1, String paramString2)
  {
    paramString1 = (Class)anC.get(paramString1);
    if (paramString1 == null) {
      throw new IllegalArgumentException();
    }
    try
    {
      Signer localSigner = (Signer)paramString1.newInstance();
      if ((localSigner instanceof ServiceAwareSigner)) {
        ((ServiceAwareSigner)localSigner).setServiceName(paramString2);
      }
      return localSigner;
    }
    catch (InstantiationException paramString2)
    {
      throw new IllegalStateException("Cannot create an instance of " + paramString1.getName(), paramString2);
    }
    catch (IllegalAccessException paramString2)
    {
      throw new IllegalStateException("Cannot create an instance of " + paramString1.getName(), paramString2);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/SignerFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */