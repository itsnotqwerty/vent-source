package io.intercom.okhttp3.internal.cache;

import io.intercom.okhttp3.CacheControl;
import io.intercom.okhttp3.Headers;
import io.intercom.okhttp3.Headers.Builder;
import io.intercom.okhttp3.HttpUrl;
import io.intercom.okhttp3.Request;
import io.intercom.okhttp3.Request.Builder;
import io.intercom.okhttp3.Response;
import io.intercom.okhttp3.Response.Builder;
import io.intercom.okhttp3.internal.Internal;
import io.intercom.okhttp3.internal.http.HttpDate;
import io.intercom.okhttp3.internal.http.HttpHeaders;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public final class CacheStrategy
{
  @Nullable
  public final Response cacheResponse;
  @Nullable
  public final Request networkRequest;
  
  CacheStrategy(Request paramRequest, Response paramResponse)
  {
    this.networkRequest = paramRequest;
    this.cacheResponse = paramResponse;
  }
  
  public static boolean isCacheable(Response paramResponse, Request paramRequest)
  {
    switch (paramResponse.code())
    {
    }
    do
    {
      return false;
    } while (((paramResponse.header("Expires") == null) && (paramResponse.cacheControl().maxAgeSeconds() == -1) && (!paramResponse.cacheControl().isPublic()) && (!paramResponse.cacheControl().isPrivate())) || (paramResponse.cacheControl().noStore()) || (paramRequest.cacheControl().noStore()));
    return true;
  }
  
  public static class Factory
  {
    private int ageSeconds = -1;
    final Response cacheResponse;
    private String etag;
    private Date expires;
    private Date lastModified;
    private String lastModifiedString;
    final long nowMillis;
    private long receivedResponseMillis;
    final Request request;
    private long sentRequestMillis;
    private Date servedDate;
    private String servedDateString;
    
    public Factory(long paramLong, Request paramRequest, Response paramResponse)
    {
      this.nowMillis = paramLong;
      this.request = paramRequest;
      this.cacheResponse = paramResponse;
      if (paramResponse != null)
      {
        this.sentRequestMillis = paramResponse.sentRequestAtMillis();
        this.receivedResponseMillis = paramResponse.receivedResponseAtMillis();
        paramRequest = paramResponse.headers();
        int i = 0;
        int j = paramRequest.size();
        if (i < j)
        {
          paramResponse = paramRequest.name(i);
          String str = paramRequest.value(i);
          if ("Date".equalsIgnoreCase(paramResponse))
          {
            this.servedDate = HttpDate.parse(str);
            this.servedDateString = str;
          }
          for (;;)
          {
            i += 1;
            break;
            if ("Expires".equalsIgnoreCase(paramResponse))
            {
              this.expires = HttpDate.parse(str);
            }
            else if ("Last-Modified".equalsIgnoreCase(paramResponse))
            {
              this.lastModified = HttpDate.parse(str);
              this.lastModifiedString = str;
            }
            else if ("ETag".equalsIgnoreCase(paramResponse))
            {
              this.etag = str;
            }
            else if ("Age".equalsIgnoreCase(paramResponse))
            {
              this.ageSeconds = HttpHeaders.parseSeconds(str, -1);
            }
          }
        }
      }
    }
    
    private long cacheResponseAge()
    {
      long l1 = 0L;
      if (this.servedDate != null) {
        l1 = Math.max(0L, this.receivedResponseMillis - this.servedDate.getTime());
      }
      long l2 = l1;
      if (this.ageSeconds != -1) {
        l2 = Math.max(l1, TimeUnit.SECONDS.toMillis(this.ageSeconds));
      }
      return l2 + (this.receivedResponseMillis - this.sentRequestMillis) + (this.nowMillis - this.receivedResponseMillis);
    }
    
    private long computeFreshnessLifetime()
    {
      CacheControl localCacheControl = this.cacheResponse.cacheControl();
      long l1;
      if (localCacheControl.maxAgeSeconds() != -1)
      {
        l1 = TimeUnit.SECONDS.toMillis(localCacheControl.maxAgeSeconds());
        return l1;
      }
      if (this.expires != null)
      {
        if (this.servedDate != null) {}
        for (l1 = this.servedDate.getTime();; l1 = this.receivedResponseMillis)
        {
          long l2 = this.expires.getTime() - l1;
          l1 = l2;
          if (l2 > 0L) {
            break;
          }
          return 0L;
        }
      }
      if ((this.lastModified != null) && (this.cacheResponse.request().url().query() == null))
      {
        if (this.servedDate != null) {}
        for (l1 = this.servedDate.getTime();; l1 = this.sentRequestMillis)
        {
          l1 -= this.lastModified.getTime();
          if (l1 <= 0L) {
            break;
          }
          return l1 / 10L;
        }
        return 0L;
      }
      return 0L;
    }
    
    private CacheStrategy getCandidate()
    {
      long l4 = 0L;
      if (this.cacheResponse == null) {
        return new CacheStrategy(this.request, null);
      }
      if ((this.request.isHttps()) && (this.cacheResponse.handshake() == null)) {
        return new CacheStrategy(this.request, null);
      }
      if (!CacheStrategy.isCacheable(this.cacheResponse, this.request)) {
        return new CacheStrategy(this.request, null);
      }
      Object localObject1 = this.request.cacheControl();
      if ((((CacheControl)localObject1).noCache()) || (hasConditions(this.request))) {
        return new CacheStrategy(this.request, null);
      }
      Object localObject2 = this.cacheResponse.cacheControl();
      if (((CacheControl)localObject2).immutable()) {
        return new CacheStrategy(null, this.cacheResponse);
      }
      long l5 = cacheResponseAge();
      long l2 = computeFreshnessLifetime();
      long l1 = l2;
      if (((CacheControl)localObject1).maxAgeSeconds() != -1) {
        l1 = Math.min(l2, TimeUnit.SECONDS.toMillis(((CacheControl)localObject1).maxAgeSeconds()));
      }
      if (((CacheControl)localObject1).minFreshSeconds() != -1) {}
      for (l2 = TimeUnit.SECONDS.toMillis(((CacheControl)localObject1).minFreshSeconds());; l2 = 0L)
      {
        long l3 = l4;
        if (!((CacheControl)localObject2).mustRevalidate())
        {
          l3 = l4;
          if (((CacheControl)localObject1).maxStaleSeconds() != -1) {
            l3 = TimeUnit.SECONDS.toMillis(((CacheControl)localObject1).maxStaleSeconds());
          }
        }
        if ((!((CacheControl)localObject2).noCache()) && (l5 + l2 < l3 + l1))
        {
          localObject1 = this.cacheResponse.newBuilder();
          if (l2 + l5 >= l1) {
            ((Response.Builder)localObject1).addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
          }
          if ((l5 > 86400000L) && (isFreshnessLifetimeHeuristic())) {
            ((Response.Builder)localObject1).addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
          }
          return new CacheStrategy(null, ((Response.Builder)localObject1).build());
        }
        if (this.etag != null)
        {
          localObject2 = "If-None-Match";
          localObject1 = this.etag;
        }
        for (;;)
        {
          Headers.Builder localBuilder = this.request.headers().newBuilder();
          Internal.instance.addLenient(localBuilder, (String)localObject2, (String)localObject1);
          return new CacheStrategy(this.request.newBuilder().headers(localBuilder.build()).build(), this.cacheResponse);
          if (this.lastModified != null)
          {
            localObject2 = "If-Modified-Since";
            localObject1 = this.lastModifiedString;
          }
          else
          {
            if (this.servedDate == null) {
              break;
            }
            localObject2 = "If-Modified-Since";
            localObject1 = this.servedDateString;
          }
        }
        return new CacheStrategy(this.request, null);
      }
    }
    
    private static boolean hasConditions(Request paramRequest)
    {
      return (paramRequest.header("If-Modified-Since") != null) || (paramRequest.header("If-None-Match") != null);
    }
    
    private boolean isFreshnessLifetimeHeuristic()
    {
      return (this.cacheResponse.cacheControl().maxAgeSeconds() == -1) && (this.expires == null);
    }
    
    public CacheStrategy get()
    {
      CacheStrategy localCacheStrategy2 = getCandidate();
      CacheStrategy localCacheStrategy1 = localCacheStrategy2;
      if (localCacheStrategy2.networkRequest != null)
      {
        localCacheStrategy1 = localCacheStrategy2;
        if (this.request.cacheControl().onlyIfCached()) {
          localCacheStrategy1 = new CacheStrategy(null, null);
        }
      }
      return localCacheStrategy1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/cache/CacheStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */