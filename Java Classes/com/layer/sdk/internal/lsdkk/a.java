package com.layer.sdk.internal.lsdkk;

import com.layer.b.a.f;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import javax.net.ssl.KeyManagerFactory;

public class a
  implements f
{
  public KeyFactory a()
    throws NoSuchAlgorithmException
  {
    return KeyFactory.getInstance("RSA");
  }
  
  public KeyStore b()
    throws KeyStoreException
  {
    return KeyStore.getInstance(KeyStore.getDefaultType());
  }
  
  public KeyManagerFactory c()
    throws NoSuchAlgorithmException
  {
    return KeyManagerFactory.getInstance("X509");
  }
  
  public KeyPairGenerator d()
    throws NoSuchAlgorithmException
  {
    return KeyPairGenerator.getInstance("RSA");
  }
  
  public CertificateFactory e()
    throws CertificateException
  {
    return CertificateFactory.getInstance("X.509");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */