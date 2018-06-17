package okhttp3;

import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.internal.c.e;

public final class d
{
  public static final d cWt;
  public static final d cWu;
  @Nullable
  String headerValue;
  public final boolean immutable;
  public final boolean isPrivate;
  public final boolean isPublic;
  public final int maxAgeSeconds;
  public final int maxStaleSeconds;
  public final int minFreshSeconds;
  public final boolean mustRevalidate;
  public final boolean noCache;
  public final boolean noStore;
  private final boolean noTransform;
  public final boolean onlyIfCached;
  private final int sMaxAgeSeconds;
  
  static
  {
    a locala = new a();
    locala.noCache = true;
    cWt = locala.LZ();
    locala = new a();
    locala.onlyIfCached = true;
    long l = TimeUnit.SECONDS.toSeconds(2147483647L);
    if (l > 2147483647L) {}
    for (int i = Integer.MAX_VALUE;; i = (int)l)
    {
      locala.maxStaleSeconds = i;
      cWu = locala.LZ();
      return;
    }
  }
  
  d(a parama)
  {
    this.noCache = parama.noCache;
    this.noStore = parama.noStore;
    this.maxAgeSeconds = parama.maxAgeSeconds;
    this.sMaxAgeSeconds = -1;
    this.isPrivate = false;
    this.isPublic = false;
    this.mustRevalidate = false;
    this.maxStaleSeconds = parama.maxStaleSeconds;
    this.minFreshSeconds = parama.minFreshSeconds;
    this.onlyIfCached = parama.onlyIfCached;
    this.noTransform = parama.noTransform;
    this.immutable = parama.immutable;
  }
  
  private d(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, int paramInt3, int paramInt4, boolean paramBoolean6, boolean paramBoolean7, boolean paramBoolean8, @Nullable String paramString)
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
  
  public static d a(p paramp)
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
    int i8 = paramp.namesAndValues.length / 2;
    int i2 = 0;
    while (i2 < i8)
    {
      Object localObject2 = paramp.name(i2);
      String str1 = paramp.value(i2);
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
        label94:
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
          break label602;
        }
        i3 = e.skipUntil(str1, i, "=,;");
        String str2 = str1.substring(i, i3).trim();
        if ((i3 == str1.length()) || (str1.charAt(i3) == ',') || (str1.charAt(i3) == ';'))
        {
          i = i3 + 1;
          localObject2 = null;
        }
        for (;;)
        {
          if (!"no-cache".equalsIgnoreCase(str2)) {
            break label352;
          }
          bool1 = true;
          break label94;
          localObject1 = str1;
          break;
          if (!((String)localObject2).equalsIgnoreCase("Pragma")) {
            break label548;
          }
          j = 0;
          break;
          i3 = e.skipWhitespace(str1, i3 + 1);
          if ((i3 < str1.length()) && (str1.charAt(i3) == '"'))
          {
            i = i3 + 1;
            i3 = e.skipUntil(str1, i, "\"");
            localObject2 = str1.substring(i, i3);
            i = i3 + 1;
          }
          else
          {
            i = e.skipUntil(str1, i3, ",;");
            localObject2 = str1.substring(i3, i).trim();
          }
        }
        label352:
        if ("no-store".equalsIgnoreCase(str2)) {
          bool7 = true;
        } else if ("max-age".equalsIgnoreCase(str2)) {
          i1 = e.parseSeconds((String)localObject2, -1);
        } else if ("s-maxage".equalsIgnoreCase(str2)) {
          n = e.parseSeconds((String)localObject2, -1);
        } else if ("private".equalsIgnoreCase(str2)) {
          bool8 = true;
        } else if ("public".equalsIgnoreCase(str2)) {
          bool6 = true;
        } else if ("must-revalidate".equalsIgnoreCase(str2)) {
          bool5 = true;
        } else if ("max-stale".equalsIgnoreCase(str2)) {
          m = e.parseSeconds((String)localObject2, Integer.MAX_VALUE);
        } else if ("min-fresh".equalsIgnoreCase(str2)) {
          k = e.parseSeconds((String)localObject2, -1);
        } else if ("only-if-cached".equalsIgnoreCase(str2)) {
          bool4 = true;
        } else if ("no-transform".equalsIgnoreCase(str2)) {
          bool2 = true;
        } else if ("immutable".equalsIgnoreCase(str2)) {
          bool3 = true;
        }
      }
      label548:
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
      label602:
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
    for (paramp = null;; paramp = (p)localObject1) {
      return new d(bool1, bool7, i1, n, bool8, bool6, bool5, m, k, bool4, bool2, bool3, paramp);
    }
  }
  
  public final String toString()
  {
    Object localObject = this.headerValue;
    if (localObject != null) {
      return (String)localObject;
    }
    localObject = new StringBuilder();
    if (this.noCache) {
      ((StringBuilder)localObject).append("no-cache, ");
    }
    if (this.noStore) {
      ((StringBuilder)localObject).append("no-store, ");
    }
    if (this.maxAgeSeconds != -1) {
      ((StringBuilder)localObject).append("max-age=").append(this.maxAgeSeconds).append(", ");
    }
    if (this.sMaxAgeSeconds != -1) {
      ((StringBuilder)localObject).append("s-maxage=").append(this.sMaxAgeSeconds).append(", ");
    }
    if (this.isPrivate) {
      ((StringBuilder)localObject).append("private, ");
    }
    if (this.isPublic) {
      ((StringBuilder)localObject).append("public, ");
    }
    if (this.mustRevalidate) {
      ((StringBuilder)localObject).append("must-revalidate, ");
    }
    if (this.maxStaleSeconds != -1) {
      ((StringBuilder)localObject).append("max-stale=").append(this.maxStaleSeconds).append(", ");
    }
    if (this.minFreshSeconds != -1) {
      ((StringBuilder)localObject).append("min-fresh=").append(this.minFreshSeconds).append(", ");
    }
    if (this.onlyIfCached) {
      ((StringBuilder)localObject).append("only-if-cached, ");
    }
    if (this.noTransform) {
      ((StringBuilder)localObject).append("no-transform, ");
    }
    if (this.immutable) {
      ((StringBuilder)localObject).append("immutable, ");
    }
    if (((StringBuilder)localObject).length() == 0) {}
    for (localObject = "";; localObject = ((StringBuilder)localObject).toString())
    {
      this.headerValue = ((String)localObject);
      return (String)localObject;
      ((StringBuilder)localObject).delete(((StringBuilder)localObject).length() - 2, ((StringBuilder)localObject).length());
    }
  }
  
  public static final class a
  {
    boolean immutable;
    int maxAgeSeconds = -1;
    int maxStaleSeconds = -1;
    int minFreshSeconds = -1;
    boolean noCache;
    public boolean noStore;
    boolean noTransform;
    boolean onlyIfCached;
    
    public final d LZ()
    {
      return new d(this);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */