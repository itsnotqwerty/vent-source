package io.intercom.android.sdk.api;

import android.net.TrafficStats;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import javax.net.SocketFactory;

public class TaggingSocketFactory
  extends SocketFactory
{
  private final SocketFactory defaultFactory;
  private final int threadStatsTag;
  
  public TaggingSocketFactory(SocketFactory paramSocketFactory, int paramInt)
  {
    this.defaultFactory = paramSocketFactory;
    this.threadStatsTag = paramInt;
  }
  
  private Socket withTag(Socket paramSocket)
    throws IOException
  {
    TrafficStats.setThreadStatsTag(this.threadStatsTag);
    return paramSocket;
  }
  
  public Socket createSocket()
    throws IOException
  {
    return withTag(this.defaultFactory.createSocket());
  }
  
  public Socket createSocket(String paramString, int paramInt)
    throws IOException, UnknownHostException
  {
    return withTag(this.defaultFactory.createSocket(paramString, paramInt));
  }
  
  public Socket createSocket(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
    throws IOException, UnknownHostException
  {
    return withTag(this.defaultFactory.createSocket(paramString, paramInt1, paramInetAddress, paramInt2));
  }
  
  public Socket createSocket(InetAddress paramInetAddress, int paramInt)
    throws IOException
  {
    return withTag(this.defaultFactory.createSocket(paramInetAddress, paramInt));
  }
  
  public Socket createSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
    throws IOException
  {
    return withTag(this.defaultFactory.createSocket(paramInetAddress1, paramInt1, paramInetAddress2, paramInt2));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/TaggingSocketFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */