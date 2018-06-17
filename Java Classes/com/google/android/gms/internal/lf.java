package com.google.android.gms.internal;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

final class lf
  extends SSLSocketFactory
{
  private final SSLSocketFactory aXp;
  
  lf()
  {
    this(HttpsURLConnection.getDefaultSSLSocketFactory());
  }
  
  private lf(SSLSocketFactory paramSSLSocketFactory)
  {
    this.aXp = paramSSLSocketFactory;
  }
  
  private static SSLSocket a(SSLSocket paramSSLSocket)
  {
    return new lg(paramSSLSocket);
  }
  
  public final Socket createSocket()
    throws IOException
  {
    return a((SSLSocket)this.aXp.createSocket());
  }
  
  public final Socket createSocket(String paramString, int paramInt)
    throws IOException
  {
    return a((SSLSocket)this.aXp.createSocket(paramString, paramInt));
  }
  
  public final Socket createSocket(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
    throws IOException
  {
    return a((SSLSocket)this.aXp.createSocket(paramString, paramInt1, paramInetAddress, paramInt2));
  }
  
  public final Socket createSocket(InetAddress paramInetAddress, int paramInt)
    throws IOException
  {
    return a((SSLSocket)this.aXp.createSocket(paramInetAddress, paramInt));
  }
  
  public final Socket createSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
    throws IOException
  {
    return a((SSLSocket)this.aXp.createSocket(paramInetAddress1, paramInt1, paramInetAddress2, paramInt2));
  }
  
  public final Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
    throws IOException
  {
    return a((SSLSocket)this.aXp.createSocket(paramSocket, paramString, paramInt, paramBoolean));
  }
  
  public final String[] getDefaultCipherSuites()
  {
    return this.aXp.getDefaultCipherSuites();
  }
  
  public final String[] getSupportedCipherSuites()
  {
    return this.aXp.getSupportedCipherSuites();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */