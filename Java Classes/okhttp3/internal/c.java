package okhttp3.internal;

import d.f;
import d.s;
import d.t;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.q;
import okhttp3.x;
import okhttp3.z;

public final class c
{
  public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
  public static final String[] EMPTY_STRING_ARRAY = new String[0];
  public static final Charset ISO_8859_1;
  public static final Comparator<String> NATURAL_ORDER = new Comparator() {};
  public static final TimeZone UTC;
  private static final Charset UTF_16_BE;
  private static final Charset UTF_16_LE;
  private static final Charset UTF_32_BE;
  private static final Charset UTF_32_LE;
  public static final Charset UTF_8;
  private static final Pattern VERIFY_AS_IP_ADDRESS = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
  public static final z cZH = z.O(EMPTY_BYTE_ARRAY);
  public static final x cZI = x.a(null, EMPTY_BYTE_ARRAY);
  private static final f cZJ = f.fJ("efbbbf");
  private static final f cZK = f.fJ("feff");
  private static final f cZL = f.fJ("fffe");
  private static final f cZM = f.fJ("0000ffff");
  private static final f cZN = f.fJ("ffff0000");
  
  static
  {
    UTF_8 = Charset.forName("UTF-8");
    ISO_8859_1 = Charset.forName("ISO-8859-1");
    UTF_16_BE = Charset.forName("UTF-16BE");
    UTF_16_LE = Charset.forName("UTF-16LE");
    UTF_32_BE = Charset.forName("UTF-32BE");
    UTF_32_LE = Charset.forName("UTF-32LE");
    UTC = TimeZone.getTimeZone("GMT");
  }
  
  public static int a(String paramString, TimeUnit paramTimeUnit)
  {
    if (7500L < 0L) {
      throw new IllegalArgumentException(paramString + " < 0");
    }
    if (paramTimeUnit == null) {
      throw new NullPointerException("unit == null");
    }
    long l = paramTimeUnit.toMillis(7500L);
    if (l > 2147483647L) {
      throw new IllegalArgumentException(paramString + " too large.");
    }
    if ((l == 0L) && (7500L > 0L)) {
      throw new IllegalArgumentException(paramString + " too small.");
    }
    return (int)l;
  }
  
  public static String a(q paramq, boolean paramBoolean)
  {
    if (paramq.host.contains(":")) {}
    for (String str1 = "[" + paramq.host + "]";; str1 = paramq.host)
    {
      String str2;
      if (!paramBoolean)
      {
        str2 = str1;
        if (paramq.port == q.defaultPort(paramq.scheme)) {}
      }
      else
      {
        str2 = str1 + ":" + paramq.port;
      }
      return str2;
    }
  }
  
  public static boolean a(s params, int paramInt, TimeUnit paramTimeUnit)
    throws IOException
  {
    long l2 = System.nanoTime();
    long l1;
    if (params.MK().hasDeadline()) {
      l1 = params.MK().deadlineNanoTime() - l2;
    }
    for (;;)
    {
      params.MK().aE(Math.min(l1, paramTimeUnit.toNanos(paramInt)) + l2);
      try
      {
        paramTimeUnit = new d.c();
        while (params.a(paramTimeUnit, 8192L) != -1L) {
          paramTimeUnit.clear();
        }
      }
      catch (InterruptedIOException paramTimeUnit)
      {
        if (l1 == Long.MAX_VALUE) {
          params.MK().Nq();
        }
        for (;;)
        {
          return false;
          l1 = Long.MAX_VALUE;
          break;
          if (l1 == Long.MAX_VALUE) {
            params.MK().Nq();
          }
          for (;;)
          {
            return true;
            params.MK().aE(l1 + l2);
          }
          params.MK().aE(l1 + l2);
        }
      }
      finally
      {
        if (l1 != Long.MAX_VALUE) {
          break label188;
        }
      }
    }
    params.MK().Nq();
    for (;;)
    {
      throw paramTimeUnit;
      label188:
      params.MK().aE(l1 + l2);
    }
  }
  
  public static boolean a(s params, TimeUnit paramTimeUnit)
  {
    try
    {
      boolean bool = a(params, 100, paramTimeUnit);
      return bool;
    }
    catch (IOException params) {}
    return false;
  }
  
  public static AssertionError assertionError(String paramString, Exception paramException)
  {
    paramString = new AssertionError(paramString);
    try
    {
      paramString.initCause(paramException);
      return paramString;
    }
    catch (IllegalStateException paramException) {}
    return paramString;
  }
  
  public static String canonicalizeHost(String paramString)
  {
    int i2 = 0;
    Object localObject;
    if (paramString.contains(":")) {
      if ((paramString.startsWith("[")) && (paramString.endsWith("]")))
      {
        localObject = decodeIpv6(paramString, 1, paramString.length() - 1);
        if (localObject != null) {
          break label64;
        }
      }
    }
    for (;;)
    {
      return null;
      localObject = decodeIpv6(paramString, 0, paramString.length());
      break;
      label64:
      localObject = ((InetAddress)localObject).getAddress();
      if (localObject.length == 16)
      {
        int j = -1;
        int i = 0;
        int k = 0;
        int m;
        while (i < localObject.length)
        {
          m = i;
          while ((m < 16) && (localObject[m] == 0) && (localObject[(m + 1)] == 0)) {
            m += 2;
          }
          int i3 = m - i;
          int i1 = k;
          int n = j;
          if (i3 > k)
          {
            i1 = k;
            n = j;
            if (i3 >= 4)
            {
              i1 = i3;
              n = i;
            }
          }
          i = m + 2;
          k = i1;
          j = n;
        }
        paramString = new d.c();
        i = i2;
        while (i < localObject.length) {
          if (i == j)
          {
            paramString.fV(58);
            m = i + k;
            i = m;
            if (m == 16)
            {
              paramString.fV(58);
              i = m;
            }
          }
          else
          {
            if (i > 0) {
              paramString.fV(58);
            }
            paramString.aB((localObject[i] & 0xFF) << 8 | localObject[(i + 1)] & 0xFF);
            i += 2;
          }
        }
        return paramString.Ky();
      }
      throw new AssertionError("Invalid IPv6 address: '" + paramString + "'");
      try
      {
        paramString = IDN.toASCII(paramString).toLowerCase(Locale.US);
        if (!paramString.isEmpty())
        {
          boolean bool = containsInvalidHostnameAsciiCodes(paramString);
          if (!bool) {
            return paramString;
          }
        }
      }
      catch (IllegalArgumentException paramString) {}
    }
    return null;
  }
  
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (RuntimeException paramCloseable)
    {
      throw paramCloseable;
    }
    catch (Exception paramCloseable) {}
  }
  
  public static void closeQuietly(Socket paramSocket)
  {
    if (paramSocket != null) {}
    try
    {
      paramSocket.close();
      return;
    }
    catch (AssertionError paramSocket)
    {
      while (isAndroidGetsocknameError(paramSocket)) {}
      throw paramSocket;
    }
    catch (RuntimeException paramSocket)
    {
      throw paramSocket;
    }
    catch (Exception paramSocket) {}
  }
  
  public static String[] concat(String[] paramArrayOfString, String paramString)
  {
    String[] arrayOfString = new String[paramArrayOfString.length + 1];
    System.arraycopy(paramArrayOfString, 0, arrayOfString, 0, paramArrayOfString.length);
    arrayOfString[(arrayOfString.length - 1)] = paramString;
    return arrayOfString;
  }
  
  private static boolean containsInvalidHostnameAsciiCodes(String paramString)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      int j;
      if (i < paramString.length())
      {
        j = paramString.charAt(i);
        if ((j <= 31) || (j >= 127)) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      if (" #%/:?@[\\]".indexOf(j) != -1) {
        return true;
      }
      i += 1;
    }
  }
  
  public static int decodeHexDigit(char paramChar)
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
  
  @Nullable
  private static InetAddress decodeIpv6(String paramString, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[16];
    int j = 0;
    int i = -1;
    int m = -1;
    int k = paramInt1;
    paramInt1 = m;
    if (k < paramInt2)
    {
      if (j == 16) {
        return null;
      }
      if ((k + 2 <= paramInt2) && (paramString.regionMatches(k, "::", 0, 2)))
      {
        if (i != -1) {
          return null;
        }
        k += 2;
        paramInt1 = j + 2;
        if (k != paramInt2) {
          break label514;
        }
        paramInt2 = paramInt1;
        j = paramInt1;
        paramInt1 = paramInt2;
      }
    }
    for (;;)
    {
      if (j != 16) {
        if (paramInt1 == -1)
        {
          return null;
          if (j == 0) {
            break label508;
          }
          if (paramString.regionMatches(k, ":", 0, 1)) {
            paramInt1 = k + 1;
          }
        }
      }
      for (;;)
      {
        m = 0;
        k = paramInt1;
        for (;;)
        {
          if (k < paramInt2)
          {
            n = decodeHexDigit(paramString.charAt(k));
            if (n != -1)
            {
              m = (m << 4) + n;
              k += 1;
              continue;
              if (paramString.regionMatches(k, ".", 0, 1))
              {
                int i1 = j - 2;
                m = i1;
                k = paramInt1;
                if (k < paramInt2) {
                  if (m == 16) {
                    paramInt1 = 0;
                  }
                }
                for (;;)
                {
                  if (paramInt1 != 0) {
                    break label384;
                  }
                  return null;
                  paramInt1 = k;
                  if (m != i1)
                  {
                    if (paramString.charAt(k) != '.') {
                      paramInt1 = 0;
                    } else {
                      paramInt1 = k + 1;
                    }
                  }
                  else
                  {
                    n = 0;
                    k = paramInt1;
                    for (;;)
                    {
                      if (k >= paramInt2) {
                        break label336;
                      }
                      int i2 = paramString.charAt(k);
                      if ((i2 < 48) || (i2 > 57)) {
                        break label336;
                      }
                      if ((n == 0) && (paramInt1 != k))
                      {
                        paramInt1 = 0;
                        break;
                      }
                      n = n * 10 + i2 - 48;
                      if (n > 255)
                      {
                        paramInt1 = 0;
                        break;
                      }
                      k += 1;
                    }
                    label336:
                    if (k - paramInt1 == 0)
                    {
                      paramInt1 = 0;
                    }
                    else
                    {
                      arrayOfByte[m] = ((byte)n);
                      m += 1;
                      break;
                      if (m != i1 + 4) {
                        paramInt1 = 0;
                      } else {
                        paramInt1 = 1;
                      }
                    }
                  }
                }
                label384:
                j += 2;
                paramInt1 = i;
                break;
              }
              return null;
            }
          }
        }
        int n = k - paramInt1;
        if ((n == 0) || (n > 4)) {
          return null;
        }
        n = j + 1;
        arrayOfByte[j] = ((byte)(m >>> 8 & 0xFF));
        j = n + 1;
        arrayOfByte[n] = ((byte)(m & 0xFF));
        break;
        System.arraycopy(arrayOfByte, paramInt1, arrayOfByte, 16 - (j - paramInt1), j - paramInt1);
        Arrays.fill(arrayOfByte, paramInt1, 16 - j + paramInt1, (byte)0);
        try
        {
          paramString = InetAddress.getByAddress(arrayOfByte);
          return paramString;
        }
        catch (UnknownHostException paramString)
        {
          throw new AssertionError();
        }
        label508:
        paramInt1 = k;
        continue;
        label514:
        i = paramInt1;
        j = paramInt1;
        paramInt1 = k;
      }
      paramInt1 = i;
    }
  }
  
  public static int delimiterOffset(String paramString, int paramInt1, int paramInt2, char paramChar)
  {
    for (;;)
    {
      int i = paramInt2;
      if (paramInt1 < paramInt2)
      {
        if (paramString.charAt(paramInt1) == paramChar) {
          i = paramInt1;
        }
      }
      else {
        return i;
      }
      paramInt1 += 1;
    }
  }
  
  public static int delimiterOffset(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    for (;;)
    {
      int i = paramInt2;
      if (paramInt1 < paramInt2)
      {
        if (paramString2.indexOf(paramString1.charAt(paramInt1)) != -1) {
          i = paramInt1;
        }
      }
      else {
        return i;
      }
      paramInt1 += 1;
    }
  }
  
  public static boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public static String format(String paramString, Object... paramVarArgs)
  {
    return String.format(Locale.US, paramString, paramVarArgs);
  }
  
  public static void g(long paramLong1, long paramLong2)
  {
    if (((0L | paramLong2) < 0L) || (0L > paramLong1) || (paramLong1 - 0L < paramLong2)) {
      throw new ArrayIndexOutOfBoundsException();
    }
  }
  
  public static <T> List<T> immutableList(List<T> paramList)
  {
    return Collections.unmodifiableList(new ArrayList(paramList));
  }
  
  public static <T> List<T> immutableList(T... paramVarArgs)
  {
    return Collections.unmodifiableList(Arrays.asList((Object[])paramVarArgs.clone()));
  }
  
  public static int indexOf(Comparator<String> paramComparator, String[] paramArrayOfString, String paramString)
  {
    int i = 0;
    int j = paramArrayOfString.length;
    while (i < j)
    {
      if (paramComparator.compare(paramArrayOfString[i], paramString) == 0) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public static int indexOfControlOrNonAscii(String paramString)
  {
    int i = 0;
    int j = paramString.length();
    while (i < j)
    {
      int k = paramString.charAt(i);
      if ((k <= 31) || (k >= 127)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public static String[] intersect(Comparator<? super String> paramComparator, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    ArrayList localArrayList = new ArrayList();
    int k = paramArrayOfString1.length;
    int i = 0;
    if (i < k)
    {
      String str = paramArrayOfString1[i];
      int m = paramArrayOfString2.length;
      int j = 0;
      for (;;)
      {
        if (j < m)
        {
          if (paramComparator.compare(str, paramArrayOfString2[j]) == 0) {
            localArrayList.add(str);
          }
        }
        else
        {
          i += 1;
          break;
        }
        j += 1;
      }
    }
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }
  
  public static boolean isAndroidGetsocknameError(AssertionError paramAssertionError)
  {
    return (paramAssertionError.getCause() != null) && (paramAssertionError.getMessage() != null) && (paramAssertionError.getMessage().contains("getsockname failed"));
  }
  
  public static boolean nonEmptyIntersection(Comparator<String> paramComparator, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    if ((paramArrayOfString1 == null) || (paramArrayOfString2 == null) || (paramArrayOfString1.length == 0) || (paramArrayOfString2.length == 0)) {}
    for (;;)
    {
      return false;
      int k = paramArrayOfString1.length;
      int i = 0;
      while (i < k)
      {
        String str = paramArrayOfString1[i];
        int m = paramArrayOfString2.length;
        int j = 0;
        while (j < m)
        {
          if (paramComparator.compare(str, paramArrayOfString2[j]) == 0) {
            return true;
          }
          j += 1;
        }
        i += 1;
      }
    }
  }
  
  public static int skipLeadingAsciiWhitespace(String paramString, int paramInt1, int paramInt2)
  {
    for (;;)
    {
      int i = paramInt2;
      if (paramInt1 < paramInt2) {}
      switch (paramString.charAt(paramInt1))
      {
      default: 
        i = paramInt1;
        return i;
      }
      paramInt1 += 1;
    }
  }
  
  public static int skipTrailingAsciiWhitespace(String paramString, int paramInt1, int paramInt2)
  {
    paramInt2 -= 1;
    for (;;)
    {
      int i = paramInt1;
      if (paramInt2 >= paramInt1) {}
      switch (paramString.charAt(paramInt2))
      {
      default: 
        i = paramInt2 + 1;
        return i;
      }
      paramInt2 -= 1;
    }
  }
  
  public static ThreadFactory threadFactory(String paramString, final boolean paramBoolean)
  {
    new ThreadFactory()
    {
      public final Thread newThread(Runnable paramAnonymousRunnable)
      {
        paramAnonymousRunnable = new Thread(paramAnonymousRunnable, c.this);
        paramAnonymousRunnable.setDaemon(paramBoolean);
        return paramAnonymousRunnable;
      }
    };
  }
  
  public static String trimSubstring(String paramString, int paramInt1, int paramInt2)
  {
    paramInt1 = skipLeadingAsciiWhitespace(paramString, paramInt1, paramInt2);
    return paramString.substring(paramInt1, skipTrailingAsciiWhitespace(paramString, paramInt1, paramInt2));
  }
  
  public static boolean verifyAsIpAddress(String paramString)
  {
    return VERIFY_AS_IP_ADDRESS.matcher(paramString).matches();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */