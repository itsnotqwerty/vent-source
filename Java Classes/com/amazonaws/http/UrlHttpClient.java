package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class UrlHttpClient
  implements HttpClient
{
  private static final Log alS = LogFactory.getLog(UrlHttpClient.class);
  private final ClientConfiguration anS;
  private SSLContext aoi = null;
  
  public UrlHttpClient(ClientConfiguration paramClientConfiguration)
  {
    this.anS = paramClientConfiguration;
  }
  
  private static void S(String paramString)
  {
    alS.debug(paramString);
  }
  
  private static HttpResponse a(HttpRequest paramHttpRequest, HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    String str = paramHttpURLConnection.getResponseMessage();
    int i = paramHttpURLConnection.getResponseCode();
    Object localObject2 = paramHttpURLConnection.getErrorStream();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = localObject2;
      if (paramHttpRequest.method.equals("HEAD")) {}
    }
    try
    {
      localObject1 = paramHttpURLConnection.getInputStream();
      paramHttpRequest = HttpResponse.jE();
      paramHttpRequest.statusCode = i;
      paramHttpRequest.aog = str;
      paramHttpRequest.amE = ((InputStream)localObject1);
      paramHttpURLConnection = paramHttpURLConnection.getHeaderFields().entrySet().iterator();
      while (paramHttpURLConnection.hasNext())
      {
        localObject2 = (Map.Entry)paramHttpURLConnection.next();
        if (((Map.Entry)localObject2).getKey() != null)
        {
          localObject1 = (String)((Map.Entry)localObject2).getKey();
          localObject2 = (String)((List)((Map.Entry)localObject2).getValue()).get(0);
          paramHttpRequest.headers.put(localObject1, localObject2);
        }
      }
      return new HttpResponse(paramHttpRequest.aog, paramHttpRequest.statusCode, Collections.unmodifiableMap(paramHttpRequest.headers), paramHttpRequest.amE, (byte)0);
    }
    catch (IOException paramHttpRequest)
    {
      for (;;)
      {
        localObject1 = localObject2;
      }
    }
  }
  
  private static void a(InputStream paramInputStream, OutputStream paramOutputStream, CurlBuilder paramCurlBuilder, ByteBuffer paramByteBuffer)
    throws IOException
  {
    byte[] arrayOfByte = new byte[' '];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i != -1)
      {
        if (paramByteBuffer != null) {}
        try
        {
          paramByteBuffer.put(arrayOfByte, 0, i);
          paramOutputStream.write(arrayOfByte, 0, i);
        }
        catch (BufferOverflowException localBufferOverflowException)
        {
          for (;;)
          {
            paramCurlBuilder.aol = true;
          }
        }
      }
    }
  }
  
  public final HttpResponse a(HttpRequest paramHttpRequest)
    throws IOException
  {
    Object localObject2 = null;
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)paramHttpRequest.aoe.toURL().openConnection();
    CurlBuilder localCurlBuilder;
    if (this.anS.amy) {
      localCurlBuilder = new CurlBuilder(paramHttpRequest.aoe.toURL());
    }
    Object localObject3;
    for (;;)
    {
      localHttpURLConnection.setConnectTimeout(this.anS.connectionTimeout);
      localHttpURLConnection.setReadTimeout(this.anS.ams);
      localHttpURLConnection.setInstanceFollowRedirects(false);
      localHttpURLConnection.setUseCaches(false);
      if (paramHttpRequest.aof) {
        localHttpURLConnection.setChunkedStreamingMode(0);
      }
      if ((localHttpURLConnection instanceof HttpsURLConnection))
      {
        localObject1 = (HttpsURLConnection)localHttpURLConnection;
        if (this.anS.amx != null) {
          if (this.aoi == null) {
            localObject3 = this.anS.amx;
          }
        }
      }
      try
      {
        this.aoi = SSLContext.getInstance("TLS");
        this.aoi.init(null, new TrustManager[] { localObject3 }, null);
        ((HttpsURLConnection)localObject1).setSSLSocketFactory(this.aoi.getSocketFactory());
        if ((paramHttpRequest.headers != null) && (!paramHttpRequest.headers.isEmpty()))
        {
          if (localCurlBuilder != null)
          {
            localObject1 = paramHttpRequest.headers;
            localCurlBuilder.aoj.clear();
            localCurlBuilder.aoj.putAll((Map)localObject1);
          }
          localObject1 = paramHttpRequest.headers.entrySet().iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject3 = (Map.Entry)((Iterator)localObject1).next();
            String str = (String)((Map.Entry)localObject3).getKey();
            if ((!str.equals("Content-Length")) && (!str.equals("Host")))
            {
              str.equals("Expect");
              localHttpURLConnection.setRequestProperty(str, (String)((Map.Entry)localObject3).getValue());
              continue;
              localCurlBuilder = null;
            }
          }
        }
      }
      catch (GeneralSecurityException paramHttpRequest)
      {
        throw new RuntimeException(paramHttpRequest);
      }
    }
    Object localObject1 = paramHttpRequest.method;
    localHttpURLConnection.setRequestMethod((String)localObject1);
    if (localCurlBuilder != null) {
      localCurlBuilder.method = ((String)localObject1);
    }
    if ((paramHttpRequest.amE != null) && (paramHttpRequest.getContentLength() >= 0L))
    {
      localHttpURLConnection.setDoOutput(true);
      if (!paramHttpRequest.aof) {
        localHttpURLConnection.setFixedLengthStreamingMode((int)paramHttpRequest.getContentLength());
      }
      localObject3 = localHttpURLConnection.getOutputStream();
      localObject1 = localObject2;
      if (localCurlBuilder != null)
      {
        if (paramHttpRequest.getContentLength() < 2147483647L) {
          localObject1 = ByteBuffer.allocate((int)paramHttpRequest.getContentLength());
        }
      }
      else
      {
        a(paramHttpRequest.amE, (OutputStream)localObject3, localCurlBuilder, (ByteBuffer)localObject1);
        if ((localCurlBuilder != null) && (localObject1 != null) && (((ByteBuffer)localObject1).position() != 0)) {
          localCurlBuilder.aok = new String(((ByteBuffer)localObject1).array(), "UTF-8");
        }
        ((OutputStream)localObject3).flush();
        ((OutputStream)localObject3).close();
      }
    }
    else if (localCurlBuilder != null)
    {
      if (!localCurlBuilder.isValid()) {
        break label510;
      }
      S(localCurlBuilder.jG());
    }
    for (;;)
    {
      return a(paramHttpRequest, localHttpURLConnection);
      localCurlBuilder.aol = true;
      localObject1 = localObject2;
      break;
      label510:
      S("Failed to create curl, content too long");
    }
  }
  
  private final class CurlBuilder
  {
    final HashMap<String, String> aoj = new HashMap();
    String aok = null;
    boolean aol = false;
    String method = null;
    private final URL url;
    
    public CurlBuilder(URL paramURL)
    {
      if (paramURL == null) {
        throw new IllegalArgumentException("Must have a valid url");
      }
      this.url = paramURL;
    }
    
    public final boolean isValid()
    {
      return !this.aol;
    }
    
    public final String jG()
    {
      if (!isValid()) {
        throw new IllegalStateException("Invalid state, cannot create curl command");
      }
      StringBuilder localStringBuilder = new StringBuilder("curl");
      if (this.method != null) {
        localStringBuilder.append(" -X ").append(this.method);
      }
      Iterator localIterator = this.aoj.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append(" -H \"").append((String)localEntry.getKey()).append(":").append((String)localEntry.getValue()).append("\"");
      }
      if (this.aok != null) {
        localStringBuilder.append(" -d '").append(this.aok).append("'");
      }
      return " " + this.url.toString();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/http/UrlHttpClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */