package com.layer.b.a;

import com.layer.b.e.a;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public final class c
  extends SSLSocketFactory
{
  private final SSLContext buj;
  private final SSLSocketFactory buk;
  
  public c()
    throws IOException
  {
    try
    {
      this.buj = SSLContext.getInstance("TLS");
      this.buj.init(wR(), new TrustManager[] { new X509TrustManager()
      {
        public final void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
          throws CertificateException
        {}
        
        public final void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
          throws CertificateException
        {
          if (paramAnonymousArrayOfX509Certificate == null) {
            throw new IllegalArgumentException("checkServerTrusted: X509Certificate array is null");
          }
          if (paramAnonymousArrayOfX509Certificate.length <= 0) {
            throw new IllegalArgumentException("checkServerTrusted: X509Certificate is empty");
          }
          int j = paramAnonymousArrayOfX509Certificate.length;
          int i = 0;
          while (i < j)
          {
            paramAnonymousArrayOfX509Certificate[i].checkValidity();
            i += 1;
          }
        }
        
        public final X509Certificate[] getAcceptedIssuers()
        {
          return null;
        }
      } }, null);
      this.buk = this.buj.getSocketFactory();
      return;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new IllegalStateException("Authentication failed", localGeneralSecurityException);
    }
  }
  
  private static KeyManager[] wR()
    throws NoSuchAlgorithmException, InvalidAlgorithmParameterException, UnrecoverableKeyException, KeyStoreException
  {
    KeyManagerFactory localKeyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
    KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
    try
    {
      localKeyStore.load(null, null);
      localKeyManagerFactory.init(localKeyStore, null);
      return localKeyManagerFactory.getKeyManagers();
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        if (a.a(6)) {
          a.g(localIOException.getMessage(), localIOException);
        }
      }
    }
    catch (CertificateException localCertificateException)
    {
      for (;;)
      {
        if (a.a(6)) {
          a.g(localCertificateException.getMessage(), localCertificateException);
        }
      }
    }
  }
  
  public final Socket createSocket()
    throws IOException
  {
    return this.buk.createSocket();
  }
  
  public final Socket createSocket(String paramString, int paramInt)
    throws IOException, UnknownHostException
  {
    return this.buk.createSocket(paramString, paramInt);
  }
  
  public final Socket createSocket(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
    throws IOException, UnknownHostException
  {
    return this.buk.createSocket(paramString, paramInt1, paramInetAddress, paramInt2);
  }
  
  public final Socket createSocket(InetAddress paramInetAddress, int paramInt)
    throws IOException
  {
    return this.buk.createSocket(paramInetAddress, paramInt);
  }
  
  public final Socket createSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
    throws IOException
  {
    return this.buk.createSocket(paramInetAddress1, paramInt1, paramInetAddress2, paramInt2);
  }
  
  public final Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
    throws IOException
  {
    return this.buk.createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
  
  public final String[] getDefaultCipherSuites()
  {
    return this.buk.getDefaultCipherSuites();
  }
  
  public final String[] getSupportedCipherSuites()
  {
    return this.buk.getSupportedCipherSuites();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */