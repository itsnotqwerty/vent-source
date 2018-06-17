package com.b.a;

import b.c;
import java.net.IDN;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class u
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  final String b;
  private final List<String> bzR;
  private final List<String> bzS;
  private final String c;
  private final String d;
  private final String e;
  private final int f;
  private final String i;
  private final String j;
  
  private u(a parama)
  {
    this.b = parama.a;
    this.c = d(parama.b);
    this.d = d(parama.c);
    this.e = parama.d;
    this.f = parama.a();
    this.bzR = a(parama.bLT);
    if (parama.bzR != null) {}
    for (Object localObject1 = a(parama.bzR);; localObject1 = null)
    {
      this.bzS = ((List)localObject1);
      localObject1 = localObject2;
      if (parama.h != null) {
        localObject1 = d(parama.h);
      }
      this.i = ((String)localObject1);
      this.j = parama.toString();
      return;
    }
  }
  
  private static int a(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    for (;;)
    {
      int k = paramInt2;
      if (paramInt1 < paramInt2)
      {
        if (paramString2.indexOf(paramString1.charAt(paramInt1)) != -1) {
          k = paramInt1;
        }
      }
      else {
        return k;
      }
      paramInt1 += 1;
    }
  }
  
  static String a(String paramString1, int paramInt1, int paramInt2, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    int k = paramInt1;
    while (k < paramInt2)
    {
      int m = paramString1.codePointAt(k);
      if ((m < 32) || (m >= 127) || (paramString2.indexOf(m) != -1) || ((m == 37) && (!paramBoolean1)) || ((paramBoolean2) && (m == 43)))
      {
        c localc = new c();
        localc.n(paramString1, paramInt1, k);
        Object localObject1 = null;
        paramInt1 = k;
        if (paramInt1 < paramInt2)
        {
          k = paramString1.codePointAt(paramInt1);
          Object localObject3;
          Object localObject2;
          if (paramBoolean1)
          {
            localObject3 = localObject1;
            if (k != 9)
            {
              localObject3 = localObject1;
              if (k != 10)
              {
                localObject3 = localObject1;
                if (k != 12)
                {
                  localObject3 = localObject1;
                  if (k == 13) {}
                }
              }
            }
          }
          else
          {
            if ((!paramBoolean2) || (k != 43)) {
              break label206;
            }
            if (!paramBoolean1) {
              break label199;
            }
            localObject2 = "%20";
            label172:
            localc.fl((String)localObject2);
            localObject3 = localObject1;
          }
          for (;;)
          {
            paramInt1 = Character.charCount(k) + paramInt1;
            localObject1 = localObject3;
            break;
            label199:
            localObject2 = "%2B";
            break label172;
            label206:
            if ((k < 32) || (k >= 127) || (paramString2.indexOf(k) != -1) || ((k == 37) && (!paramBoolean1)))
            {
              localObject2 = localObject1;
              if (localObject1 == null) {
                localObject2 = new c();
              }
              ((c)localObject2).fE(k);
              for (;;)
              {
                localObject3 = localObject2;
                if (((c)localObject2).xi()) {
                  break;
                }
                m = ((c)localObject2).KX() & 0xFF;
                localc.fF(37);
                localc.fF(a[(m >> 4 & 0xF)]);
                localc.fF(a[(m & 0xF)]);
              }
            }
            localc.fE(k);
            localObject3 = localObject1;
          }
        }
        return localc.Le();
      }
      k += Character.charCount(m);
    }
    return paramString1.substring(paramInt1, paramInt2);
  }
  
  private static List<String> a(List<String> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      paramList = (String)localIterator.next();
      if (paramList != null) {}
      for (paramList = d(paramList);; paramList = null)
      {
        localArrayList.add(paramList);
        break;
      }
    }
    return Collections.unmodifiableList(localArrayList);
  }
  
  static void a(StringBuilder paramStringBuilder, List<String> paramList)
  {
    int m = paramList.size();
    int k = 0;
    while (k < m)
    {
      paramStringBuilder.append('/');
      paramStringBuilder.append((String)paramList.get(k));
      k += 1;
    }
  }
  
  private static List<String> b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int k = 0;
    if (k <= paramString.length())
    {
      int n = paramString.indexOf('&', k);
      int m = n;
      if (n == -1) {
        m = paramString.length();
      }
      n = paramString.indexOf('=', k);
      if ((n == -1) || (n > m))
      {
        localArrayList.add(paramString.substring(k, m));
        localArrayList.add(null);
      }
      for (;;)
      {
        k = m + 1;
        break;
        localArrayList.add(paramString.substring(k, n));
        localArrayList.add(paramString.substring(n + 1, m));
      }
    }
    return localArrayList;
  }
  
  static void b(StringBuilder paramStringBuilder, List<String> paramList)
  {
    int m = paramList.size();
    int k = 0;
    while (k < m)
    {
      String str1 = (String)paramList.get(k);
      String str2 = (String)paramList.get(k + 1);
      if (k > 0) {
        paramStringBuilder.append('&');
      }
      paramStringBuilder.append(str1);
      if (str2 != null)
      {
        paramStringBuilder.append('=');
        paramStringBuilder.append(str2);
      }
      k += 2;
    }
  }
  
  static int d(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9')) {
      return paramChar - '0';
    }
    if ((paramChar >= 'a') && (paramChar <= 'f')) {
      return paramChar - 'a' + 10;
    }
    if ((paramChar >= 'A') && (paramChar <= 'F')) {
      return paramChar - 'A' + 10;
    }
    return -1;
  }
  
  private static String d(String paramString)
  {
    return e(paramString, 0, paramString.length());
  }
  
  public static int dD(String paramString)
  {
    if (paramString.equals("http")) {
      return 80;
    }
    if (paramString.equals("https")) {
      return 443;
    }
    return -1;
  }
  
  public static u dJ(String paramString)
  {
    a locala = new a();
    int k = paramString.length();
    int m = 0;
    label76:
    label83:
    int n;
    if (m < k) {
      switch (paramString.charAt(m))
      {
      default: 
        k = paramString.length() - 1;
        if (k >= m) {
          switch (paramString.charAt(k))
          {
          default: 
            n = k + 1;
            label148:
            if (n - m >= 2)
            {
              k = paramString.charAt(m);
              if (((k < 97) || (k > 122)) && ((k < 65) || (k > 90)))
              {
                k = -1;
                label187:
                if (k == -1) {
                  break label404;
                }
                if (!paramString.regionMatches(true, m, "https:", 0, 6)) {
                  break label375;
                }
                locala.a = "https";
              }
            }
            break;
          }
        }
        break;
      }
    }
    int i1;
    for (k = m + 6;; k = m + 5)
    {
      i1 = 0;
      m = k;
      while (m < n)
      {
        i2 = paramString.charAt(m);
        if ((i2 != 92) && (i2 != 47)) {
          break;
        }
        i1 += 1;
        m += 1;
      }
      m += 1;
      break;
      m = k;
      break label76;
      k -= 1;
      break label83;
      n = m;
      break label148;
      k = m + 1;
      for (;;)
      {
        if (k >= n) {
          break label370;
        }
        i1 = paramString.charAt(k);
        if (((i1 < 97) || (i1 > 122)) && ((i1 < 65) || (i1 > 90)) && (i1 != 43) && (i1 != 45) && (i1 != 46))
        {
          if (i1 == 58) {
            break;
          }
          k = -1;
          break;
        }
        k += 1;
      }
      label370:
      k = -1;
      break label187;
      label375:
      if (!paramString.regionMatches(true, m, "http:", 0, 5)) {
        break label402;
      }
      locala.a = "http";
    }
    label402:
    return null;
    label404:
    return null;
    i1 += k;
    k = 0;
    m = 0;
    int i3 = a(paramString, i1, n, "@/\\?#");
    if (i3 != n) {}
    for (int i2 = paramString.charAt(i3);; i2 = -1) {
      switch (i2)
      {
      default: 
        break;
      case -1: 
      case 35: 
      case 47: 
      case 63: 
      case 92: 
        k = a.g(paramString, i1, i3);
        if (k + 1 >= i3) {
          break label747;
        }
        locala.d = a.h(paramString, i1, k);
        locala.bpD = a.i(paramString, k + 1, i3);
        if (locala.bpD != -1) {
          break label772;
        }
        return null;
      }
    }
    if (k == 0)
    {
      i2 = a(paramString, i1, i3, ":");
      String str2 = a(paramString, i1, i2, " \"':;<=>@[]^`{}|/\\?#", true, false);
      String str1 = str2;
      if (m != 0) {
        str1 = locala.b + "%40" + str2;
      }
      locala.b = str1;
      if (i2 != i3)
      {
        k = 1;
        locala.c = a(paramString, i2 + 1, i3, " \"':;<=>@[]\\^`{}|/\\?#", true, false);
      }
      i1 = 1;
      m = k;
    }
    for (k = i1;; k = i1)
    {
      i1 = i3 + 1;
      i2 = k;
      k = m;
      m = i2;
      break;
      locala.c = (locala.c + "%40" + a(paramString, i1, i3, " \"':;<=>@[]\\^`{}|/\\?#", true, false));
      i1 = m;
      m = k;
    }
    label747:
    locala.d = a.h(paramString, i1, k);
    locala.bpD = dD(locala.a);
    label772:
    if (locala.d == null) {
      return null;
    }
    k = b(paramString, i3, n, "?#");
    locala.f(paramString, i3, k);
    if ((k < n) && (paramString.charAt(k) == '?'))
    {
      m = b(paramString, k, n, "#");
      locala.bzR = b(a(paramString, k + 1, m, " \"'<>#", true, true));
      k = m;
    }
    for (;;)
    {
      if ((k < n) && (paramString.charAt(k) == '#')) {
        locala.h = a(paramString, k + 1, n, "", true, false);
      }
      if (locala.a == null) {
        throw new IllegalStateException("scheme == null");
      }
      if (locala.d == null) {
        throw new IllegalStateException("host == null");
      }
      return new u(locala, (byte)0);
    }
  }
  
  static String e(String paramString, int paramInt1, int paramInt2)
  {
    int k = paramInt1;
    while (k < paramInt2)
    {
      if (paramString.charAt(k) == '%')
      {
        c localc = new c();
        localc.n(paramString, paramInt1, k);
        paramInt1 = k;
        if (paramInt1 < paramInt2)
        {
          k = paramString.codePointAt(paramInt1);
          if ((k == 37) && (paramInt1 + 2 < paramInt2))
          {
            int m = d(paramString.charAt(paramInt1 + 1));
            int n = d(paramString.charAt(paramInt1 + 2));
            if ((m != -1) && (n != -1))
            {
              localc.fF((m << 4) + n);
              paramInt1 += 2;
            }
          }
          for (;;)
          {
            paramInt1 += Character.charCount(k);
            break;
            localc.fE(k);
          }
        }
        return localc.Le();
      }
      k += 1;
    }
    return paramString.substring(paramInt1, paramInt2);
  }
  
  public static u f(URL paramURL)
  {
    return dJ(paramURL.toString());
  }
  
  public final URI Ad()
  {
    try
    {
      URI localURI = new URI(this.j);
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      throw new IllegalStateException("not valid as a java.net.URI: " + this.j);
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof u)) && (((u)paramObject).j.equals(this.j));
  }
  
  public final int hashCode()
  {
    return this.j.hashCode();
  }
  
  public final String toString()
  {
    return this.j;
  }
  
  public final URL wC()
  {
    try
    {
      URL localURL = new URL(this.j);
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      throw new RuntimeException(localMalformedURLException);
    }
  }
  
  public static final class a
  {
    String a;
    String b = "";
    final List<String> bLT = new ArrayList();
    int bpD = -1;
    List<String> bzR;
    String c = "";
    String d;
    String h;
    
    public a()
    {
      this.bLT.add("");
    }
    
    private static String d(String paramString)
    {
      try
      {
        paramString = IDN.toASCII(paramString).toLowerCase(Locale.US);
        boolean bool = paramString.isEmpty();
        if (bool) {
          return null;
        }
        return paramString;
      }
      catch (IllegalArgumentException paramString) {}
      return null;
    }
    
    static int g(String paramString, int paramInt1, int paramInt2)
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
    
    static String h(String paramString, int paramInt1, int paramInt2)
    {
      Object localObject1 = null;
      paramString = u.e(paramString, paramInt1, paramInt2);
      Object localObject2;
      if ((paramString.startsWith("[")) && (paramString.endsWith("]")))
      {
        localObject2 = h(paramString, paramString.length() - 1);
        paramString = (String)localObject1;
        if (localObject2 != null) {
          paramString = ((InetAddress)localObject2).getHostAddress();
        }
      }
      do
      {
        do
        {
          return paramString;
          localObject2 = d(paramString);
          paramString = (String)localObject1;
        } while (localObject2 == null);
        paramInt1 = ((String)localObject2).length();
        paramString = (String)localObject1;
      } while (u.b((String)localObject2, 0, paramInt1, "\000\t\n\r #%/:?@[\\]") != paramInt1);
      return (String)localObject2;
    }
    
    private static InetAddress h(String paramString, int paramInt)
    {
      byte[] arrayOfByte = new byte[16];
      int j = 0;
      int k = -1;
      int i = -1;
      int m = 1;
      int i1 = k;
      int n = j;
      if (m < paramInt)
      {
        if (j == 16) {
          return null;
        }
        if ((m + 2 <= paramInt) && (paramString.regionMatches(m, "::", 0, 2)))
        {
          if (k != -1) {
            return null;
          }
          n = m + 2;
          i = j + 2;
          if (n != paramInt) {
            break label524;
          }
          i1 = i;
          n = i;
        }
      }
      else
      {
        if (n == 16) {
          break label498;
        }
        if (i1 != -1) {
          break label460;
        }
        return null;
      }
      if (j != 0) {
        if (paramString.regionMatches(m, ":", 0, 1))
        {
          i = m + 1;
          m = j;
        }
      }
      for (;;)
      {
        n = 0;
        j = i;
        for (;;)
        {
          if (j < paramInt)
          {
            i1 = u.d(paramString.charAt(j));
            if (i1 != -1)
            {
              n = (n << 4) + i1;
              j += 1;
              continue;
              if (paramString.regionMatches(m, ".", 0, 1))
              {
                i2 = j - 2;
                n = i2;
                m = i;
                if (m < paramInt) {
                  if (n == 16) {
                    paramInt = 0;
                  }
                }
                for (;;)
                {
                  if (paramInt != 0) {
                    break label380;
                  }
                  return null;
                  i = m;
                  if (n != i2)
                  {
                    if (paramString.charAt(m) != '.') {
                      paramInt = 0;
                    } else {
                      i = m + 1;
                    }
                  }
                  else
                  {
                    i1 = 0;
                    m = i;
                    for (;;)
                    {
                      if (m >= paramInt) {
                        break label332;
                      }
                      int i3 = paramString.charAt(m);
                      if ((i3 < 48) || (i3 > 57)) {
                        break label332;
                      }
                      if ((i1 == 0) && (i != m))
                      {
                        paramInt = 0;
                        break;
                      }
                      i1 = i1 * 10 + i3 - 48;
                      if (i1 > 255)
                      {
                        paramInt = 0;
                        break;
                      }
                      m += 1;
                    }
                    label332:
                    if (m - i == 0)
                    {
                      paramInt = 0;
                    }
                    else
                    {
                      arrayOfByte[n] = ((byte)i1);
                      n += 1;
                      break;
                      if (n != i2 + 4) {
                        paramInt = 0;
                      } else {
                        paramInt = 1;
                      }
                    }
                  }
                }
                label380:
                n = j + 2;
                i1 = k;
                break;
              }
              return null;
            }
          }
        }
        i1 = j - i;
        if ((i1 == 0) || (i1 > 4)) {
          return null;
        }
        int i2 = m + 1;
        arrayOfByte[m] = ((byte)(n >>> 8 & 0xFF));
        i1 = i2 + 1;
        arrayOfByte[i2] = ((byte)(n & 0xFF));
        m = j;
        j = i1;
        break;
        label460:
        System.arraycopy(arrayOfByte, i1, arrayOfByte, 16 - (n - i1), n - i1);
        Arrays.fill(arrayOfByte, i1, 16 - n + i1, (byte)0);
        try
        {
          label498:
          paramString = InetAddress.getByAddress(arrayOfByte);
          return paramString;
        }
        catch (UnknownHostException paramString)
        {
          throw new AssertionError();
        }
        i = m;
        m = j;
        continue;
        label524:
        k = i;
        m = i;
        i = n;
      }
    }
    
    static int i(String paramString, int paramInt1, int paramInt2)
    {
      try
      {
        paramInt1 = Integer.parseInt(u.a(paramString, paramInt1, paramInt2, "", false, false));
        if ((paramInt1 > 0) && (paramInt1 <= 65535)) {
          return paramInt1;
        }
        return -1;
      }
      catch (NumberFormatException paramString) {}
      return -1;
    }
    
    final int a()
    {
      if (this.bpD != -1) {
        return this.bpD;
      }
      return u.dD(this.a);
    }
    
    final void f(String paramString, int paramInt1, int paramInt2)
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
        this.bLT.clear();
        this.bLT.add("");
        paramInt1 += 1;
        if (paramInt1 >= paramInt2) {
          break label265;
        }
        j = u.b(paramString, paramInt1, paramInt2, "/\\");
        if (j >= paramInt2) {
          break label267;
        }
        i = 1;
        str = u.a(paramString, paramInt1, j, " \"<>^`{}|/\\?#", true, false);
        if ((!str.equals(".")) && (!str.equalsIgnoreCase("%2e"))) {
          break label273;
        }
        paramInt1 = 1;
        label111:
        if (paramInt1 == 0)
        {
          if ((!str.equals("..")) && (!str.equalsIgnoreCase("%2e.")) && (!str.equalsIgnoreCase(".%2e")) && (!str.equalsIgnoreCase("%2e%2e"))) {
            break label278;
          }
          paramInt1 = 1;
          label157:
          if (paramInt1 == 0) {
            break label298;
          }
          if ((!((String)this.bLT.remove(this.bLT.size() - 1)).isEmpty()) || (this.bLT.isEmpty())) {
            break label283;
          }
          this.bLT.set(this.bLT.size() - 1, "");
        }
      }
      label265:
      label267:
      label273:
      label278:
      label283:
      label298:
      label383:
      for (;;)
      {
        paramInt1 = j;
        if (i != 0) {
          paramInt1 = j + 1;
        }
        break label52;
        this.bLT.set(this.bLT.size() - 1, "");
        break label52;
        break;
        i = 0;
        break label76;
        paramInt1 = 0;
        break label111;
        paramInt1 = 0;
        break label157;
        this.bLT.add("");
        continue;
        if (((String)this.bLT.get(this.bLT.size() - 1)).isEmpty()) {
          this.bLT.set(this.bLT.size() - 1, str);
        }
        for (;;)
        {
          if (i == 0) {
            break label383;
          }
          this.bLT.add("");
          break;
          this.bLT.add(str);
        }
      }
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.a);
      localStringBuilder.append("://");
      if ((!this.b.isEmpty()) || (!this.c.isEmpty()))
      {
        localStringBuilder.append(this.b);
        if (!this.c.isEmpty())
        {
          localStringBuilder.append(':');
          localStringBuilder.append(this.c);
        }
        localStringBuilder.append('@');
      }
      if (this.d.indexOf(':') != -1)
      {
        localStringBuilder.append('[');
        localStringBuilder.append(this.d);
        localStringBuilder.append(']');
      }
      for (;;)
      {
        int i = a();
        if (i != u.dD(this.a))
        {
          localStringBuilder.append(':');
          localStringBuilder.append(i);
        }
        u.a(localStringBuilder, this.bLT);
        if (this.bzR != null)
        {
          localStringBuilder.append('?');
          u.b(localStringBuilder, this.bzR);
        }
        if (this.h != null)
        {
          localStringBuilder.append('#');
          localStringBuilder.append(this.h);
        }
        return localStringBuilder.toString();
        localStringBuilder.append(this.d);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */