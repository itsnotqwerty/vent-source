package io.intercom.okhttp3.internal;

import io.intercom.okhttp3.Address;
import io.intercom.okhttp3.Call;
import io.intercom.okhttp3.ConnectionPool;
import io.intercom.okhttp3.ConnectionSpec;
import io.intercom.okhttp3.Headers.Builder;
import io.intercom.okhttp3.HttpUrl;
import io.intercom.okhttp3.OkHttpClient;
import io.intercom.okhttp3.OkHttpClient.Builder;
import io.intercom.okhttp3.Request;
import io.intercom.okhttp3.Response.Builder;
import io.intercom.okhttp3.Route;
import io.intercom.okhttp3.internal.cache.InternalCache;
import io.intercom.okhttp3.internal.connection.RealConnection;
import io.intercom.okhttp3.internal.connection.RouteDatabase;
import io.intercom.okhttp3.internal.connection.StreamAllocation;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.UnknownHostException;
import javax.net.ssl.SSLSocket;

public abstract class Internal
{
  public static Internal instance;
  
  public static void initializeInstanceForTests()
  {
    new OkHttpClient();
  }
  
  public abstract void addLenient(Headers.Builder paramBuilder, String paramString);
  
  public abstract void addLenient(Headers.Builder paramBuilder, String paramString1, String paramString2);
  
  public abstract void apply(ConnectionSpec paramConnectionSpec, SSLSocket paramSSLSocket, boolean paramBoolean);
  
  public abstract int code(Response.Builder paramBuilder);
  
  public abstract boolean connectionBecameIdle(ConnectionPool paramConnectionPool, RealConnection paramRealConnection);
  
  public abstract Socket deduplicate(ConnectionPool paramConnectionPool, Address paramAddress, StreamAllocation paramStreamAllocation);
  
  public abstract boolean equalsNonHost(Address paramAddress1, Address paramAddress2);
  
  public abstract RealConnection get(ConnectionPool paramConnectionPool, Address paramAddress, StreamAllocation paramStreamAllocation, Route paramRoute);
  
  public abstract HttpUrl getHttpUrlChecked(String paramString)
    throws MalformedURLException, UnknownHostException;
  
  public abstract Call newWebSocketCall(OkHttpClient paramOkHttpClient, Request paramRequest);
  
  public abstract void put(ConnectionPool paramConnectionPool, RealConnection paramRealConnection);
  
  public abstract RouteDatabase routeDatabase(ConnectionPool paramConnectionPool);
  
  public abstract void setCache(OkHttpClient.Builder paramBuilder, InternalCache paramInternalCache);
  
  public abstract StreamAllocation streamAllocation(Call paramCall);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/Internal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */