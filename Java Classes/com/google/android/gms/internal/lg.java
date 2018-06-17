package com.google.android.gms.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

final class lg
  extends SSLSocket
{
  private final SSLSocket aXq;
  
  lg(SSLSocket paramSSLSocket)
  {
    this.aXq = paramSSLSocket;
  }
  
  public final void addHandshakeCompletedListener(HandshakeCompletedListener paramHandshakeCompletedListener)
  {
    this.aXq.addHandshakeCompletedListener(paramHandshakeCompletedListener);
  }
  
  public final void bind(SocketAddress paramSocketAddress)
    throws IOException
  {
    this.aXq.bind(paramSocketAddress);
  }
  
  public final void close()
    throws IOException
  {
    try
    {
      this.aXq.close();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void connect(SocketAddress paramSocketAddress)
    throws IOException
  {
    this.aXq.connect(paramSocketAddress);
  }
  
  public final void connect(SocketAddress paramSocketAddress, int paramInt)
    throws IOException
  {
    this.aXq.connect(paramSocketAddress, paramInt);
  }
  
  public final boolean equals(Object paramObject)
  {
    return this.aXq.equals(paramObject);
  }
  
  public final SocketChannel getChannel()
  {
    return this.aXq.getChannel();
  }
  
  public final boolean getEnableSessionCreation()
  {
    return this.aXq.getEnableSessionCreation();
  }
  
  public final String[] getEnabledCipherSuites()
  {
    return this.aXq.getEnabledCipherSuites();
  }
  
  public final String[] getEnabledProtocols()
  {
    return this.aXq.getEnabledProtocols();
  }
  
  public final InetAddress getInetAddress()
  {
    return this.aXq.getInetAddress();
  }
  
  public final InputStream getInputStream()
    throws IOException
  {
    return this.aXq.getInputStream();
  }
  
  public final boolean getKeepAlive()
    throws SocketException
  {
    return this.aXq.getKeepAlive();
  }
  
  public final InetAddress getLocalAddress()
  {
    return this.aXq.getLocalAddress();
  }
  
  public final int getLocalPort()
  {
    return this.aXq.getLocalPort();
  }
  
  public final SocketAddress getLocalSocketAddress()
  {
    return this.aXq.getLocalSocketAddress();
  }
  
  public final boolean getNeedClientAuth()
  {
    return this.aXq.getNeedClientAuth();
  }
  
  public final boolean getOOBInline()
    throws SocketException
  {
    return this.aXq.getOOBInline();
  }
  
  public final OutputStream getOutputStream()
    throws IOException
  {
    return this.aXq.getOutputStream();
  }
  
  public final int getPort()
  {
    return this.aXq.getPort();
  }
  
  public final int getReceiveBufferSize()
    throws SocketException
  {
    try
    {
      int i = this.aXq.getReceiveBufferSize();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final SocketAddress getRemoteSocketAddress()
  {
    return this.aXq.getRemoteSocketAddress();
  }
  
  public final boolean getReuseAddress()
    throws SocketException
  {
    return this.aXq.getReuseAddress();
  }
  
  public final int getSendBufferSize()
    throws SocketException
  {
    try
    {
      int i = this.aXq.getSendBufferSize();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final SSLSession getSession()
  {
    return this.aXq.getSession();
  }
  
  public final int getSoLinger()
    throws SocketException
  {
    return this.aXq.getSoLinger();
  }
  
  public final int getSoTimeout()
    throws SocketException
  {
    try
    {
      int i = this.aXq.getSoTimeout();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final String[] getSupportedCipherSuites()
  {
    return this.aXq.getSupportedCipherSuites();
  }
  
  public final String[] getSupportedProtocols()
  {
    return this.aXq.getSupportedProtocols();
  }
  
  public final boolean getTcpNoDelay()
    throws SocketException
  {
    return this.aXq.getTcpNoDelay();
  }
  
  public final int getTrafficClass()
    throws SocketException
  {
    return this.aXq.getTrafficClass();
  }
  
  public final boolean getUseClientMode()
  {
    return this.aXq.getUseClientMode();
  }
  
  public final boolean getWantClientAuth()
  {
    return this.aXq.getWantClientAuth();
  }
  
  public final boolean isBound()
  {
    return this.aXq.isBound();
  }
  
  public final boolean isClosed()
  {
    return this.aXq.isClosed();
  }
  
  public final boolean isConnected()
  {
    return this.aXq.isConnected();
  }
  
  public final boolean isInputShutdown()
  {
    return this.aXq.isInputShutdown();
  }
  
  public final boolean isOutputShutdown()
  {
    return this.aXq.isOutputShutdown();
  }
  
  public final void removeHandshakeCompletedListener(HandshakeCompletedListener paramHandshakeCompletedListener)
  {
    this.aXq.removeHandshakeCompletedListener(paramHandshakeCompletedListener);
  }
  
  public final void sendUrgentData(int paramInt)
    throws IOException
  {
    this.aXq.sendUrgentData(paramInt);
  }
  
  public final void setEnableSessionCreation(boolean paramBoolean)
  {
    this.aXq.setEnableSessionCreation(paramBoolean);
  }
  
  public final void setEnabledCipherSuites(String[] paramArrayOfString)
  {
    this.aXq.setEnabledCipherSuites(paramArrayOfString);
  }
  
  public final void setEnabledProtocols(String[] paramArrayOfString)
  {
    String[] arrayOfString = paramArrayOfString;
    if (paramArrayOfString != null)
    {
      arrayOfString = paramArrayOfString;
      if (Arrays.asList(paramArrayOfString).contains("SSLv3"))
      {
        paramArrayOfString = new ArrayList(Arrays.asList(this.aXq.getEnabledProtocols()));
        if (paramArrayOfString.size() > 1) {
          paramArrayOfString.remove("SSLv3");
        }
        arrayOfString = (String[])paramArrayOfString.toArray(new String[paramArrayOfString.size()]);
      }
    }
    this.aXq.setEnabledProtocols(arrayOfString);
  }
  
  public final void setKeepAlive(boolean paramBoolean)
    throws SocketException
  {
    this.aXq.setKeepAlive(paramBoolean);
  }
  
  public final void setNeedClientAuth(boolean paramBoolean)
  {
    this.aXq.setNeedClientAuth(paramBoolean);
  }
  
  public final void setOOBInline(boolean paramBoolean)
    throws SocketException
  {
    this.aXq.setOOBInline(paramBoolean);
  }
  
  public final void setPerformancePreferences(int paramInt1, int paramInt2, int paramInt3)
  {
    this.aXq.setPerformancePreferences(paramInt1, paramInt2, paramInt3);
  }
  
  public final void setReceiveBufferSize(int paramInt)
    throws SocketException
  {
    try
    {
      this.aXq.setReceiveBufferSize(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void setReuseAddress(boolean paramBoolean)
    throws SocketException
  {
    this.aXq.setReuseAddress(paramBoolean);
  }
  
  public final void setSendBufferSize(int paramInt)
    throws SocketException
  {
    try
    {
      this.aXq.setSendBufferSize(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void setSoLinger(boolean paramBoolean, int paramInt)
    throws SocketException
  {
    this.aXq.setSoLinger(paramBoolean, paramInt);
  }
  
  public final void setSoTimeout(int paramInt)
    throws SocketException
  {
    try
    {
      this.aXq.setSoTimeout(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void setTcpNoDelay(boolean paramBoolean)
    throws SocketException
  {
    this.aXq.setTcpNoDelay(paramBoolean);
  }
  
  public final void setTrafficClass(int paramInt)
    throws SocketException
  {
    this.aXq.setTrafficClass(paramInt);
  }
  
  public final void setUseClientMode(boolean paramBoolean)
  {
    this.aXq.setUseClientMode(paramBoolean);
  }
  
  public final void setWantClientAuth(boolean paramBoolean)
  {
    this.aXq.setWantClientAuth(paramBoolean);
  }
  
  public final void shutdownInput()
    throws IOException
  {
    this.aXq.shutdownInput();
  }
  
  public final void shutdownOutput()
    throws IOException
  {
    this.aXq.shutdownOutput();
  }
  
  public final void startHandshake()
    throws IOException
  {
    this.aXq.startHandshake();
  }
  
  public final String toString()
  {
    return this.aXq.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */