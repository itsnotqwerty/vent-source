package com.layer.b.c;

import com.layer.b.e.a;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

final class c
  extends SSLSocketFactory
{
  private final d buH;
  private final SSLContext buj;
  private final SSLSocketFactory buk;
  
  public c(d paramd)
    throws IOException
  {
    try
    {
      this.buH = paramd;
      this.buj = SSLContext.getInstance("TLS");
      this.buj.init(paramd.wS(), new TrustManager[] { new X509TrustManager()
      {
        public final void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
          throws CertificateException
        {}
        
        public final void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
          throws CertificateException
        {
          if (paramAnonymousArrayOfX509Certificate == null)
          {
            if (a.a(6)) {
              a.c("checkServerTrusted: X509Certificate array is null");
            }
            throw new IllegalArgumentException("checkServerTrusted: X509Certificate array is null");
          }
          if (paramAnonymousArrayOfX509Certificate.length <= 0)
          {
            if (a.a(6)) {
              a.c("checkServerTrusted: X509Certificate is empty");
            }
            throw new IllegalArgumentException("checkServerTrusted: X509Certificate is empty");
          }
          int j = paramAnonymousArrayOfX509Certificate.length;
          int i = 0;
          while (i < j)
          {
            paramAnonymousArrayOfX509Certificate[i].checkValidity();
            i += 1;
          }
          paramAnonymousString = c.a(c.this).wT();
          int k = 0;
          i = 0;
          int m = i;
          if (k < paramAnonymousArrayOfX509Certificate.length)
          {
            byte[] arrayOfByte = paramAnonymousArrayOfX509Certificate[k].getPublicKey().getEncoded();
            m = 0;
            for (;;)
            {
              j = i;
              if (m < paramAnonymousString.length)
              {
                if (Arrays.equals(arrayOfByte, paramAnonymousString[m].getEncoded())) {
                  j = 1;
                }
              }
              else
              {
                m = j;
                if (j != 0) {
                  break label185;
                }
                k += 1;
                i = j;
                break;
              }
              m += 1;
            }
          }
          label185:
          if (m == 0)
          {
            if (a.a(6)) {
              a.c("checkServerTrusted: CertificateException : Pinning failure");
            }
            throw new CertificateException("Server is not trusted");
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
    catch (GeneralSecurityException paramd)
    {
      if (a.a(6)) {
        a.g("Authentication failed", paramd);
      }
      throw new IllegalStateException("Authentication failed", paramd);
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/c/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */