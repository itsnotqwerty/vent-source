package io.intercom.okhttp3;

import io.intercom.okhttp3.internal.http.HttpHeaders;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public final class CacheControl
{
  public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, TimeUnit.SECONDS).build();
  public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();
  @Nullable
  String headerValue;
  private final boolean immutable;
  private final boolean isPrivate;
  private final boolean isPublic;
  private final int maxAgeSeconds;
  private final int maxStaleSeconds;
  private final int minFreshSeconds;
  private final boolean mustRevalidate;
  private final boolean noCache;
  private final boolean noStore;
  private final boolean noTransform;
  private final boolean onlyIfCached;
  private final int sMaxAgeSeconds;
  
  CacheControl(Builder paramBuilder)
  {
    this.noCache = paramBuilder.noCache;
    this.noStore = paramBuilder.noStore;
    this.maxAgeSeconds = paramBuilder.maxAgeSeconds;
    this.sMaxAgeSeconds = -1;
    this.isPrivate = false;
    this.isPublic = false;
    this.mustRevalidate = false;
    this.maxStaleSeconds = paramBuilder.maxStaleSeconds;
    this.minFreshSeconds = paramBuilder.minFreshSeconds;
    this.onlyIfCached = paramBuilder.onlyIfCached;
    this.noTransform = paramBuilder.noTransform;
    this.immutable = paramBuilder.immutable;
  }
  
  private CacheControl(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, int paramInt3, int paramInt4, boolean paramBoolean6, boolean paramBoolean7, boolean paramBoolean8, @Nullable String paramString)
  {
    this.noCache = paramBoolean1;
    this.noStore = paramBoolean2;
    this.maxAgeSeconds = paramInt1;
    this.sMaxAgeSeconds = paramInt2;
    this.isPrivate = paramBoolean3;
    this.isPublic = paramBoolean4;
    this.mustRevalidate = paramBoolean5;
    this.maxStaleSeconds = paramInt3;
    this.minFreshSeconds = paramInt4;
    this.onlyIfCached = paramBoolean6;
    this.noTransform = paramBoolean7;
    this.immutable = paramBoolean8;
    this.headerValue = paramString;
  }
  
  private String headerValue()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.noCache) {
      localStringBuilder.append("no-cache, ");
    }
    if (this.noStore) {
      localStringBuilder.append("no-store, ");
    }
    if (this.maxAgeSeconds != -1) {
      localStringBuilder.append("max-age=").append(this.maxAgeSeconds).append(", ");
    }
    if (this.sMaxAgeSeconds != -1) {
      localStringBuilder.append("s-maxage=").append(this.sMaxAgeSeconds).append(", ");
    }
    if (this.isPrivate) {
      localStringBuilder.append("private, ");
    }
    if (this.isPublic) {
      localStringBuilder.append("public, ");
    }
    if (this.mustRevalidate) {
      localStringBuilder.append("must-revalidate, ");
    }
    if (this.maxStaleSeconds != -1) {
      localStringBuilder.append("max-stale=").append(this.maxStaleSeconds).append(", ");
    }
    if (this.minFreshSeconds != -1) {
      localStringBuilder.append("min-fresh=").append(this.minFreshSeconds).append(", ");
    }
    if (this.onlyIfCached) {
      localStringBuilder.append("only-if-cached, ");
    }
    if (this.noTransform) {
      localStringBuilder.append("no-transform, ");
    }
    if (this.immutable) {
      localStringBuilder.append("immutable, ");
    }
    if (localStringBuilder.length() == 0) {
      return "";
    }
    localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
    return localStringBuilder.toString();
  }
  
  public static CacheControl parse(Headers paramHeaders)
  {
    boolean bool1 = false;
    boolean bool7 = false;
    int i1 = -1;
    int n = -1;
    boolean bool8 = false;
    boolean bool6 = false;
    boolean bool5 = false;
    int m = -1;
    int k = -1;
    boolean bool4 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    int j = 1;
    Object localObject1 = null;
    int i8 = paramHeaders.size();
    int i2 = 0;
    while (i2 < i8)
    {
      Object localObject2 = paramHeaders.name(i2);
      String str1 = paramHeaders.value(i2);
      int i;
      if (((String)localObject2).equalsIgnoreCase("Cache-Control")) {
        if (localObject1 != null)
        {
          j = 0;
          i = 0;
        }
      }
      for (;;)
      {
        label91:
        localObject2 = localObject1;
        bool16 = bool7;
        i7 = i1;
        i6 = n;
        bool15 = bool8;
        bool14 = bool6;
        bool13 = bool5;
        i5 = m;
        i4 = k;
        bool12 = bool4;
        bool11 = bool2;
        bool10 = bool3;
        i3 = j;
        bool9 = bool1;
        if (i >= str1.length()) {
          break label599;
        }
        i3 = HttpHeaders.skipUntil(str1, i, "=,;");
        String str2 = str1.substring(i, i3).trim();
        if ((i3 == str1.length()) || (str1.charAt(i3) == ',') || (str1.charAt(i3) == ';'))
        {
          i = i3 + 1;
          localObject2 = null;
        }
        for (;;)
        {
          if (!"no-cache".equalsIgnoreCase(str2)) {
            break label349;
          }
          bool1 = true;
          break label91;
          localObject1 = str1;
          break;
          if (!((String)localObject2).equalsIgnoreCase("Pragma")) {
            break label545;
          }
          j = 0;
          break;
          i3 = HttpHeaders.skipWhitespace(str1, i3 + 1);
          if ((i3 < str1.length()) && (str1.charAt(i3) == '"'))
          {
            i = i3 + 1;
            i3 = HttpHeaders.skipUntil(str1, i, "\"");
            localObject2 = str1.substring(i, i3);
            i = i3 + 1;
          }
          else
          {
            i = HttpHeaders.skipUntil(str1, i3, ",;");
            localObject2 = str1.substring(i3, i).trim();
          }
        }
        label349:
        if ("no-store".equalsIgnoreCase(str2)) {
          bool7 = true;
        } else if ("max-age".equalsIgnoreCase(str2)) {
          i1 = HttpHeaders.parseSeconds((String)localObject2, -1);
        } else if ("s-maxage".equalsIgnoreCase(str2)) {
          n = HttpHeaders.parseSeconds((String)localObject2, -1);
        } else if ("private".equalsIgnoreCase(str2)) {
          bool8 = true;
        } else if ("public".equalsIgnoreCase(str2)) {
          bool6 = true;
        } else if ("must-revalidate".equalsIgnoreCase(str2)) {
          bool5 = true;
        } else if ("max-stale".equalsIgnoreCase(str2)) {
          m = HttpHeaders.parseSeconds((String)localObject2, Integer.MAX_VALUE);
        } else if ("min-fresh".equalsIgnoreCase(str2)) {
          k = HttpHeaders.parseSeconds((String)localObject2, -1);
        } else if ("only-if-cached".equalsIgnoreCase(str2)) {
          bool4 = true;
        } else if ("no-transform".equalsIgnoreCase(str2)) {
          bool2 = true;
        } else if ("immutable".equalsIgnoreCase(str2)) {
          bool3 = true;
        }
      }
      label545:
      boolean bool9 = bool1;
      int i3 = j;
      boolean bool10 = bool3;
      boolean bool11 = bool2;
      boolean bool12 = bool4;
      int i4 = k;
      int i5 = m;
      boolean bool13 = bool5;
      boolean bool14 = bool6;
      boolean bool15 = bool8;
      int i6 = n;
      int i7 = i1;
      boolean bool16 = bool7;
      localObject2 = localObject1;
      label599:
      i2 += 1;
      bool1 = bool9;
      localObject1 = localObject2;
      bool7 = bool16;
      i1 = i7;
      n = i6;
      bool8 = bool15;
      bool6 = bool14;
      bool5 = bool13;
      m = i5;
      k = i4;
      bool4 = bool12;
      bool2 = bool11;
      bool3 = bool10;
      j = i3;
    }
    if (j == 0) {}
    for (paramHeaders = null;; paramHeaders = (Headers)localObject1) {
      return new CacheControl(bool1, bool7, i1, n, bool8, bool6, bool5, m, k, bool4, bool2, bool3, paramHeaders);
    }
  }
  
  public final boolean immutable()
  {
    return this.immutable;
  }
  
  public final boolean isPrivate()
  {
    return this.isPrivate;
  }
  
  public final boolean isPublic()
  {
    return this.isPublic;
  }
  
  public final int maxAgeSeconds()
  {
    return this.maxAgeSeconds;
  }
  
  public final int maxStaleSeconds()
  {
    return this.maxStaleSeconds;
  }
  
  public final int minFreshSeconds()
  {
    return this.minFreshSeconds;
  }
  
  public final boolean mustRevalidate()
  {
    return this.mustRevalidate;
  }
  
  public final boolean noCache()
  {
    return this.noCache;
  }
  
  public final boolean noStore()
  {
    return this.noStore;
  }
  
  public final boolean noTransform()
  {
    return this.noTransform;
  }
  
  public final boolean onlyIfCached()
  {
    return this.onlyIfCached;
  }
  
  public final int sMaxAgeSeconds()
  {
    return this.sMaxAgeSeconds;
  }
  
  public final String toString()
  {
    String str = this.headerValue;
    if (str != null) {
      return str;
    }
    str = headerValue();
    this.headerValue = str;
    return str;
  }
  
  public static final class Builder
  {
    boolean immutable;
    int maxAgeSeconds = -1;
    int maxStaleSeconds = -1;
    int minFreshSeconds = -1;
    boolean noCache;
    boolean noStore;
    boolean noTransform;
    boolean onlyIfCached;
    
    public final CacheControl build()
    {
      return new CacheControl(this);
    }
    
    public final Builder immutable()
    {
      this.immutable = true;
      return this;
    }
    
    public final Builder maxAge(int paramInt, TimeUnit paramTimeUnit)
    {
      if (paramInt < 0) {
        throw new IllegalArgumentException("maxAge < 0: " + paramInt);
      }
      long l = paramTimeUnit.toSeconds(paramInt);
      if (l > 2147483647L) {}
      for (paramInt = Integer.MAX_VALUE;; paramInt = (int)l)
      {
        this.maxAgeSeconds = paramInt;
        return this;
      }
    }
    
    public final Builder maxStale(int paramInt, TimeUnit paramTimeUnit)
    {
      if (paramInt < 0) {
        throw new IllegalArgumentException("maxStale < 0: " + paramInt);
      }
      long l = paramTimeUnit.toSeconds(paramInt);
      if (l > 2147483647L) {}
      for (paramInt = Integer.MAX_VALUE;; paramInt = (int)l)
      {
        this.maxStaleSeconds = paramInt;
        return this;
      }
    }
    
    public final Builder minFresh(int paramInt, TimeUnit paramTimeUnit)
    {
      if (paramInt < 0) {
        throw new IllegalArgumentException("minFresh < 0: " + paramInt);
      }
      long l = paramTimeUnit.toSeconds(paramInt);
      if (l > 2147483647L) {}
      for (paramInt = Integer.MAX_VALUE;; paramInt = (int)l)
      {
        this.minFreshSeconds = paramInt;
        return this;
      }
    }
    
    public final Builder noCache()
    {
      this.noCache = true;
      return this;
    }
    
    public final Builder noStore()
    {
      this.noStore = true;
      return this;
    }
    
    public final Builder noTransform()
    {
      this.noTransform = true;
      return this;
    }
    
    public final Builder onlyIfCached()
    {
      this.onlyIfCached = true;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/CacheControl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */