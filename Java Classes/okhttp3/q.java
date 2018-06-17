package okhttp3;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;

public final class q
{
  private static final char[] HEX_DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  @Nullable
  private final String fragment;
  public final String host;
  private final String password;
  private final List<String> pathSegments;
  public final int port;
  @Nullable
  public final List<String> queryNamesAndValues;
  public final String scheme;
  private final String url;
  private final String username;
  
  q(a parama)
  {
    this.scheme = parama.scheme;
    this.username = percentDecode(parama.encodedUsername, false);
    this.password = percentDecode(parama.encodedPassword, false);
    this.host = parama.host;
    this.port = parama.effectivePort();
    this.pathSegments = percentDecode(parama.encodedPathSegments, false);
    if (parama.encodedQueryNamesAndValues != null) {}
    for (Object localObject1 = percentDecode(parama.encodedQueryNamesAndValues, true);; localObject1 = null)
    {
      this.queryNamesAndValues = ((List)localObject1);
      localObject1 = localObject2;
      if (parama.encodedFragment != null) {
        localObject1 = percentDecode(parama.encodedFragment, false);
      }
      this.fragment = ((String)localObject1);
      this.url = parama.toString();
      return;
    }
  }
  
  static String a(String paramString1, int paramInt1, int paramInt2, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    int i = paramInt1;
    while (i < paramInt2)
    {
      int j = paramString1.codePointAt(i);
      if ((j < 32) || (j == 127) || ((j >= 128) && (paramBoolean4)) || (paramString2.indexOf(j) != -1) || ((j == 37) && ((!paramBoolean1) || ((paramBoolean2) && (!percentEncoded(paramString1, i, paramInt2))))) || ((j == 43) && (paramBoolean3)))
      {
        d.c localc = new d.c();
        localc.o(paramString1, paramInt1, i);
        Object localObject1 = null;
        paramInt1 = i;
        if (paramInt1 < paramInt2)
        {
          i = paramString1.codePointAt(paramInt1);
          Object localObject3;
          Object localObject2;
          if (paramBoolean1)
          {
            localObject3 = localObject1;
            if (i != 9)
            {
              localObject3 = localObject1;
              if (i != 10)
              {
                localObject3 = localObject1;
                if (i != 12)
                {
                  localObject3 = localObject1;
                  if (i == 13) {}
                }
              }
            }
          }
          else
          {
            if ((i != 43) || (!paramBoolean3)) {
              break label234;
            }
            if (!paramBoolean1) {
              break label227;
            }
            localObject2 = "+";
            label200:
            localc.fE((String)localObject2);
            localObject3 = localObject1;
          }
          for (;;)
          {
            paramInt1 = Character.charCount(i) + paramInt1;
            localObject1 = localObject3;
            break;
            label227:
            localObject2 = "%2B";
            break label200;
            label234:
            if ((i < 32) || (i == 127) || ((i >= 128) && (paramBoolean4)) || (paramString2.indexOf(i) != -1) || ((i == 37) && ((!paramBoolean1) || ((paramBoolean2) && (!percentEncoded(paramString1, paramInt1, paramInt2))))))
            {
              localObject2 = localObject1;
              if (localObject1 == null) {
                localObject2 = new d.c();
              }
              ((d.c)localObject2).fU(i);
              for (;;)
              {
                localObject3 = localObject2;
                if (((d.c)localObject2).Kr()) {
                  break;
                }
                j = ((d.c)localObject2).readByte() & 0xFF;
                localc.fV(37);
                localc.fV(HEX_DIGITS[(j >> 4 & 0xF)]);
                localc.fV(HEX_DIGITS[(j & 0xF)]);
              }
            }
            localc.fU(i);
            localObject3 = localObject1;
          }
        }
        return localc.Ky();
      }
      i += Character.charCount(j);
    }
    return paramString1.substring(paramInt1, paramInt2);
  }
  
  static String canonicalize(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    return a(paramString1, 0, paramString1.length(), paramString2, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4);
  }
  
  public static int defaultPort(String paramString)
  {
    if (paramString.equals("http")) {
      return 80;
    }
    if (paramString.equals("https")) {
      return 443;
    }
    return -1;
  }
  
  @Nullable
  public static q fu(String paramString)
  {
    q localq = null;
    a locala = new a();
    if (locala.a(null, paramString) == q.a.a.cYS) {
      localq = locala.MC();
    }
    return localq;
  }
  
  public static void namesAndValuesToQueryString(StringBuilder paramStringBuilder, List<String> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      String str1 = (String)paramList.get(i);
      String str2 = (String)paramList.get(i + 1);
      if (i > 0) {
        paramStringBuilder.append('&');
      }
      paramStringBuilder.append(str1);
      if (str2 != null)
      {
        paramStringBuilder.append('=');
        paramStringBuilder.append(str2);
      }
      i += 2;
    }
  }
  
  static void pathSegmentsToString(StringBuilder paramStringBuilder, List<String> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      paramStringBuilder.append('/');
      paramStringBuilder.append((String)paramList.get(i));
      i += 1;
    }
  }
  
  static String percentDecode(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i = paramInt1;
    while (i < paramInt2)
    {
      int j = paramString.charAt(i);
      if ((j == 37) || ((j == 43) && (paramBoolean)))
      {
        d.c localc = new d.c();
        localc.o(paramString, paramInt1, i);
        paramInt1 = i;
        if (paramInt1 < paramInt2)
        {
          i = paramString.codePointAt(paramInt1);
          if ((i == 37) && (paramInt1 + 2 < paramInt2))
          {
            j = okhttp3.internal.c.decodeHexDigit(paramString.charAt(paramInt1 + 1));
            int k = okhttp3.internal.c.decodeHexDigit(paramString.charAt(paramInt1 + 2));
            if ((j == -1) || (k == -1)) {
              break label169;
            }
            localc.fV((j << 4) + k);
            paramInt1 += 2;
          }
          for (;;)
          {
            paramInt1 += Character.charCount(i);
            break;
            if ((i == 43) && (paramBoolean)) {
              localc.fV(32);
            } else {
              label169:
              localc.fU(i);
            }
          }
        }
        return localc.Ky();
      }
      i += 1;
    }
    return paramString.substring(paramInt1, paramInt2);
  }
  
  private static String percentDecode(String paramString, boolean paramBoolean)
  {
    return percentDecode(paramString, 0, paramString.length(), paramBoolean);
  }
  
  private static List<String> percentDecode(List<String> paramList, boolean paramBoolean)
  {
    int j = paramList.size();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    if (i < j)
    {
      String str = (String)paramList.get(i);
      if (str != null) {}
      for (str = percentDecode(str, paramBoolean);; str = null)
      {
        localArrayList.add(str);
        i += 1;
        break;
      }
    }
    return Collections.unmodifiableList(localArrayList);
  }
  
  private static boolean percentEncoded(String paramString, int paramInt1, int paramInt2)
  {
    return (paramInt1 + 2 < paramInt2) && (paramString.charAt(paramInt1) == '%') && (okhttp3.internal.c.decodeHexDigit(paramString.charAt(paramInt1 + 1)) != -1) && (okhttp3.internal.c.decodeHexDigit(paramString.charAt(paramInt1 + 2)) != -1);
  }
  
  static List<String> queryStringToNamesAndValues(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i <= paramString.length())
    {
      int k = paramString.indexOf('&', i);
      int j = k;
      if (k == -1) {
        j = paramString.length();
      }
      k = paramString.indexOf('=', i);
      if ((k == -1) || (k > j))
      {
        localArrayList.add(paramString.substring(i, j));
        localArrayList.add(null);
      }
      for (;;)
      {
        i = j + 1;
        break;
        localArrayList.add(paramString.substring(i, k));
        localArrayList.add(paramString.substring(k + 1, j));
      }
    }
    return localArrayList;
  }
  
  public final String encodedPassword()
  {
    if (this.password.isEmpty()) {
      return "";
    }
    int i = this.url.indexOf(':', this.scheme.length() + 3);
    int j = this.url.indexOf('@');
    return this.url.substring(i + 1, j);
  }
  
  public final String encodedPath()
  {
    int i = this.url.indexOf('/', this.scheme.length() + 3);
    int j = okhttp3.internal.c.delimiterOffset(this.url, i, this.url.length(), "?#");
    return this.url.substring(i, j);
  }
  
  public final List<String> encodedPathSegments()
  {
    int i = this.url.indexOf('/', this.scheme.length() + 3);
    int j = okhttp3.internal.c.delimiterOffset(this.url, i, this.url.length(), "?#");
    ArrayList localArrayList = new ArrayList();
    while (i < j)
    {
      int k = i + 1;
      i = okhttp3.internal.c.delimiterOffset(this.url, k, j, '/');
      localArrayList.add(this.url.substring(k, i));
    }
    return localArrayList;
  }
  
  @Nullable
  public final String encodedQuery()
  {
    if (this.queryNamesAndValues == null) {
      return null;
    }
    int i = this.url.indexOf('?') + 1;
    int j = okhttp3.internal.c.delimiterOffset(this.url, i, this.url.length(), '#');
    return this.url.substring(i, j);
  }
  
  public final String encodedUsername()
  {
    if (this.username.isEmpty()) {
      return "";
    }
    int i = this.scheme.length() + 3;
    int j = okhttp3.internal.c.delimiterOffset(this.url, i, this.url.length(), ":@");
    return this.url.substring(i, j);
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    return ((paramObject instanceof q)) && (((q)paramObject).url.equals(this.url));
  }
  
  @Nullable
  public final a ft(String paramString)
  {
    a locala = new a();
    if (locala.a(this, paramString) == q.a.a.cYS) {
      return locala;
    }
    return null;
  }
  
  public final int hashCode()
  {
    return this.url.hashCode();
  }
  
  public final boolean isHttps()
  {
    return this.scheme.equals("https");
  }
  
  public final String toString()
  {
    return this.url;
  }
  
  public final URI uri()
  {
    Object localObject2 = new a();
    ((a)localObject2).scheme = this.scheme;
    ((a)localObject2).encodedUsername = encodedUsername();
    ((a)localObject2).encodedPassword = encodedPassword();
    ((a)localObject2).host = this.host;
    int i;
    if (this.port != defaultPort(this.scheme))
    {
      i = this.port;
      ((a)localObject2).port = i;
      ((a)localObject2).encodedPathSegments.clear();
      ((a)localObject2).encodedPathSegments.addAll(encodedPathSegments());
      ((a)localObject2).fv(encodedQuery());
      if (this.fragment != null) {
        break label188;
      }
    }
    int j;
    for (Object localObject1 = null;; localObject1 = this.url.substring(i + 1))
    {
      ((a)localObject2).encodedFragment = ((String)localObject1);
      j = ((a)localObject2).encodedPathSegments.size();
      i = 0;
      while (i < j)
      {
        localObject1 = (String)((a)localObject2).encodedPathSegments.get(i);
        ((a)localObject2).encodedPathSegments.set(i, canonicalize((String)localObject1, "[]", true, true, false, true));
        i += 1;
      }
      i = -1;
      break;
      label188:
      i = this.url.indexOf('#');
    }
    if (((a)localObject2).encodedQueryNamesAndValues != null)
    {
      j = ((a)localObject2).encodedQueryNamesAndValues.size();
      i = 0;
      while (i < j)
      {
        localObject1 = (String)((a)localObject2).encodedQueryNamesAndValues.get(i);
        if (localObject1 != null) {
          ((a)localObject2).encodedQueryNamesAndValues.set(i, canonicalize((String)localObject1, "\\^`{|}", true, true, true, true));
        }
        i += 1;
      }
    }
    if (((a)localObject2).encodedFragment != null) {
      ((a)localObject2).encodedFragment = canonicalize(((a)localObject2).encodedFragment, " \"#<>\\^`{|}", true, true, false, false);
    }
    localObject2 = ((a)localObject2).toString();
    try
    {
      localObject1 = new URI((String)localObject2);
      return (URI)localObject1;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      try
      {
        localObject2 = URI.create(((String)localObject2).replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
        return (URI)localObject2;
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localURISyntaxException);
      }
    }
  }
  
  public static final class a
  {
    @Nullable
    String encodedFragment;
    String encodedPassword = "";
    final List<String> encodedPathSegments = new ArrayList();
    @Nullable
    List<String> encodedQueryNamesAndValues;
    String encodedUsername = "";
    @Nullable
    String host;
    int port = -1;
    @Nullable
    String scheme;
    
    public a()
    {
      this.encodedPathSegments.add("");
    }
    
    static String canonicalizeHost(String paramString, int paramInt1, int paramInt2)
    {
      return okhttp3.internal.c.canonicalizeHost(q.percentDecode(paramString, paramInt1, paramInt2, false));
    }
    
    private static int parsePort(String paramString, int paramInt1, int paramInt2)
    {
      try
      {
        paramInt1 = Integer.parseInt(q.a(paramString, paramInt1, paramInt2, "", false, false, false, true));
        if ((paramInt1 > 0) && (paramInt1 <= 65535)) {
          return paramInt1;
        }
        return -1;
      }
      catch (NumberFormatException paramString) {}
      return -1;
    }
    
    private static int portColonOffset(String paramString, int paramInt1, int paramInt2)
    {
      int i;
      int j;
      if (paramInt1 < paramInt2)
      {
        i = paramInt1;
        j = paramInt1;
      }
      switch (paramString.charAt(paramInt1))
      {
      default: 
        i = paramInt1;
      case '[': 
        for (;;)
        {
          paramInt1 = i + 1;
          break;
          do
          {
            paramInt1 = i + 1;
            i = paramInt1;
            if (paramInt1 >= paramInt2) {
              break;
            }
            i = paramInt1;
          } while (paramString.charAt(paramInt1) != ']');
          i = paramInt1;
        }
        j = paramInt2;
      }
      return j;
    }
    
    private void resolvePath(String paramString, int paramInt1, int paramInt2)
    {
      if (paramInt1 == paramInt2) {
        return;
      }
      int i = paramString.charAt(paramInt1);
      label52:
      int j;
      label76:
      String str;
      if ((i == 47) || (i == 92))
      {
        this.encodedPathSegments.clear();
        this.encodedPathSegments.add("");
        paramInt1 += 1;
        if (paramInt1 >= paramInt2) {
          break label267;
        }
        j = okhttp3.internal.c.delimiterOffset(paramString, paramInt1, paramInt2, "/\\");
        if (j >= paramInt2) {
          break label269;
        }
        i = 1;
        str = q.a(paramString, paramInt1, j, " \"<>^`{}|/\\?#", true, false, false, true);
        if ((!str.equals(".")) && (!str.equalsIgnoreCase("%2e"))) {
          break label275;
        }
        paramInt1 = 1;
        label113:
        if (paramInt1 == 0)
        {
          if ((!str.equals("..")) && (!str.equalsIgnoreCase("%2e.")) && (!str.equalsIgnoreCase(".%2e")) && (!str.equalsIgnoreCase("%2e%2e"))) {
            break label280;
          }
          paramInt1 = 1;
          label159:
          if (paramInt1 == 0) {
            break label300;
          }
          if ((!((String)this.encodedPathSegments.remove(this.encodedPathSegments.size() - 1)).isEmpty()) || (this.encodedPathSegments.isEmpty())) {
            break label285;
          }
          this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, "");
        }
      }
      label267:
      label269:
      label275:
      label280:
      label285:
      label300:
      label385:
      for (;;)
      {
        paramInt1 = j;
        if (i != 0) {
          paramInt1 = j + 1;
        }
        break label52;
        this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, "");
        break label52;
        break;
        i = 0;
        break label76;
        paramInt1 = 0;
        break label113;
        paramInt1 = 0;
        break label159;
        this.encodedPathSegments.add("");
        continue;
        if (((String)this.encodedPathSegments.get(this.encodedPathSegments.size() - 1)).isEmpty()) {
          this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, str);
        }
        for (;;)
        {
          if (i == 0) {
            break label385;
          }
          this.encodedPathSegments.add("");
          break;
          this.encodedPathSegments.add(str);
        }
      }
    }
    
    public final q MC()
    {
      if (this.scheme == null) {
        throw new IllegalStateException("scheme == null");
      }
      if (this.host == null) {
        throw new IllegalStateException("host == null");
      }
      return new q(this);
    }
    
    final int a(@Nullable q paramq, String paramString)
    {
      int j = okhttp3.internal.c.skipLeadingAsciiWhitespace(paramString, 0, paramString.length());
      int i1 = okhttp3.internal.c.skipTrailingAsciiWhitespace(paramString, j, paramString.length());
      int i;
      if (i1 - j >= 2)
      {
        i = paramString.charAt(j);
        if (((i < 97) || (i > 122)) && ((i < 65) || (i > 90)))
        {
          i = -1;
          if (i == -1) {
            break label290;
          }
          if (!paramString.regionMatches(true, j, "https:", 0, 6)) {
            break label258;
          }
          this.scheme = "https";
          i = j + 6;
        }
      }
      int n;
      int m;
      int k;
      for (;;)
      {
        n = 0;
        m = 0;
        k = 0;
        j = i;
        while (j < i1)
        {
          int i2 = paramString.charAt(j);
          if ((i2 != 92) && (i2 != 47)) {
            break;
          }
          k += 1;
          j += 1;
        }
        i = j + 1;
        for (;;)
        {
          if (i >= i1) {
            break label253;
          }
          k = paramString.charAt(i);
          if (((k < 97) || (k > 122)) && ((k < 65) || (k > 90)) && ((k < 48) || (k > 57)) && (k != 43) && (k != 45) && (k != 46))
          {
            if (k == 58) {
              break;
            }
            i = -1;
            break;
          }
          i += 1;
        }
        label253:
        i = -1;
        break;
        label258:
        if (paramString.regionMatches(true, j, "http:", 0, 5))
        {
          this.scheme = "http";
          i = j + 5;
        }
        else
        {
          return a.cYU;
          label290:
          if (paramq == null) {
            break label308;
          }
          this.scheme = paramq.scheme;
          i = j;
        }
      }
      label308:
      return a.cYT;
      if ((k >= 2) || (paramq == null) || (!paramq.scheme.equals(this.scheme)))
      {
        k = i + k;
        j = n;
        i = m;
        n = okhttp3.internal.c.delimiterOffset(paramString, k, i1, "@/\\?#");
        if (n != i1) {}
        for (m = paramString.charAt(n);; m = -1) {
          switch (m)
          {
          default: 
            break;
          case -1: 
          case 35: 
          case 47: 
          case 63: 
          case 92: 
            i = portColonOffset(paramString, k, n);
            if (i + 1 >= n) {
              break label680;
            }
            this.host = canonicalizeHost(paramString, k, i);
            this.port = parsePort(paramString, i + 1, n);
            if (this.port != -1) {
              break label702;
            }
            return a.cYV;
          }
        }
        if (i == 0)
        {
          m = okhttp3.internal.c.delimiterOffset(paramString, k, n, ':');
          String str = q.a(paramString, k, m, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
          paramq = str;
          if (j != 0) {
            paramq = this.encodedUsername + "%40" + str;
          }
          this.encodedUsername = paramq;
          if (m != n)
          {
            i = 1;
            this.encodedPassword = q.a(paramString, m + 1, n, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
          }
          j = i;
        }
        for (i = 1;; i = k)
        {
          k = n + 1;
          m = i;
          i = j;
          j = m;
          break;
          this.encodedPassword = (this.encodedPassword + "%40" + q.a(paramString, k, n, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true));
          k = j;
          j = i;
        }
        label680:
        this.host = canonicalizeHost(paramString, k, i);
        this.port = q.defaultPort(this.scheme);
        label702:
        if (this.host == null) {
          return a.cYW;
        }
        j = n;
        i = okhttp3.internal.c.delimiterOffset(paramString, j, i1, "?#");
        resolvePath(paramString, j, i);
        if ((i >= i1) || (paramString.charAt(i) != '?')) {
          break label916;
        }
        j = okhttp3.internal.c.delimiterOffset(paramString, i, i1, '#');
        this.encodedQueryNamesAndValues = q.queryStringToNamesAndValues(q.a(paramString, i + 1, j, " \"'<>#", true, false, true, true));
        i = j;
      }
      label916:
      for (;;)
      {
        if ((i < i1) && (paramString.charAt(i) == '#')) {
          this.encodedFragment = q.a(paramString, i + 1, i1, "", true, false, false, false);
        }
        return a.cYS;
        this.encodedUsername = paramq.encodedUsername();
        this.encodedPassword = paramq.encodedPassword();
        this.host = paramq.host;
        this.port = paramq.port;
        this.encodedPathSegments.clear();
        this.encodedPathSegments.addAll(paramq.encodedPathSegments());
        if (i != i1)
        {
          j = i;
          if (paramString.charAt(i) != '#') {
            break;
          }
        }
        fv(paramq.encodedQuery());
        j = i;
        break;
      }
    }
    
    final int effectivePort()
    {
      if (this.port != -1) {
        return this.port;
      }
      return q.defaultPort(this.scheme);
    }
    
    public final a fv(@Nullable String paramString)
    {
      if (paramString != null) {}
      for (paramString = q.queryStringToNamesAndValues(q.canonicalize(paramString, " \"'<>#", true, false, true, true));; paramString = null)
      {
        this.encodedQueryNamesAndValues = paramString;
        return this;
      }
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.scheme);
      localStringBuilder.append("://");
      if ((!this.encodedUsername.isEmpty()) || (!this.encodedPassword.isEmpty()))
      {
        localStringBuilder.append(this.encodedUsername);
        if (!this.encodedPassword.isEmpty())
        {
          localStringBuilder.append(':');
          localStringBuilder.append(this.encodedPassword);
        }
        localStringBuilder.append('@');
      }
      if (this.host.indexOf(':') != -1)
      {
        localStringBuilder.append('[');
        localStringBuilder.append(this.host);
        localStringBuilder.append(']');
      }
      for (;;)
      {
        int i = effectivePort();
        if (i != q.defaultPort(this.scheme))
        {
          localStringBuilder.append(':');
          localStringBuilder.append(i);
        }
        q.pathSegmentsToString(localStringBuilder, this.encodedPathSegments);
        if (this.encodedQueryNamesAndValues != null)
        {
          localStringBuilder.append('?');
          q.namesAndValuesToQueryString(localStringBuilder, this.encodedQueryNamesAndValues);
        }
        if (this.encodedFragment != null)
        {
          localStringBuilder.append('#');
          localStringBuilder.append(this.encodedFragment);
        }
        return localStringBuilder.toString();
        localStringBuilder.append(this.host);
      }
    }
    
    static enum a
    {
      public static final int cYS = 1;
      public static final int cYT = 2;
      public static final int cYU = 3;
      public static final int cYV = 4;
      public static final int cYW = 5;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */